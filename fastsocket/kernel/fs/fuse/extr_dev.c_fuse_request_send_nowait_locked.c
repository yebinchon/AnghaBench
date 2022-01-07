
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int background; int list; } ;
struct fuse_conn {scalar_t__ num_background; scalar_t__ max_background; int blocked; scalar_t__ congestion_threshold; int bg_queue; int bdi; scalar_t__ bdi_initialized; } ;


 int BLK_RW_ASYNC ;
 int BLK_RW_SYNC ;
 int flush_bg_queue (struct fuse_conn*) ;
 int list_add_tail (int *,int *) ;
 int set_bdi_congested (int *,int ) ;

__attribute__((used)) static void fuse_request_send_nowait_locked(struct fuse_conn *fc,
         struct fuse_req *req)
{
 req->background = 1;
 fc->num_background++;
 if (fc->num_background == fc->max_background)
  fc->blocked = 1;
 if (fc->num_background == fc->congestion_threshold &&
     fc->bdi_initialized) {
  set_bdi_congested(&fc->bdi, BLK_RW_SYNC);
  set_bdi_congested(&fc->bdi, BLK_RW_ASYNC);
 }
 list_add_tail(&req->list, &fc->bg_queue);
 flush_bg_queue(fc);
}
