
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct user_struct {int dummy; } ;
struct user_namespace {int dummy; } ;


 struct user_namespace* current_user_ns () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct user_struct* uid_hash_find (int ,int ) ;
 int uidhash_lock ;
 int uidhashentry (struct user_namespace*,int ) ;

struct user_struct *find_user(uid_t uid)
{
 struct user_struct *ret;
 unsigned long flags;
 struct user_namespace *ns = current_user_ns();

 spin_lock_irqsave(&uidhash_lock, flags);
 ret = uid_hash_find(uid, uidhashentry(ns, uid));
 spin_unlock_irqrestore(&uidhash_lock, flags);
 return ret;
}
