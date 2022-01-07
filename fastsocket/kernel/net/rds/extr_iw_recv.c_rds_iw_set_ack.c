
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rds_iw_connection {int i_ack_lock; int i_ack_flags; int i_ack_next; } ;


 int IB_ACK_REQUESTED ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rds_iw_set_ack(struct rds_iw_connection *ic, u64 seq,
    int ack_required)
{
 unsigned long flags;

 spin_lock_irqsave(&ic->i_ack_lock, flags);
 ic->i_ack_next = seq;
 if (ack_required)
  set_bit(IB_ACK_REQUESTED, &ic->i_ack_flags);
 spin_unlock_irqrestore(&ic->i_ack_lock, flags);
}
