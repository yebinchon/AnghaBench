
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ops_list {int used; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ops_mutex ;

__attribute__((used)) static void unlock_driver(struct ops_list *ops)
{
 mutex_lock(&ops_mutex);
 ops->used--;
 mutex_unlock(&ops_mutex);
}
