
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMS_DELTA_LATCH2_MODEM_CODEC ;
 int ams_delta_latch2_write (int ,int ) ;
 int ams_delta_lock ;
 int ams_delta_muted ;
 scalar_t__ cx81801_cmd_pending ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cx81801_timeout(unsigned long data)
{
 int muted;

 spin_lock(&ams_delta_lock);
 cx81801_cmd_pending = 0;
 muted = ams_delta_muted;
 spin_unlock(&ams_delta_lock);



 if (!muted)
  ams_delta_latch2_write(AMS_DELTA_LATCH2_MODEM_CODEC, 0);
}
