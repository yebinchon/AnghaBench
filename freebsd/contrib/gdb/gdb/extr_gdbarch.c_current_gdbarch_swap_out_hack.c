
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch_swap {TYPE_1__* source; int swap; struct gdbarch_swap* next; } ;
struct gdbarch {struct gdbarch_swap* swap; } ;
struct TYPE_2__ {int sizeof_data; int data; } ;


 struct gdbarch* current_gdbarch ;
 int gdb_assert (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static struct gdbarch *
current_gdbarch_swap_out_hack (void)
{
  struct gdbarch *old_gdbarch = current_gdbarch;
  struct gdbarch_swap *curr;

  gdb_assert (old_gdbarch != ((void*)0));
  for (curr = old_gdbarch->swap;
       curr != ((void*)0);
       curr = curr->next)
    {
      memcpy (curr->swap, curr->source->data, curr->source->sizeof_data);
      memset (curr->source->data, 0, curr->source->sizeof_data);
    }
  current_gdbarch = ((void*)0);
  return old_gdbarch;
}
