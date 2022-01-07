
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ima_iint_cache {int flags; } ;


 int EACCES ;
 int IMA_MEASURED ;
 int ima_match_policy (struct inode*,int,int) ;

int ima_must_measure(struct ima_iint_cache *iint, struct inode *inode,
       int mask, int function)
{
 int must_measure;

 if (iint->flags & IMA_MEASURED)
  return 1;

 must_measure = ima_match_policy(inode, function, mask);
 return must_measure ? 0 : -EACCES;
}
