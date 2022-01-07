
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct garmin_data {scalar_t__ mode; int flags; } ;


 int FLAGS_QUEUING ;
 scalar_t__ MODE_NATIVE ;
 int garmin_flush_queue (struct garmin_data*) ;

__attribute__((used)) static void timeout_handler(unsigned long data)
{
 struct garmin_data *garmin_data_p = (struct garmin_data *) data;


 if (garmin_data_p->mode == MODE_NATIVE)
  if (garmin_data_p->flags & FLAGS_QUEUING)
   garmin_flush_queue(garmin_data_p);
}
