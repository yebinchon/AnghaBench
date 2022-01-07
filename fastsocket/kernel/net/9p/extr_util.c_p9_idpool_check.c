
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_idpool {int pool; } ;


 int * idr_find (int *,int) ;

int p9_idpool_check(int id, struct p9_idpool *p)
{
 return idr_find(&p->pool, id) != ((void*)0);
}
