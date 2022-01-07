
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int so_ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void
nfs4_get_stateowner(struct nfs4_stateowner *so)
{
 kref_get(&so->so_ref);
}
