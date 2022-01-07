
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct goto_queue_node {scalar_t__ stmt; } ;



__attribute__((used)) static int
goto_queue_cmp (const void *x, const void *y)
{
  tree a = ((const struct goto_queue_node *)x)->stmt;
  tree b = ((const struct goto_queue_node *)y)->stmt;
  return (a == b ? 0 : a < b ? -1 : 1);
}
