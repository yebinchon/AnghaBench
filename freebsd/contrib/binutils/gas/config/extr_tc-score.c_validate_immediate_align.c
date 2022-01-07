
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* error; } ;


 scalar_t__ FAIL ;
 int SUCCESS ;
 void* _ (char*) ;
 unsigned int _IMM10_RSHIFT_2 ;
 unsigned int _IMM5_RSHIFT_1 ;
 unsigned int _IMM5_RSHIFT_2 ;
 TYPE_1__ inst ;

__attribute__((used)) static int
validate_immediate_align (int val, unsigned int data_type)
{
  if (data_type == _IMM5_RSHIFT_1)
    {
      if (val % 2)
        {
          inst.error = _("address offset must be half word alignment");
          return (int) FAIL;
        }
    }
  else if ((data_type == _IMM5_RSHIFT_2) || (data_type == _IMM10_RSHIFT_2))
    {
      if (val % 4)
        {
          inst.error = _("address offset must be word alignment");
          return (int) FAIL;
        }
    }

  return SUCCESS;
}
