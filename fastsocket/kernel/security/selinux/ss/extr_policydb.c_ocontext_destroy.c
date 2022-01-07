
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ocontext* name; } ;
struct ocontext {TYPE_1__ u; int * context; } ;


 int OCON_FS ;
 int OCON_FSUSE ;
 int OCON_ISID ;
 int OCON_NETIF ;
 int context_destroy (int *) ;
 int kfree (struct ocontext*) ;

__attribute__((used)) static void ocontext_destroy(struct ocontext *c, int i)
{
 if (!c)
  return;

 context_destroy(&c->context[0]);
 context_destroy(&c->context[1]);
 if (i == OCON_ISID || i == OCON_FS ||
     i == OCON_NETIF || i == OCON_FSUSE)
  kfree(c->u.name);
 kfree(c);
}
