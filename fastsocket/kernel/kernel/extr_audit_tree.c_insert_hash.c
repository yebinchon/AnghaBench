
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int inode; } ;
struct audit_chunk {int hash; TYPE_1__ watch; } ;


 struct list_head* chunk_hash (int ) ;
 int list_add_rcu (int *,struct list_head*) ;

__attribute__((used)) static void insert_hash(struct audit_chunk *chunk)
{
 struct list_head *list = chunk_hash(chunk->watch.inode);
 list_add_rcu(&chunk->hash, list);
}
