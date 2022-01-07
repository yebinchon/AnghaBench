
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int do_discard_minimal_symbols_cleanup ;
 struct cleanup* make_cleanup (int ,int ) ;

struct cleanup *
make_cleanup_discard_minimal_symbols (void)
{
  return make_cleanup (do_discard_minimal_symbols_cleanup, 0);
}
