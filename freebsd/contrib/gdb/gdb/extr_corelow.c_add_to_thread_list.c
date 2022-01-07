
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_4__ {scalar_t__ filepos; } ;
typedef TYPE_1__ asection ;


 int add_thread (int ) ;
 int atoi (scalar_t__) ;
 scalar_t__ bfd_section_name (int *,TYPE_1__*) ;
 int inferior_ptid ;
 int pid_to_ptid (int) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static void
add_to_thread_list (bfd *abfd, asection *asect, void *reg_sect_arg)
{
  int thread_id;
  asection *reg_sect = (asection *) reg_sect_arg;

  if (strncmp (bfd_section_name (abfd, asect), ".reg/", 5) != 0)
    return;

  thread_id = atoi (bfd_section_name (abfd, asect) + 5);

  add_thread (pid_to_ptid (thread_id));



  if (reg_sect != ((void*)0)
      && asect->filepos == reg_sect->filepos)
    inferior_ptid = pid_to_ptid (thread_id);
}
