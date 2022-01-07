
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct msm_rpc_endpoint {int read_q; int wait_q; } ;
struct file {scalar_t__ private_data; } ;


 unsigned int POLLIN ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int rpcrouter_poll(struct file *filp,
       struct poll_table_struct *wait)
{
 struct msm_rpc_endpoint *ept;
 unsigned mask = 0;
 ept = (struct msm_rpc_endpoint *) filp->private_data;





 if (!list_empty(&ept->read_q))
  mask |= POLLIN;

 if (!mask) {
  poll_wait(filp, &ept->wait_q, wait);
  if (!list_empty(&ept->read_q))
   mask |= POLLIN;
 }

 return mask;
}
