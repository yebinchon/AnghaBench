
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mempolicy {int flags; } ;


 int MPOL_F_RELATIVE_NODES ;
 int MPOL_F_STATIC_NODES ;

__attribute__((used)) static inline int mpol_store_user_nodemask(const struct mempolicy *pol)
{
 return pol->flags & (MPOL_F_STATIC_NODES | MPOL_F_RELATIVE_NODES);
}
