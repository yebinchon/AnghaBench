
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tstart; int fifo; } ;


 TYPE_1__ dccpw ;
 int getnstimeofday (int *) ;
 int kfifo_reset (int ) ;

__attribute__((used)) static int dccpprobe_open(struct inode *inode, struct file *file)
{
 kfifo_reset(dccpw.fifo);
 getnstimeofday(&dccpw.tstart);
 return 0;
}
