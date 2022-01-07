
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_frame {int regcache; struct dummy_frame* next; } ;


 int regcache_xfree (int ) ;
 int xfree (struct dummy_frame*) ;

__attribute__((used)) static void
discard_innermost_dummy (struct dummy_frame **stack)
{
  struct dummy_frame *tbd = (*stack);
  (*stack) = (*stack)->next;
  regcache_xfree (tbd->regcache);
  xfree (tbd);
}
