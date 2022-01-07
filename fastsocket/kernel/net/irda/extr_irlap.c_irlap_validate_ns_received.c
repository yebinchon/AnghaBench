
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irlap_cb {int vr; } ;


 int NS_EXPECTED ;
 int NS_UNEXPECTED ;

int irlap_validate_ns_received(struct irlap_cb *self, int ns)
{

 if (ns == self->vr)
  return NS_EXPECTED;




 return NS_UNEXPECTED;


}
