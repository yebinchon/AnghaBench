
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill_data {int mtx; int events; } ;


 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool rfkill_readable(struct rfkill_data *data)
{
 bool r;

 mutex_lock(&data->mtx);
 r = !list_empty(&data->events);
 mutex_unlock(&data->mtx);

 return r;
}
