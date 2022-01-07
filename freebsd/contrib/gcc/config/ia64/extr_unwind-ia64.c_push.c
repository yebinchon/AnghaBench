
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct unw_reg_state* next; } ;
struct unw_state_record {TYPE_1__ curr; } ;
struct unw_reg_state {int dummy; } ;


 struct unw_reg_state* alloc_reg_state () ;
 int memcpy (struct unw_reg_state*,TYPE_1__*,int) ;

__attribute__((used)) static void
push (struct unw_state_record *sr)
{
  struct unw_reg_state *rs = alloc_reg_state ();
  memcpy (rs, &sr->curr, sizeof (*rs));
  sr->curr.next = rs;
}
