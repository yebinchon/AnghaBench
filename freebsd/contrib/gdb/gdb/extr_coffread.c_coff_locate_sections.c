
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_section_list {struct stab_section_list* next; int * section; } ;
struct coff_symfile_info {struct stab_section_list* stabsects; int * stabstrsect; int textsize; int textaddr; } ;
typedef int bfd ;
typedef int asection ;


 scalar_t__ DEPRECATED_STREQ (char const*,char*) ;
 char* bfd_get_section_name (int *,int *) ;
 scalar_t__ bfd_section_size (int *,int *) ;
 int bfd_section_vma (int *,int *) ;
 int isdigit (char const) ;
 int make_cleanup (int ,struct stab_section_list*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int xfree ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
coff_locate_sections (bfd *abfd, asection *sectp, void *csip)
{
  struct coff_symfile_info *csi;
  const char *name;

  csi = (struct coff_symfile_info *) csip;
  name = bfd_get_section_name (abfd, sectp);
  if (DEPRECATED_STREQ (name, ".text"))
    {
      csi->textaddr = bfd_section_vma (abfd, sectp);
      csi->textsize += bfd_section_size (abfd, sectp);
    }
  else if (strncmp (name, ".text", sizeof ".text" - 1) == 0)
    {
      csi->textsize += bfd_section_size (abfd, sectp);
    }
  else if (DEPRECATED_STREQ (name, ".stabstr"))
    {
      csi->stabstrsect = sectp;
    }
  else if (strncmp (name, ".stab", sizeof ".stab" - 1) == 0)
    {
      const char *s;



      for (s = name + sizeof ".stab" - 1; *s != '\0'; s++)
 if (!isdigit (*s))
   break;
      if (*s == '\0')
 {
   struct stab_section_list *n, **pn;

   n = ((struct stab_section_list *)
        xmalloc (sizeof (struct stab_section_list)));
   n->section = sectp;
   n->next = ((void*)0);
   for (pn = &csi->stabsects; *pn != ((void*)0); pn = &(*pn)->next)
     ;
   *pn = n;




   make_cleanup (xfree, n);
 }
    }
}
