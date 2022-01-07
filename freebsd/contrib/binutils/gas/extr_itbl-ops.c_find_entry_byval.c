
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_range {scalar_t__ sbit; scalar_t__ ebit; } ;
struct itbl_entry {scalar_t__ processor; unsigned long value; struct itbl_range range; struct itbl_entry* next; } ;
typedef int e_type ;
typedef scalar_t__ e_processor ;


 unsigned long apply_range (unsigned long,struct itbl_range) ;
 struct itbl_entry** get_entries (scalar_t__,int ) ;

__attribute__((used)) static struct itbl_entry *
find_entry_byval (e_processor processor, e_type type,
    unsigned long val, struct itbl_range *r)
{
  struct itbl_entry *e, **es;
  unsigned long eval;

  es = get_entries (processor, type);
  for (e = *es; e; e = e->next)
    {
      if (processor != e->processor)
 continue;







      if (r == 0)

 {
   eval = apply_range (e->value, e->range);
   val &= apply_range (0xffffffff, e->range);
 }
      else if ((r->sbit == e->range.sbit && r->ebit == e->range.ebit)
        || (e->range.sbit == 0 && e->range.ebit == 0))
 {
   eval = apply_range (e->value, *r);
   val = apply_range (val, *r);
 }
      else
 continue;
      if (val == eval)
 return e;
    }
  return 0;
}
