
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {TYPE_1__* cl_session; } ;
struct TYPE_2__ {int flags; } ;


 int SESSION4_PERSIST ;
 scalar_t__ nfs4_has_session (struct nfs_client const*) ;

__attribute__((used)) static inline int nfs4_has_persistent_session(const struct nfs_client *clp)
{




 return 0;
}
