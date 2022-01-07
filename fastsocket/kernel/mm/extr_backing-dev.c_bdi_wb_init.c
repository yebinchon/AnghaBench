
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int b_more_io; int b_io; int b_dirty; int last_old_flush; struct backing_dev_info* bdi; } ;
struct backing_dev_info {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int jiffies ;
 int memset (struct bdi_writeback*,int ,int) ;

__attribute__((used)) static void bdi_wb_init(struct bdi_writeback *wb, struct backing_dev_info *bdi)
{
 memset(wb, 0, sizeof(*wb));

 wb->bdi = bdi;
 wb->last_old_flush = jiffies;
 INIT_LIST_HEAD(&wb->b_dirty);
 INIT_LIST_HEAD(&wb->b_io);
 INIT_LIST_HEAD(&wb->b_more_io);
}
