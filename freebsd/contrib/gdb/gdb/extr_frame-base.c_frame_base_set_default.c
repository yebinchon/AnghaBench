
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_base_table {struct frame_base const* default_base; } ;
struct frame_base {int dummy; } ;


 struct frame_base_table* frame_base_table (struct gdbarch*) ;

void
frame_base_set_default (struct gdbarch *gdbarch,
   const struct frame_base *default_base)
{
  struct frame_base_table *table = frame_base_table (gdbarch);
  table->default_base = default_base;
}
