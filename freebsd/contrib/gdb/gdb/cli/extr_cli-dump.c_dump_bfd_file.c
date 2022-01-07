
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_8__ {scalar_t__ entsize; } ;
typedef TYPE_1__ asection ;
typedef int CORE_ADDR ;


 TYPE_1__* bfd_make_section_anyway (int *,char*) ;
 int * bfd_openw_with_cleanup (char*,char*,char*) ;
 int bfd_set_section_alignment (int *,TYPE_1__*,int ) ;
 int bfd_set_section_contents (int *,TYPE_1__*,char*,int ,int) ;
 int bfd_set_section_flags (int *,TYPE_1__*,int) ;
 int bfd_set_section_size (int *,TYPE_1__*,int) ;
 int bfd_set_section_vma (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
dump_bfd_file (char *filename, char *mode,
        char *target, CORE_ADDR vaddr,
        char *buf, int len)
{
  bfd *obfd;
  asection *osection;

  obfd = bfd_openw_with_cleanup (filename, target, mode);
  osection = bfd_make_section_anyway (obfd, ".newsec");
  bfd_set_section_size (obfd, osection, len);
  bfd_set_section_vma (obfd, osection, vaddr);
  bfd_set_section_alignment (obfd, osection, 0);
  bfd_set_section_flags (obfd, osection, 0x203);
  osection->entsize = 0;
  bfd_set_section_contents (obfd, osection, buf, 0, len);
}
