
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int incremented_off_time; int modified_creation_time; } ;
typedef TYPE_1__ ticker_t ;


 int get_run_time () ;

__attribute__((used)) static int
active_time (ticker_t ticker)
{
  if (ticker.incremented_off_time != 0)
    return ticker.incremented_off_time - 1 - ticker.modified_creation_time;
  else
    return get_run_time () - ticker.modified_creation_time;
}
