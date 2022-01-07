
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum oom_constraint { ____Placeholder_oom_constraint } oom_constraint ;


 int CONSTRAINT_NONE ;
 int dump_header (int *,int ,int,int *,int const*) ;
 scalar_t__ likely (int) ;
 int panic (char*,char*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sysctl_panic_on_oom ;
 int tasklist_lock ;

__attribute__((used)) static void check_panic_on_oom(enum oom_constraint constraint, gfp_t gfp_mask,
    int order, const nodemask_t *nodemask)
{
 if (likely(!sysctl_panic_on_oom))
  return;
 if (sysctl_panic_on_oom != 2) {





  if (constraint != CONSTRAINT_NONE)
   return;
 }
 read_lock(&tasklist_lock);
 dump_header(((void*)0), gfp_mask, order, ((void*)0), nodemask);
 read_unlock(&tasklist_lock);
 panic("Out of memory: %s panic_on_oom is enabled\n",
  sysctl_panic_on_oom == 2 ? "compulsory" : "system-wide");
}
