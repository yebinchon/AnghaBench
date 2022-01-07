
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ipq_set_mode (unsigned char,unsigned int) ;
 int queue_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int
ipq_set_mode(unsigned char mode, unsigned int range)
{
 int status;

 write_lock_bh(&queue_lock);
 status = __ipq_set_mode(mode, range);
 write_unlock_bh(&queue_lock);
 return status;
}
