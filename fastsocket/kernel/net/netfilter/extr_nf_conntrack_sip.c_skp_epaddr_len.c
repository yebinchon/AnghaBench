
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int epaddr_len (struct nf_conn const*,char const*,char const*,int*) ;

__attribute__((used)) static int skp_epaddr_len(const struct nf_conn *ct, const char *dptr,
     const char *limit, int *shift)
{
 const char *start = dptr;
 int s = *shift;




 while (dptr < limit &&
        *dptr != '@' && *dptr != '\r' && *dptr != '\n') {
  (*shift)++;
  dptr++;
 }

 if (dptr < limit && *dptr == '@') {
  dptr++;
  (*shift)++;
 } else {
  dptr = start;
  *shift = s;
 }

 return epaddr_len(ct, dptr, limit, shift);
}
