
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_iint_cache {unsigned long flags; int refcount; scalar_t__ opencount; scalar_t__ writecount; scalar_t__ readcount; int mutex; scalar_t__ version; } ;


 int kref_set (int *,int) ;
 int memset (struct ima_iint_cache*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct ima_iint_cache *iint = foo;

 memset(iint, 0, sizeof *iint);
 iint->version = 0;
 iint->flags = 0UL;
 mutex_init(&iint->mutex);
 iint->readcount = 0;
 iint->writecount = 0;
 iint->opencount = 0;
 kref_set(&iint->refcount, 1);
}
