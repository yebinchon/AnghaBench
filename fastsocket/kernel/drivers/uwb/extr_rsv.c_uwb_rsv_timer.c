
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rsv {int handle_timeout_work; TYPE_1__* rc; } ;
struct TYPE_2__ {int rsv_workq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void uwb_rsv_timer(unsigned long arg)
{
 struct uwb_rsv *rsv = (struct uwb_rsv *)arg;

 queue_work(rsv->rc->rsv_workq, &rsv->handle_timeout_work);
}
