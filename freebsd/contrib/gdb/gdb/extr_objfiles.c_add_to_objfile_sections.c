
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {struct obj_section* sections_end; int objfile_obstack; } ;
struct obj_section {scalar_t__ addr; scalar_t__ endaddr; scalar_t__ ovly_mapped; struct bfd_section* the_bfd_section; struct objfile* objfile; scalar_t__ offset; } ;
struct bfd_section {int dummy; } ;
struct bfd {int dummy; } ;
typedef int section ;
typedef int flagword ;


 int SEC_ALLOC ;
 int TARGET_KEEP_SECTION (struct bfd_section*) ;
 int bfd_get_section_flags (struct bfd*,struct bfd_section*) ;
 scalar_t__ bfd_section_size (struct bfd*,struct bfd_section*) ;
 scalar_t__ bfd_section_vma (struct bfd*,struct bfd_section*) ;
 int obstack_grow (int *,char*,int) ;

__attribute__((used)) static void
add_to_objfile_sections (struct bfd *abfd, struct bfd_section *asect,
    void *objfile_p_char)
{
  struct objfile *objfile = (struct objfile *) objfile_p_char;
  struct obj_section section;
  flagword aflag;

  aflag = bfd_get_section_flags (abfd, asect);

  if (!(aflag & SEC_ALLOC) && !(TARGET_KEEP_SECTION (asect)))
    return;

  if (0 == bfd_section_size (abfd, asect))
    return;
  section.offset = 0;
  section.objfile = objfile;
  section.the_bfd_section = asect;
  section.ovly_mapped = 0;
  section.addr = bfd_section_vma (abfd, asect);
  section.endaddr = section.addr + bfd_section_size (abfd, asect);
  obstack_grow (&objfile->objfile_obstack, (char *) &section, sizeof (section));
  objfile->sections_end = (struct obj_section *) (((unsigned long) objfile->sections_end) + 1);
}
