
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_data {int dummy; } ;
typedef int ChanInfo ;


 int hal_set_current_channel_ex (struct hw_data*,int ) ;

__attribute__((used)) static void hal_set_current_channel(struct hw_data *pHwData, ChanInfo channel)
{
 hal_set_current_channel_ex(pHwData, channel);
}
