
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {size_t next; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 size_t MAX_USERID ;
 int USER_LIST_SIZE ;
 TYPE_1__* kzalloc (int ,int ) ;
 size_t next_free_user ;
 int reg_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_1__* users ;

__attribute__((used)) static int reg_init(void)
{
 u32 i;

 spin_lock_bh(&reg_lock);
 if (!users) {
  users = kzalloc(USER_LIST_SIZE, GFP_ATOMIC);
  if (users) {
   for (i = 1; i <= MAX_USERID; i++) {
    users[i].next = i - 1;
   }
   next_free_user = MAX_USERID;
  }
 }
 spin_unlock_bh(&reg_lock);
 return users ? 0 : -ENOMEM;
}
