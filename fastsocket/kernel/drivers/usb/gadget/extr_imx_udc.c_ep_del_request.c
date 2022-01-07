
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_request {scalar_t__ in_use; int queue; } ;
struct imx_ep_struct {int dummy; } ;


 int list_del_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ep_del_request(struct imx_ep_struct *imx_ep,
       struct imx_request *req)
{
 if (unlikely(!req))
  return;

 list_del_init(&req->queue);
 req->in_use = 0;
}
