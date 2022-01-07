
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,...) ;

__attribute__((used)) static void print_vcpu_info(int vcpu)
{
 pr_info("Analyze events for ");

 if (vcpu == -1)
  pr_info("all VCPUs:\n\n");
 else
  pr_info("VCPU %d:\n\n", vcpu);
}
