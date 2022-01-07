
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddebug_table {struct ddebug_table* mod_name; int link; } ;


 int kfree (struct ddebug_table*) ;
 int list_del_init (int *) ;

__attribute__((used)) static void ddebug_table_free(struct ddebug_table *dt)
{
 list_del_init(&dt->link);
 kfree(dt->mod_name);
 kfree(dt);
}
