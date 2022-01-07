
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void xt_table_info ;
struct xt_table {size_t af; int list; void* private; } ;
struct TYPE_2__ {int mutex; } ;


 int kfree (struct xt_table*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* xt ;

void *xt_unregister_table(struct xt_table *table)
{
 struct xt_table_info *private;

 mutex_lock(&xt[table->af].mutex);
 private = table->private;
 list_del(&table->list);
 mutex_unlock(&xt[table->af].mutex);
 kfree(table);

 return private;
}
