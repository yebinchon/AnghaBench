
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int core_bfd ;
 int print_section_info (struct target_ops*,int ) ;

__attribute__((used)) static void
core_files_info (struct target_ops *t)
{
  print_section_info (t, core_bfd);
}
