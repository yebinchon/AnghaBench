
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipq_cmpfn ;


 int __ipq_flush (int ,unsigned long) ;
 int queue_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void
ipq_flush(ipq_cmpfn cmpfn, unsigned long data)
{
 write_lock_bh(&queue_lock);
 __ipq_flush(cmpfn, data);
 write_unlock_bh(&queue_lock);
}
