
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {int umc_dev; } ;
struct uwb_rc {struct whcrc* priv; } ;


 int umc_controller_reset (int ) ;

__attribute__((used)) static int whcrc_reset(struct uwb_rc *rc)
{
 struct whcrc *whcrc = rc->priv;

 return umc_controller_reset(whcrc->umc_dev);
}
