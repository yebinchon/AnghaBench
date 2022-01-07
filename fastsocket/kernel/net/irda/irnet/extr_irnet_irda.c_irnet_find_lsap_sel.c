
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int daddr; int rsaddr; int iriap; int errno; } ;
typedef TYPE_1__ irnet_socket ;


 int DABORT (int ,int ,int ,char*) ;
 int DENTER (int ,char*,TYPE_1__*) ;
 int DEXIT (int ,char*) ;
 int EBUSY ;
 int EHOSTUNREACH ;
 int IAS_CLIENT ;
 int IRDA_SR_ERROR ;
 int IRDA_SR_TRACE ;
 int IRNET_IAS_VALUE ;
 int IRNET_SERVICE_NAME ;
 int LSAP_ANY ;
 int iriap_getvaluebyclass_request (int ,int ,int ,int ,int ) ;
 int iriap_open (int ,int ,TYPE_1__*,int ) ;
 int irnet_getvalue_confirm ;

__attribute__((used)) static inline int
irnet_find_lsap_sel(irnet_socket * self)
{
  DENTER(IRDA_SR_TRACE, "(self=0x%p)\n", self);


  DABORT(self->iriap, -EBUSY, IRDA_SR_ERROR, "busy with a previous query.\n");


  self->iriap = iriap_open(LSAP_ANY, IAS_CLIENT, self,
      irnet_getvalue_confirm);


  self->errno = -EHOSTUNREACH;


  iriap_getvaluebyclass_request(self->iriap, self->rsaddr, self->daddr,
    IRNET_SERVICE_NAME, IRNET_IAS_VALUE);






  DEXIT(IRDA_SR_TRACE, "\n");
  return 0;
}
