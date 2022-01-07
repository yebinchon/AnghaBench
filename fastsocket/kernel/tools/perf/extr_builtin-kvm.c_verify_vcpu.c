
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,int) ;

__attribute__((used)) static bool verify_vcpu(int vcpu)
{
 if (vcpu != -1 && vcpu < 0) {
  pr_err("Invalid vcpu:%d.\n", vcpu);
  return 0;
 }

 return 1;
}
