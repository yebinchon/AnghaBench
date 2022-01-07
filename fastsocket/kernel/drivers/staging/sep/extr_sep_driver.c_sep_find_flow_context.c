
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_flow_context_t {unsigned long flow_id; } ;
struct sep_device {struct sep_flow_context_t* flows; } ;


 int SEP_DRIVER_NUM_FLOWS ;

__attribute__((used)) static struct sep_flow_context_t *sep_find_flow_context(struct sep_device *sep,
    unsigned long flow_id)
{
 int count;





 for (count = 0; count < SEP_DRIVER_NUM_FLOWS; count++) {
  if (sep->flows[count].flow_id == flow_id)
   return &sep->flows[count];
 }
 return ((void*)0);
}
