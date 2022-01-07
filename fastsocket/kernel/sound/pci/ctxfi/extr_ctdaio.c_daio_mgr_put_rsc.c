
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union daio_usage {int data; } ;
struct rsc_mgr {scalar_t__ rscs; } ;
typedef enum DAIOTYP { ____Placeholder_DAIOTYP } DAIOTYP ;



__attribute__((used)) static int daio_mgr_put_rsc(struct rsc_mgr *mgr, enum DAIOTYP type)
{
 ((union daio_usage *)mgr->rscs)->data &= ~(0x1 << type);

 return 0;
}
