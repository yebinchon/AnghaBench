
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {size_t state; } ;
int uwb_rsv_reason_code(struct uwb_rsv *rsv)
{
 static const int reason_codes[] = {
  [143] = 149,
  [138] = 149,
  [142] = 146,
  [144] = 149,
  [137] = 149,
  [141] = 146,
  [139] = 146,
  [140] = 149,
  [136] = 149,
  [135] = 148,
  [129] = 145,
  [134] = 147,
  [128] = 149,
  [133] = 149,
  [132] = 148,
  [130] = 145,
  [131] = 147,
 };

 return reason_codes[rsv->state];
}
