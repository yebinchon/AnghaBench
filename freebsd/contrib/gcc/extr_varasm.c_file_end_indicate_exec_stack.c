
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SECTION_CODE ;
 unsigned int SECTION_DEBUG ;
 int get_section (char*,unsigned int,int *) ;
 int switch_to_section (int ) ;
 scalar_t__ trampolines_created ;

void
file_end_indicate_exec_stack (void)
{
  unsigned int flags = SECTION_DEBUG;
  if (trampolines_created)
    flags |= SECTION_CODE;

  switch_to_section (get_section (".note.GNU-stack", flags, ((void*)0)));
}
