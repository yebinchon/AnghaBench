
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int so_ref; } ;


 int kref_put (int *,int ) ;
 int nfs4_free_stateowner ;

__attribute__((used)) static inline void
nfs4_put_stateowner(struct nfs4_stateowner *so)
{
 kref_put(&so->so_ref, nfs4_free_stateowner);
}
