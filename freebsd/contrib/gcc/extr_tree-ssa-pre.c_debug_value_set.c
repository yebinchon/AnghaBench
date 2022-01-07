
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_set_t ;


 int print_value_set (int ,int ,char const*,int) ;
 int stderr ;

void
debug_value_set (value_set_t set, const char *setname, int blockindex)
{
  print_value_set (stderr, set, setname, blockindex);
}
