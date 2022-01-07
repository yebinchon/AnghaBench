
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {scalar_t__ rotate; int * rotate_font; int update_start; int cursor; int clear_margins; int putcs; int clear; int bmove; } ;


 int bit_bmove ;
 int bit_clear ;
 int bit_clear_margins ;
 int bit_cursor ;
 int bit_putcs ;
 int bit_update_start ;
 int fbcon_set_rotate (struct fbcon_ops*) ;

void fbcon_set_bitops(struct fbcon_ops *ops)
{
 ops->bmove = bit_bmove;
 ops->clear = bit_clear;
 ops->putcs = bit_putcs;
 ops->clear_margins = bit_clear_margins;
 ops->cursor = bit_cursor;
 ops->update_start = bit_update_start;
 ops->rotate_font = ((void*)0);

 if (ops->rotate)
  fbcon_set_rotate(ops);
}
