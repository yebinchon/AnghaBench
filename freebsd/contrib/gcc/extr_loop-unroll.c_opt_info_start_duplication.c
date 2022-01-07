
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt_info {int first_new_block; } ;


 int last_basic_block ;

__attribute__((used)) static void
opt_info_start_duplication (struct opt_info *opt_info)
{
  if (opt_info)
    opt_info->first_new_block = last_basic_block;
}
