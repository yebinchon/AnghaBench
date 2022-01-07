
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg_received; int mutex; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;


 int init_completion (int *) ;
 int mutex_init (int *) ;

void c67x00_ll_init(struct c67x00_device *dev)
{
 mutex_init(&dev->hpi.lcp.mutex);
 init_completion(&dev->hpi.lcp.msg_received);
}
