
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int GEODEWDT_HZ ;
 int GEODEWDT_MAX_SECONDS ;
 int MFGPT_REG_CMP2 ;
 int MFGPT_REG_COUNTER ;
 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_CNTEN ;
 int geode_mfgpt_write (int ,int ,int) ;
 int timeout ;
 int wdt_timer ;

__attribute__((used)) static int geodewdt_set_heartbeat(int val)
{
 if (val < 1 || val > GEODEWDT_MAX_SECONDS)
  return -EINVAL;

 geode_mfgpt_write(wdt_timer, MFGPT_REG_SETUP, 0);
 geode_mfgpt_write(wdt_timer, MFGPT_REG_CMP2, val * GEODEWDT_HZ);
 geode_mfgpt_write(wdt_timer, MFGPT_REG_COUNTER, 0);
 geode_mfgpt_write(wdt_timer, MFGPT_REG_SETUP, MFGPT_SETUP_CNTEN);

 timeout = val;
 return 0;
}
