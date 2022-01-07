
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setenv (char*,char*,int) ;
 int use_pager ;

__attribute__((used)) static void commit_pager_choice(void)
{
 switch (use_pager) {
 case 0:
  setenv("PERF_PAGER", "cat", 1);
  break;
 case 1:

  break;
 default:
  break;
 }
}
