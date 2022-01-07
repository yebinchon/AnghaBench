
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int uidhash_node; } ;
struct hlist_head {int dummy; } ;


 int hlist_add_head (int *,struct hlist_head*) ;

__attribute__((used)) static void uid_hash_insert(struct user_struct *up, struct hlist_head *hashent)
{
 hlist_add_head(&up->uidhash_node, hashent);
}
