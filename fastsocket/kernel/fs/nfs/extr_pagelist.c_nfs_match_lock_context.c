
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ l_owner; scalar_t__ l_pid; } ;
struct nfs_lock_context {TYPE_1__ lockowner; } ;



__attribute__((used)) static bool nfs_match_lock_context(const struct nfs_lock_context *l1,
  const struct nfs_lock_context *l2)
{
 return l1->lockowner.l_owner == l2->lockowner.l_owner
  && l1->lockowner.l_pid == l2->lockowner.l_pid;
}
