
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_request {int in_use; int queue; } ;
struct imx_ep_struct {int queue; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ep_add_request(struct imx_ep_struct *imx_ep,
       struct imx_request *req)
{
 if (unlikely(!req))
  return;

 req->in_use = 1;
 list_add_tail(&req->queue, &imx_ep->queue);
}
