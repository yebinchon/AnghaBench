
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_iint_cache {int writecount; int readcount; int opencount; int mutex; } ;
typedef int fmode_t ;


 int BUG_ON (int) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void ima_inc_counts(struct ima_iint_cache *iint, fmode_t mode)
{
 BUG_ON(!mutex_is_locked(&iint->mutex));

 iint->opencount++;
 if ((mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
  iint->readcount++;
 if (mode & FMODE_WRITE)
  iint->writecount++;
}
