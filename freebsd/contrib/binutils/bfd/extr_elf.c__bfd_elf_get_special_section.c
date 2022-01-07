
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_elf_special_section {int prefix_length; int suffix_length; scalar_t__ type; int * prefix; } ;


 scalar_t__ SHT_REL ;
 scalar_t__ memcmp (char const*,int *,int) ;
 int strlen (char const*) ;

const struct bfd_elf_special_section *
_bfd_elf_get_special_section (const char *name,
         const struct bfd_elf_special_section *spec,
         unsigned int rela)
{
  int i;
  int len;

  len = strlen (name);

  for (i = 0; spec[i].prefix != ((void*)0); i++)
    {
      int suffix_len;
      int prefix_len = spec[i].prefix_length;

      if (len < prefix_len)
 continue;
      if (memcmp (name, spec[i].prefix, prefix_len) != 0)
 continue;

      suffix_len = spec[i].suffix_length;
      if (suffix_len <= 0)
 {
   if (name[prefix_len] != 0)
     {
       if (suffix_len == 0)
  continue;
       if (name[prefix_len] != '.'
    && (suffix_len == -2
        || (rela && spec[i].type == SHT_REL)))
  continue;
     }
 }
      else
 {
   if (len < prefix_len + suffix_len)
     continue;
   if (memcmp (name + len - suffix_len,
        spec[i].prefix + prefix_len,
        suffix_len) != 0)
     continue;
 }
      return &spec[i];
    }

  return ((void*)0);
}
