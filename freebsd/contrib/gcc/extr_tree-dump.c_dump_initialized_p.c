
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_file_info {scalar_t__ state; } ;
typedef enum tree_dump_index { ____Placeholder_tree_dump_index } tree_dump_index ;


 struct dump_file_info* get_dump_file_info (int) ;

int
dump_initialized_p (enum tree_dump_index phase)
{
  struct dump_file_info *dfi = get_dump_file_info (phase);
  return dfi->state > 0;
}
