
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int lock; int start; scalar_t__ tail; scalar_t__ head; } ;


 int ktime_get () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_1__ tcp_probe ;

__attribute__((used)) static int tcpprobe_open(struct inode * inode, struct file * file)
{

 spin_lock_bh(&tcp_probe.lock);
 tcp_probe.head = tcp_probe.tail = 0;
 tcp_probe.start = ktime_get();
 spin_unlock_bh(&tcp_probe.lock);

 return 0;
}
