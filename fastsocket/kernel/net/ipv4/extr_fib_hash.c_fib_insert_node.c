
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct fn_zone {struct hlist_head* fz_hash; } ;
struct fib_node {int fn_hash; int fn_key; } ;


 size_t fn_hash (int ,struct fn_zone*) ;
 int hlist_add_head (int *,struct hlist_head*) ;

__attribute__((used)) static inline void fib_insert_node(struct fn_zone *fz, struct fib_node *f)
{
 struct hlist_head *head = &fz->fz_hash[fn_hash(f->fn_key, fz)];

 hlist_add_head(&f->fn_hash, head);
}
