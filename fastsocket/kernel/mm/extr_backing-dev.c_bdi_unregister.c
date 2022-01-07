
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int * dev; } ;


 int bdi_cap_flush_forker (struct backing_dev_info*) ;
 int bdi_debug_unregister (struct backing_dev_info*) ;
 int bdi_prune_sb (struct backing_dev_info*) ;
 int bdi_wb_shutdown (struct backing_dev_info*) ;
 int device_unregister (int *) ;
 int trace_writeback_bdi_unregister (struct backing_dev_info*) ;

void bdi_unregister(struct backing_dev_info *bdi)
{
 if (bdi->dev) {
  trace_writeback_bdi_unregister(bdi);
  bdi_prune_sb(bdi);

  if (!bdi_cap_flush_forker(bdi))
   bdi_wb_shutdown(bdi);
  bdi_debug_unregister(bdi);
  device_unregister(bdi->dev);
  bdi->dev = ((void*)0);
 }
}
