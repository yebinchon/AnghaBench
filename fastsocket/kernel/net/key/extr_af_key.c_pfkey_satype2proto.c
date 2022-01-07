
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int IPPROTO_AH ;
 int IPPROTO_COMP ;
 int IPPROTO_ESP ;
 int IPSEC_PROTO_ANY ;





__attribute__((used)) static uint16_t
pfkey_satype2proto(uint8_t satype)
{
 switch (satype) {
 case 129:
  return IPSEC_PROTO_ANY;
 case 131:
  return IPPROTO_AH;
 case 130:
  return IPPROTO_ESP;
 case 128:
  return IPPROTO_COMP;
  break;
 default:
  return 0;
 }

}
