
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ar_hdr {scalar_t__ ar_name; } ;
struct TYPE_5__ {size_t e_rawstrtabsz; unsigned char* e_rawstrtab; } ;
struct TYPE_6__ {TYPE_1__ e_ar; } ;
struct TYPE_7__ {scalar_t__ e_kind; unsigned char const* e_rawfile; int e_rawsize; TYPE_2__ e_u; } ;
typedef TYPE_3__ Elf ;


 int ARCHIVE ;
 scalar_t__ ELF_K_AR ;
 scalar_t__ IS_EXTENDED_BSD_NAME (unsigned char const*) ;
 size_t LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 scalar_t__ _libelf_ar_get_number (char const*,size_t const,int,size_t*) ;
 int assert (int) ;
 char* malloc (size_t) ;
 int strncpy (char*,char const*,size_t) ;

char *
_libelf_ar_get_translated_name(const struct ar_hdr *arh, Elf *ar)
{
 char *s;
 unsigned char c;
 size_t len, offset;
 const unsigned char *buf, *p, *q, *r;
 const size_t bufsize = sizeof(arh->ar_name);

 assert(arh != ((void*)0));
 assert(ar->e_kind == ELF_K_AR);
 assert((const unsigned char *) arh >= ar->e_rawfile &&
     (const unsigned char *) arh < ar->e_rawfile + ar->e_rawsize);

 buf = (const unsigned char *) arh->ar_name;
 if (buf[0] == '/' && (c = buf[1]) >= '0' && c <= '9') {





  if (_libelf_ar_get_number((const char *) (buf + 1),
   bufsize - 1, 10, &offset) == 0) {
   LIBELF_SET_ERROR(ARCHIVE, 0);
   return (((void*)0));
  }

  if (offset > ar->e_u.e_ar.e_rawstrtabsz) {
   LIBELF_SET_ERROR(ARCHIVE, 0);
   return (((void*)0));
  }

  p = q = ar->e_u.e_ar.e_rawstrtab + offset;
  r = ar->e_u.e_ar.e_rawstrtab + ar->e_u.e_ar.e_rawstrtabsz;

  for (; p < r && *p != '/'; p++)
   ;
  len = (size_t) (p - q + 1);

  if ((s = malloc(len)) == ((void*)0)) {
   LIBELF_SET_ERROR(RESOURCE, 0);
   return (((void*)0));
  }

  (void) strncpy(s, (const char *) q, len - 1);
  s[len - 1] = '\0';

  return (s);
 } else if (IS_EXTENDED_BSD_NAME(buf)) {
  r = buf + LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE;

  if (_libelf_ar_get_number((const char *) r, bufsize -
   LIBELF_AR_BSD_EXTENDED_NAME_PREFIX_SIZE, 10,
   &len) == 0) {
   LIBELF_SET_ERROR(ARCHIVE, 0);
   return (((void*)0));
  }





  if ((s = malloc(len + 1)) == ((void*)0)) {
   LIBELF_SET_ERROR(RESOURCE, 0);
   return (((void*)0));
  }




  q = (const unsigned char *) (arh + 1);

  (void) strncpy(s, (const char *) q, len);
  s[len] = '\0';

  return (s);
 }
 for (q = buf + bufsize - 1; q >= buf && *q == ' '; --q)
  ;

 if (q >= buf) {
  if (*q == '/') {





   if (q > buf + 1 ||
       (q == (buf + 1) && *buf != '/'))
    q--;
  }

  len = (size_t) (q - buf + 2);
 } else {

  buf = (const unsigned char *) "";
  len = 1;
 }

 if ((s = malloc(len)) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, 0);
  return (((void*)0));
 }

 (void) strncpy(s, (const char *) buf, len - 1);
 s[len - 1] = '\0';

 return (s);
}
