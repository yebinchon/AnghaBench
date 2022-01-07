
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int list; scalar_t__ send; scalar_t__ length; int * buf; } ;
typedef TYPE_1__ rndis_resp_t ;
struct TYPE_6__ {int resp_queue; } ;


 int GFP_ATOMIC ;
 TYPE_1__* kmalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 TYPE_2__* rndis_per_dev_params ;

__attribute__((used)) static rndis_resp_t *rndis_add_response (int configNr, u32 length)
{
 rndis_resp_t *r;


 r = kmalloc (sizeof (rndis_resp_t) + length, GFP_ATOMIC);
 if (!r) return ((void*)0);

 r->buf = (u8 *) (r + 1);
 r->length = length;
 r->send = 0;

 list_add_tail (&r->list,
  &(rndis_per_dev_params [configNr].resp_queue));
 return r;
}
