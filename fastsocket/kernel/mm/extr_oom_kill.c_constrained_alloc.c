
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;
typedef enum oom_constraint { ____Placeholder_oom_constraint } oom_constraint ;


 int CONSTRAINT_NONE ;
 unsigned long total_swap_pages ;
 unsigned long totalram_pages ;

__attribute__((used)) static enum oom_constraint constrained_alloc(struct zonelist *zonelist,
    gfp_t gfp_mask, nodemask_t *nodemask,
    unsigned long *totalpages)
{
 *totalpages = totalram_pages + total_swap_pages;
 return CONSTRAINT_NONE;
}
