
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int dummy; } ;


 int lockdep_is_held (int *) ;
 int mpp_paths ;
 int pathtbl_resize_lock ;
 struct mesh_table* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct mesh_table *resize_dereference_mpp_paths(void)
{
 return rcu_dereference_protected(mpp_paths,
  lockdep_is_held(&pathtbl_resize_lock));
}
