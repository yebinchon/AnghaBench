
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bat_idr ;
 int bat_idr_lock ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void release_bat_id(int id)
{
 mutex_lock(&bat_idr_lock);
 idr_remove(&bat_idr, id);
 mutex_unlock(&bat_idr_lock);
}
