
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct unw_reg_state* next; } ;
struct unw_state_record {TYPE_1__ curr; } ;
struct unw_reg_state {int dummy; } ;


 int abort () ;
 int free_reg_state (struct unw_reg_state*) ;
 int memcpy (TYPE_1__*,struct unw_reg_state*,int) ;

__attribute__((used)) static void
pop (struct unw_state_record *sr)
{
  struct unw_reg_state *rs = sr->curr.next;

  if (!rs)
    abort ();
  memcpy (&sr->curr, rs, sizeof(*rs));
  free_reg_state (rs);
}
