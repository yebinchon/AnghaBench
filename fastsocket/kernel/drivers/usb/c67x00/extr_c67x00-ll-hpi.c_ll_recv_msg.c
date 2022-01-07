
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int msg_received; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;


 scalar_t__ EIO ;
 int HZ ;
 int WARN_ON (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static inline u16 ll_recv_msg(struct c67x00_device *dev)
{
 u16 res;

 res = wait_for_completion_timeout(&dev->hpi.lcp.msg_received, 5 * HZ);
 WARN_ON(!res);

 return (res == 0) ? -EIO : 0;
}
