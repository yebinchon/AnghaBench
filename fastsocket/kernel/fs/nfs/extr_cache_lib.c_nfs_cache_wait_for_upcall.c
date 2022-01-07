
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_cache_defer_req {int completion; } ;


 int ETIMEDOUT ;
 int HZ ;
 int nfs_cache_getent_timeout ;
 scalar_t__ wait_for_completion_timeout (int *,int) ;

int nfs_cache_wait_for_upcall(struct nfs_cache_defer_req *dreq)
{
 if (wait_for_completion_timeout(&dreq->completion,
   nfs_cache_getent_timeout * HZ) == 0)
  return -ETIMEDOUT;
 return 0;
}
