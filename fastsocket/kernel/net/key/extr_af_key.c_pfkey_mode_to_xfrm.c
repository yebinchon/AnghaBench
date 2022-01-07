
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFRM_MODE_BEET ;
 int XFRM_MODE_TRANSPORT ;
 int XFRM_MODE_TUNNEL ;

__attribute__((used)) static inline int pfkey_mode_to_xfrm(int mode)
{
 switch(mode) {
 case 131:
 case 129:
  return XFRM_MODE_TRANSPORT;
 case 128:
  return XFRM_MODE_TUNNEL;
 case 130:
  return XFRM_MODE_BEET;
 default:
  return -1;
 }
}
