
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_idpool {int pool; int lock; } ;


 int ENOMEM ;
 struct p9_idpool* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int idr_init (int *) ;
 struct p9_idpool* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct p9_idpool *p9_idpool_create(void)
{
 struct p9_idpool *p;

 p = kmalloc(sizeof(struct p9_idpool), GFP_KERNEL);
 if (!p)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&p->lock);
 idr_init(&p->pool);

 return p;
}
