
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct adapter {int dummy; } ;


 int ASSERT (int) ;
 int SLIC_UPR_RCONFIG ;
 int slic_upr_request (struct adapter*,int ,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void slic_config_get(struct adapter *adapter, u32 config,
       u32 config_h)
{
 int status;

 status = slic_upr_request(adapter,
      SLIC_UPR_RCONFIG,
      (u32) config, (u32) config_h, 0, 0);
 ASSERT(status == 0);
}
