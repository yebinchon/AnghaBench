
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int itf; } ;
struct sockaddr_atmpvc {TYPE_1__ sap_addr; } ;
struct atm_dev {int number; } ;


 int as_itf_notify ;
 int sigd_enq (int *,int ,int *,struct sockaddr_atmpvc*,int *) ;

__attribute__((used)) static void notify_sigd(const struct atm_dev *dev)
{
 struct sockaddr_atmpvc pvc;

 pvc.sap_addr.itf = dev->number;
 sigd_enq(((void*)0), as_itf_notify, ((void*)0), &pvc, ((void*)0));
}
