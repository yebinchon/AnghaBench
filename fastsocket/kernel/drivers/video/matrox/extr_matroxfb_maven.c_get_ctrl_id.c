
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int __u32 ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int EINVAL ;
 int ENOENT ;
 int MAVCTRLS ;
 TYPE_2__* maven_controls ;

__attribute__((used)) static int get_ctrl_id(__u32 v4l2_id) {
 int i;

 for (i = 0; i < MAVCTRLS; i++) {
  if (v4l2_id < maven_controls[i].desc.id) {
   if (maven_controls[i].desc.id == 0x08000000) {
    return -EINVAL;
   }
   return -ENOENT;
  }
  if (v4l2_id == maven_controls[i].desc.id) {
   return i;
  }
 }
 return -EINVAL;
}
