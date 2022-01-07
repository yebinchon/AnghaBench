
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;


 int COMM_RESET ;
 int hpi_send_mbox (struct c67x00_device*,int ) ;
 int ll_recv_msg (struct c67x00_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int c67x00_ll_reset(struct c67x00_device *dev)
{
 int rc;

 mutex_lock(&dev->hpi.lcp.mutex);
 hpi_send_mbox(dev, COMM_RESET);
 rc = ll_recv_msg(dev);
 mutex_unlock(&dev->hpi.lcp.mutex);

 return rc;
}
