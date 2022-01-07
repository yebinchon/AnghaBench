
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_op {int dummy; } ;


 int bcm_rx_thr_flush (struct bcm_op*,int) ;

__attribute__((used)) static void bcm_rx_thr_tsklet(unsigned long data)
{
 struct bcm_op *op = (struct bcm_op *)data;


 bcm_rx_thr_flush(op, 1);
}
