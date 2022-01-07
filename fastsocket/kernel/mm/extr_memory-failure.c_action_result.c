
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * action_name ;
 int pr_err (char*,unsigned long,char*,int ) ;

__attribute__((used)) static void action_result(unsigned long pfn, char *msg, int result)
{
 pr_err("MCE %#lx: %s page recovery: %s\n",
  pfn, msg, action_name[result]);
}
