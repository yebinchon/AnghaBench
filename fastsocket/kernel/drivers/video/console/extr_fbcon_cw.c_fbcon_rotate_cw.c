
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {int update_start; int cursor; int clear_margins; int putcs; int clear; int bmove; } ;


 int cw_bmove ;
 int cw_clear ;
 int cw_clear_margins ;
 int cw_cursor ;
 int cw_putcs ;
 int cw_update_start ;

void fbcon_rotate_cw(struct fbcon_ops *ops)
{
 ops->bmove = cw_bmove;
 ops->clear = cw_clear;
 ops->putcs = cw_putcs;
 ops->clear_margins = cw_clear_margins;
 ops->cursor = cw_cursor;
 ops->update_start = cw_update_start;
}
