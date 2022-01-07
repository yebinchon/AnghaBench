
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; int lock; } ;
struct adapter {TYPE_1__ upr_lock; } ;


 int STATUS_PENDING ;
 int STATUS_SUCCESS ;
 int slic_upr_queue_request (struct adapter*,int ,int ,int ,int ,int ) ;
 int slic_upr_start (struct adapter*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int slic_upr_request(struct adapter *adapter,
       u32 upr_request,
       u32 upr_data,
       u32 upr_data_h,
       u32 upr_buffer, u32 upr_buffer_h)
{
 int status;

 spin_lock_irqsave(&adapter->upr_lock.lock, adapter->upr_lock.flags);
 status = slic_upr_queue_request(adapter,
     upr_request,
     upr_data,
     upr_data_h, upr_buffer, upr_buffer_h);
 if (status != STATUS_SUCCESS) {
  spin_unlock_irqrestore(&adapter->upr_lock.lock,
     adapter->upr_lock.flags);
  return status;
 }
 slic_upr_start(adapter);
 spin_unlock_irqrestore(&adapter->upr_lock.lock,
    adapter->upr_lock.flags);
 return STATUS_PENDING;
}
