
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum print_stop_action { ____Placeholder_print_stop_action } print_stop_action ;
typedef TYPE_1__* bpstat ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int PRINT_NOTHING ;
 int PRINT_SRC_AND_LOC ;
 int PRINT_SRC_ONLY ;
 int PRINT_UNKNOWN ;
 int print_bp_stop_message (TYPE_1__*) ;

enum print_stop_action
bpstat_print (bpstat bs)
{
  int val;





  for (; bs; bs = bs->next)
    {
      val = print_bp_stop_message (bs);
      if (val == PRINT_SRC_ONLY
   || val == PRINT_SRC_AND_LOC
   || val == PRINT_NOTHING)
 return val;
    }



  return PRINT_UNKNOWN;
}
