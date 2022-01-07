
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_adjust_relocs ;
 scalar_t__ alpha_literal_hash ;
 int bfd_map_over_sections (int ,int ,int *) ;
 int stdoutput ;

void
alpha_before_fix (void)
{
  if (alpha_literal_hash)
    bfd_map_over_sections (stdoutput, alpha_adjust_relocs, ((void*)0));
}
