
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vhost_virtqueue {scalar_t__ log_ctx; int log_base; } ;
struct vhost_log {int addr; int len; } ;


 int BUG () ;
 int eventfd_signal (scalar_t__,int) ;
 int log_write (int ,int ,scalar_t__) ;
 scalar_t__ min (int ,scalar_t__) ;
 int smp_wmb () ;

int vhost_log_write(struct vhost_virtqueue *vq, struct vhost_log *log,
      unsigned int log_num, u64 len)
{
 int i, r;


 smp_wmb();
 for (i = 0; i < log_num; ++i) {
  u64 l = min(log[i].len, len);
  r = log_write(vq->log_base, log[i].addr, l);
  if (r < 0)
   return r;
  len -= l;
  if (!len) {
   if (vq->log_ctx)
    eventfd_signal(vq->log_ctx, 1);
   return 0;
  }
 }

 BUG();
 return 0;
}
