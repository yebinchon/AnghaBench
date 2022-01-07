
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfqnl_instance {unsigned char copy_mode; int copy_range; int lock; } ;


 int EINVAL ;



 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfqnl_set_mode(struct nfqnl_instance *queue,
        unsigned char mode, unsigned int range)
{
 int status = 0;

 spin_lock_bh(&queue->lock);
 switch (mode) {
 case 129:
 case 130:
  queue->copy_mode = mode;
  queue->copy_range = 0;
  break;

 case 128:
  queue->copy_mode = mode;

  if (range > 0xffff)
   queue->copy_range = 0xffff;
  else
   queue->copy_range = range;
  break;

 default:
  status = -EINVAL;

 }
 spin_unlock_bh(&queue->lock);

 return status;
}
