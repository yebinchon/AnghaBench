
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;
typedef int asection ;


 int SEC_LOAD ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_section_flags (int *,int *) ;
 int bfd_section_name (int *,int *) ;
 int bfd_section_size (int *,int *) ;
 int bfd_section_vma (int *,int *) ;
 int bfd_set_section_contents (int *,int *,void*,int ,int ) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct cleanup* make_cleanup (int ,void*) ;
 int paddr (int ) ;
 int paddr_d (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 scalar_t__ target_read_memory (int ,void*,int ) ;
 int warning (char*,int ,...) ;
 int xfree ;
 void* xmalloc (int ) ;

__attribute__((used)) static void
gcore_copy_callback (bfd *obfd, asection *osec, void *ignored)
{
  bfd_size_type size = bfd_section_size (obfd, osec);
  struct cleanup *old_chain = ((void*)0);
  void *memhunk;


  if ((bfd_get_section_flags (obfd, osec) & SEC_LOAD) == 0)
    return;


  if (strncmp ("load", bfd_section_name (obfd, osec), 4) != 0)
    return;

  memhunk = xmalloc (size);

  if (memhunk == ((void*)0))
    error ("Not enough memory to create corefile.");
  old_chain = make_cleanup (xfree, memhunk);

  if (target_read_memory (bfd_section_vma (obfd, osec),
     memhunk, size) != 0)
    warning ("Memory read failed for corefile section, %s bytes at 0x%s\n",
      paddr_d (size), paddr (bfd_section_vma (obfd, osec)));
  if (!bfd_set_section_contents (obfd, osec, memhunk, 0, size))
    warning ("Failed to write corefile contents (%s).",
      bfd_errmsg (bfd_get_error ()));

  do_cleanups (old_chain);
}
