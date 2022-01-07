
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {scalar_t__ cl_session; } ;



__attribute__((used)) static inline int nfs4_has_session(const struct nfs_client *clp)
{




 return 0;
}
