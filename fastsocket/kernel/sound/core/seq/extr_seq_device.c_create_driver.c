
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ops_list {int used; int list; int dev_list; int driver; int reg_mutex; int id; } ;
struct lock_class_key {int dummy; } ;


 int DRIVER_EMPTY ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ops_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lockdep_set_class (int *,struct lock_class_key*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_ops ;
 int ops_mutex ;
 int opslist ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static struct ops_list * create_driver(char *id)
{
 struct ops_list *ops;

 ops = kzalloc(sizeof(*ops), GFP_KERNEL);
 if (ops == ((void*)0))
  return ops;


 strlcpy(ops->id, id, sizeof(ops->id));
 mutex_init(&ops->reg_mutex);




 lockdep_set_class(&ops->reg_mutex, (struct lock_class_key *)id);

 ops->driver = DRIVER_EMPTY;
 INIT_LIST_HEAD(&ops->dev_list);

 ops->used = 1;


 mutex_lock(&ops_mutex);
 list_add_tail(&ops->list, &opslist);
 num_ops++;
 mutex_unlock(&ops_mutex);

 return ops;
}
