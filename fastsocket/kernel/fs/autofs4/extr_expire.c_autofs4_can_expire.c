
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct autofs_info {scalar_t__ last_used; } ;


 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 scalar_t__ now ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int autofs4_can_expire(struct dentry *dentry,
     unsigned long timeout, int do_now)
{
 struct autofs_info *ino = autofs4_dentry_ino(dentry);


 if (ino == ((void*)0))
  return 0;

 if (!do_now) {

  if (!timeout || time_after(ino->last_used + timeout, now))
   return 0;





  ino->last_used = now;
 }
 return 1;
}
