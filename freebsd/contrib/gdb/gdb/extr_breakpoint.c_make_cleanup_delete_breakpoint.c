
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
struct breakpoint {int dummy; } ;


 int do_delete_breakpoint_cleanup ;
 struct cleanup* make_cleanup (int ,struct breakpoint*) ;

struct cleanup *
make_cleanup_delete_breakpoint (struct breakpoint *b)
{
  return make_cleanup (do_delete_breakpoint_cleanup, b);
}
