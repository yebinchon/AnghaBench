
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rds_ib_connection {int i_ack_lock; int i_ack_next; int i_ack_flags; } ;


 int IB_ACK_REQUESTED ;
 int clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64 rds_ib_get_ack(struct rds_ib_connection *ic)
{
 unsigned long flags;
 u64 seq;

 clear_bit(IB_ACK_REQUESTED, &ic->i_ack_flags);

 spin_lock_irqsave(&ic->i_ack_lock, flags);
 seq = ic->i_ack_next;
 spin_unlock_irqrestore(&ic->i_ack_lock, flags);

 return seq;
}
