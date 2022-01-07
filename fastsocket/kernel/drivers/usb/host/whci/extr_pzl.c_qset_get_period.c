
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct whc_qset {TYPE_2__* ep; } ;
struct whc {int dummy; } ;
struct TYPE_3__ {int bInterval; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;



__attribute__((used)) static int qset_get_period(struct whc *whc, struct whc_qset *qset)
{
 uint8_t bInterval = qset->ep->desc.bInterval;

 if (bInterval < 6)
  bInterval = 6;
 if (bInterval > 10)
  bInterval = 10;
 return bInterval - 6;
}
