
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {struct mesh_table* hashwlock; struct mesh_table* hash_buckets; } ;


 int kfree (struct mesh_table*) ;

__attribute__((used)) static void __mesh_table_free(struct mesh_table *tbl)
{
 kfree(tbl->hash_buckets);
 kfree(tbl->hashwlock);
 kfree(tbl);
}
