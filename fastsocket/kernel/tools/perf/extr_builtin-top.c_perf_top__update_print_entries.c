
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_top {int print_entries; } ;



__attribute__((used)) static void perf_top__update_print_entries(struct perf_top *top)
{
 if (top->print_entries > 9)
  top->print_entries -= 9;
}
