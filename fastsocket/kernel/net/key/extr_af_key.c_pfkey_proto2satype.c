
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;





 int SADB_SATYPE_AH ;
 int SADB_SATYPE_ESP ;
 int SADB_X_SATYPE_IPCOMP ;

__attribute__((used)) static uint8_t
pfkey_proto2satype(uint16_t proto)
{
 switch (proto) {
 case 130:
  return SADB_SATYPE_AH;
 case 128:
  return SADB_SATYPE_ESP;
 case 129:
  return SADB_X_SATYPE_IPCOMP;
  break;
 default:
  return 0;
 }

}
