
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

__attribute__((used)) static void
current_gdbarch_swap_in_hack (struct gdbarch *new_gdbarch)
{
  struct gdbarch_swap *curr;

  gdb_assert (current_gdbarch == ((void*)0));
  for (curr = new_gdbarch->swap;
       curr != ((void*)0);
       curr = curr->next)
    memcpy (curr->source->data, curr->swap, curr->source->sizeof_data);
  current_gdbarch = new_gdbarch;
}
