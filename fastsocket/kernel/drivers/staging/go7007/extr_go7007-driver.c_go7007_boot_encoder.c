
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int i2c_adapter_online; int hw_lock; } ;


 scalar_t__ go7007_i2c_init (struct go7007*) ;
 int go7007_load_encoder (struct go7007*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int go7007_boot_encoder(struct go7007 *go, int init_i2c)
{
 int ret;

 mutex_lock(&go->hw_lock);
 ret = go7007_load_encoder(go);
 mutex_unlock(&go->hw_lock);
 if (ret < 0)
  return -1;
 if (!init_i2c)
  return 0;
 if (go7007_i2c_init(go) < 0)
  return -1;
 go->i2c_adapter_online = 1;
 return 0;
}
