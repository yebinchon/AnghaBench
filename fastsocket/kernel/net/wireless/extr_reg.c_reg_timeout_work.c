
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int REG_DBG_PRINT (char*) ;
 int restore_regulatory_settings (int) ;

__attribute__((used)) static void reg_timeout_work(struct work_struct *work)
{
 REG_DBG_PRINT("Timeout while waiting for CRDA to reply, restoring regulatory settings\n");
 restore_regulatory_settings(1);
}
