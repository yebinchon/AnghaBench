
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ incremented_off_time; int modified_creation_time; } ;
typedef TYPE_1__ ticker_t ;


 scalar_t__ get_run_time () ;

__attribute__((used)) static void
ticker_on (ticker_t *ticker)
{
  if (ticker->incremented_off_time != 0)
    {
      ticker->modified_creation_time
        += get_run_time () - ticker->incremented_off_time + 1;
      ticker->incremented_off_time = 0;
    }
}
