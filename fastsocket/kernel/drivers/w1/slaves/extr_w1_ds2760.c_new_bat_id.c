
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int bat_idr ;
 int bat_idr_lock ;
 int idr_get_new (int *,int *,int*) ;
 int idr_pre_get (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int new_bat_id(void)
{
 int ret;

 while (1) {
  int id;

  ret = idr_pre_get(&bat_idr, GFP_KERNEL);
  if (ret == 0)
   return -ENOMEM;

  mutex_lock(&bat_idr_lock);
  ret = idr_get_new(&bat_idr, ((void*)0), &id);
  mutex_unlock(&bat_idr_lock);

  if (ret == 0) {
   ret = id & MAX_ID_MASK;
   break;
  } else if (ret == -EAGAIN) {
   continue;
  } else {
   break;
  }
 }

 return ret;
}
