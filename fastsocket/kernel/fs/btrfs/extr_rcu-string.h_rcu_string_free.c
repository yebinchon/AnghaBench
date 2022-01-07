
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_string {int rcu; } ;


 int call_rcu (int *,int ) ;
 int rcu_string_kfree_callback ;

__attribute__((used)) static inline void rcu_string_free(struct rcu_string *str)
{
 if (str)
  call_rcu(&str->rcu, rcu_string_kfree_callback);
}
