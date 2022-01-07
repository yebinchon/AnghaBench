
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ulog_lock ;
 int ulog_send (unsigned long) ;

__attribute__((used)) static void ulog_timer(unsigned long data)
{
 pr_debug("ipt_ULOG: timer function called, calling ulog_send\n");



 spin_lock_bh(&ulog_lock);
 ulog_send(data);
 spin_unlock_bh(&ulog_lock);
}
