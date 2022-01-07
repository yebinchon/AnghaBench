
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ d_size; char* d_buf; } ;
struct TYPE_5__ {scalar_t__ sh_type; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elftc_String_Table ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;


 int EINVAL ;
 scalar_t__ SHT_STRTAB ;
 TYPE_2__* elf_getdata (int *,int *) ;
 int * elftc_string_table_create (size_t) ;
 int elftc_string_table_destroy (int *) ;
 scalar_t__ elftc_string_table_insert (int *,char const*) ;
 int errno ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int strlen (char const*) ;

Elftc_String_Table *
elftc_string_table_from_section(Elf_Scn *scn, size_t sizehint)
{
 Elf_Data *d;
 GElf_Shdr sh;
 const char *s, *end;
 Elftc_String_Table *st;
 size_t len;


 if (gelf_getshdr(scn, &sh) == ((void*)0) ||
     sh.sh_type != SHT_STRTAB) {
  errno = EINVAL;
  return (((void*)0));
 }

 if ((d = elf_getdata(scn, ((void*)0))) == ((void*)0) ||
     d->d_size == 0) {
  errno = EINVAL;
  return (((void*)0));
 }

 if ((st = elftc_string_table_create(sizehint)) == ((void*)0))
  return (((void*)0));

 s = d->d_buf;




 if (*s != '\0') {
  errno = EINVAL;
  goto fail;
 }

 end = s + d->d_size;





 for (s += 1; s < end; s += len) {
  if (elftc_string_table_insert(st, s) == 0)
   goto fail;

  len = strlen(s) + 1;
 }

 return (st);

fail:
 if (st)
  (void) elftc_string_table_destroy(st);

 return (((void*)0));
}
