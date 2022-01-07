
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelfb_info {int dummy; } ;


 int ADVANCE_RING () ;
 int MI_FLUSH ;
 int MI_INVALIDATE_MAP_CACHE ;
 int MI_NOOP ;
 int MI_WRITE_DIRTY_STATE ;
 int OUT_RING (int) ;
 int START_RING (int) ;

__attribute__((used)) static void do_flush(struct intelfb_info *dinfo)
{
 START_RING(2);
 OUT_RING(MI_FLUSH | MI_WRITE_DIRTY_STATE | MI_INVALIDATE_MAP_CACHE);
 OUT_RING(MI_NOOP);
 ADVANCE_RING();
}
