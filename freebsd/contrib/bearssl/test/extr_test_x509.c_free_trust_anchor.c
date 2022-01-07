
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* key_name; struct TYPE_3__* dn; } ;
typedef TYPE_1__ test_trust_anchor ;


 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
free_trust_anchor(void *value)
{
 test_trust_anchor *ttc;

 ttc = value;
 xfree(ttc->dn);
 xfree(ttc->key_name);
 xfree(ttc);
}
