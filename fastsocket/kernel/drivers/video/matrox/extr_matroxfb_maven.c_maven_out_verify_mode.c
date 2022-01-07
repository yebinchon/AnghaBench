
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int EINVAL ;




__attribute__((used)) static int maven_out_verify_mode(void* md, u_int32_t arg) {
 switch (arg) {
  case 128:
  case 129:
  case 130:
   return 0;
 }
 return -EINVAL;
}
