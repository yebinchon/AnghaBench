
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {int update_start; int cursor; int clear_margins; int putcs; int clear; int bmove; } ;


 int ud_bmove ;
 int ud_clear ;
 int ud_clear_margins ;
 int ud_cursor ;
 int ud_putcs ;
 int ud_update_start ;

void fbcon_rotate_ud(struct fbcon_ops *ops)
{
 ops->bmove = ud_bmove;
 ops->clear = ud_clear;
 ops->putcs = ud_putcs;
 ops->clear_margins = ud_clear_margins;
 ops->cursor = ud_cursor;
 ops->update_start = ud_update_start;
}
