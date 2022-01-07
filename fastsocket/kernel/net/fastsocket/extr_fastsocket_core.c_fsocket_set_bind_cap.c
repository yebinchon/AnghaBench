
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cap_effective; } ;
typedef int kernel_cap_t ;


 int CAP_NET_BIND_SERVICE ;
 int cap_capget (int ,int *,int *,int *) ;
 int cap_raise (int ,int ) ;
 int current ;
 scalar_t__ current_cred () ;

__attribute__((used)) static void fsocket_set_bind_cap(kernel_cap_t *p)
{
 kernel_cap_t pE, pI, pP, pN;
 struct cred *new;

 cap_capget(current, &pE, &pI, &pP);
 pN = pE;

 cap_raise(pN, CAP_NET_BIND_SERVICE);


 new = (struct cred *)current_cred();
 new->cap_effective = pN;

 *p = pE;
}
