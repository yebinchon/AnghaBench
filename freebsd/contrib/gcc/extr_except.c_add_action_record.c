
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct action_record {int filter; int next; int offset; } ;
typedef int htab_t ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int action_record_data; } ;


 int INSERT ;
 int VARRAY_ACTIVE_SIZE (int ) ;
 TYPE_2__* cfun ;
 scalar_t__ htab_find_slot (int ,struct action_record*,int ) ;
 int push_sleb128 (int *,int) ;
 struct action_record* xmalloc (int) ;

__attribute__((used)) static int
add_action_record (htab_t ar_hash, int filter, int next)
{
  struct action_record **slot, *new, tmp;

  tmp.filter = filter;
  tmp.next = next;
  slot = (struct action_record **) htab_find_slot (ar_hash, &tmp, INSERT);

  if ((new = *slot) == ((void*)0))
    {
      new = xmalloc (sizeof (*new));
      new->offset = VARRAY_ACTIVE_SIZE (cfun->eh->action_record_data) + 1;
      new->filter = filter;
      new->next = next;
      *slot = new;






      push_sleb128 (&cfun->eh->action_record_data, filter);
      if (next)
 next -= VARRAY_ACTIVE_SIZE (cfun->eh->action_record_data) + 1;
      push_sleb128 (&cfun->eh->action_record_data, next);
    }

  return new->offset;
}
