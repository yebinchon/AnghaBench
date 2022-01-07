
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_message {int m_flush_wait; int m_flags; } ;


 int RDS_MSG_MAPPED ;
 int clear_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

void rds_message_unmapped(struct rds_message *rm)
{
 clear_bit(RDS_MSG_MAPPED, &rm->m_flags);
 wake_up_interruptible(&rm->m_flush_wait);
}
