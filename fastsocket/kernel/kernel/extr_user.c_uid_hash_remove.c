
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int user_ns; int uidhash_node; } ;


 int hlist_del_init (int *) ;
 int put_user_ns (int ) ;

__attribute__((used)) static void uid_hash_remove(struct user_struct *up)
{
 hlist_del_init(&up->uidhash_node);
 put_user_ns(up->user_ns);
}
