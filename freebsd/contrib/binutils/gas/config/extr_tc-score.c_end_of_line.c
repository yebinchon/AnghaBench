
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;


 scalar_t__ BAD_GARBAGE ;
 scalar_t__ FAIL ;
 int SUCCESS ;
 TYPE_1__ inst ;
 int skip_whitespace (char*) ;

__attribute__((used)) static int
end_of_line (char *str)
{
  int retval = SUCCESS;

  skip_whitespace (str);
  if (*str != '\0')
    {
      retval = (int) FAIL;

      if (!inst.error)
        inst.error = BAD_GARBAGE;
    }

  return retval;
}
