
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_type; } ;


 int EINVAL ;




__attribute__((used)) static int assign_type(struct file_lock *fl, int type)
{
 switch (type) {
 case 130:
 case 128:
 case 129:
  fl->fl_type = type;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
