
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int libzfs_handle_t ;


 scalar_t__ ERANGE ;
 int TEXT_DOMAIN ;
 double UINT64_MAX ;
 int dgettext (int ,char*) ;
 scalar_t__ errno ;
 double pow (int,int) ;
 int str2shift (int *,char*) ;
 double strtod (char const*,char**) ;
 int strtoull (char const*,char**,int) ;
 int zfs_error_aux (int *,int ,...) ;

int
zfs_nicestrtonum(libzfs_handle_t *hdl, const char *value, uint64_t *num)
{
 char *end;
 int shift;

 *num = 0;


 if ((value[0] < '0' || value[0] > '9') && value[0] != '.') {
  if (hdl)
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "bad numeric value '%s'"), value);
  return (-1);
 }


 errno = 0;
 *num = strtoull(value, &end, 10);





 if (errno == ERANGE) {
  if (hdl)
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "numeric value is too large"));
  return (-1);
 }





 if (*end == '.') {
  double fval = strtod(value, &end);

  if ((shift = str2shift(hdl, end)) == -1)
   return (-1);

  fval *= pow(2, shift);

  if (fval > UINT64_MAX) {
   if (hdl)
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "numeric value is too large"));
   return (-1);
  }

  *num = (uint64_t)fval;
 } else {
  if ((shift = str2shift(hdl, end)) == -1)
   return (-1);


  if (shift >= 64 || (*num << shift) >> shift != *num) {
   if (hdl)
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "numeric value is too large"));
   return (-1);
  }

  *num <<= shift;
 }

 return (0);
}
