
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;


 int last_request ;
 int lockdep_is_held (int *) ;
 struct regulatory_request* rcu_dereference_check (int ,int ) ;
 int reg_mutex ;

__attribute__((used)) static struct regulatory_request *get_last_request(void)
{
 return rcu_dereference_check(last_request,
         lockdep_is_held(&reg_mutex));
}
