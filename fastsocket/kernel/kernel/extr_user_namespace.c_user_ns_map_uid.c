
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct user_namespace {TYPE_1__* creator; } ;
struct cred {TYPE_1__* user; } ;
struct TYPE_2__ {struct user_namespace* user_ns; } ;


 struct user_namespace init_user_ns ;
 scalar_t__ likely (int) ;
 int overflowuid ;

uid_t user_ns_map_uid(struct user_namespace *to, const struct cred *cred, uid_t uid)
{
 struct user_namespace *tmp;

 if (likely(to == cred->user->user_ns))
  return uid;





 for ( tmp = to; tmp != &init_user_ns;
       tmp = tmp->creator->user_ns ) {
  if (cred->user == tmp->creator) {
   return (uid_t)0;
  }
 }


 return overflowuid;
}
