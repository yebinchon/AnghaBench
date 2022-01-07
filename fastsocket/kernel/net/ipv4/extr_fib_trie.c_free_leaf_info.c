
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct leaf_info {int rcu; } ;


 int __leaf_info_free_rcu ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static inline void free_leaf_info(struct leaf_info *leaf)
{
 call_rcu(&leaf->rcu, __leaf_info_free_rcu);
}
