
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int b; double p; int log2_b; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 struct real_format* REAL_MODE_FORMAT (int) ;

int
significand_size (enum machine_mode mode)
{
  const struct real_format *fmt;

  fmt = REAL_MODE_FORMAT (mode);
  if (fmt == ((void*)0))
    return 0;

  if (fmt->b == 10)
    {




      double log2_10 = 3.3219281;
      return fmt->p * log2_10;
    }
  return fmt->p * fmt->log2_b;
}
