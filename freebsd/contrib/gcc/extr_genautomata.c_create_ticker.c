
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ incremented_off_time; int modified_creation_time; } ;
typedef TYPE_1__ ticker_t ;


 int get_run_time () ;

__attribute__((used)) static ticker_t
create_ticker (void)
{
  ticker_t ticker;

  ticker.modified_creation_time = get_run_time ();
  ticker.incremented_off_time = 0;
  return ticker;
}
