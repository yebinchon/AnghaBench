
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_idpool {int pool; } ;


 int idr_destroy (int *) ;
 int kfree (struct p9_idpool*) ;

void p9_idpool_destroy(struct p9_idpool *p)
{
 idr_destroy(&p->pool);
 kfree(p);
}
