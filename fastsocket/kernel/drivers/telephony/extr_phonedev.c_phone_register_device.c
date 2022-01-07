
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phone_device {int minor; } ;


 int ENFILE ;
 int PHONE_NUM_DEVICES ;
 int PHONE_UNIT_ANY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phone_device** phone_device ;
 int phone_lock ;

int phone_register_device(struct phone_device *p, int unit)
{
 int base;
 int end;
 int i;

 base = 0;
 end = PHONE_NUM_DEVICES - 1;

 if (unit != PHONE_UNIT_ANY) {
  base = unit;
  end = unit + 1;
 }

 mutex_lock(&phone_lock);
 for (i = base; i < end; i++) {
  if (phone_device[i] == ((void*)0)) {
   phone_device[i] = p;
   p->minor = i;
   mutex_unlock(&phone_lock);
   return 0;
  }
 }
 mutex_unlock(&phone_lock);
 return -ENFILE;
}
