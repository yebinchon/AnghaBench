
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {size_t state; } ;
bool uwb_rsv_has_two_drp_ies(struct uwb_rsv *rsv)
{
 static const bool has_two_drp_ies[] = {
  [143] = 0,
  [138] = 0,
  [142] = 0,
  [144] = 0,
  [137] = 0,
  [141] = 0,
  [139] = 0,
  [140] = 1,
  [136] = 0,
  [135] = 0,
  [129] = 0,
  [134] = 0,
  [128] = 0,
  [133] = 1,
  [132] = 1,
  [130] = 1,
  [131] = 1,
 };

 return has_two_drp_ies[rsv->state];
}
