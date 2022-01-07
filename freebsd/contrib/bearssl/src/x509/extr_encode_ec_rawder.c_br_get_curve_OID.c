
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const unsigned char *
br_get_curve_OID(int curve)
{
 static const unsigned char OID_secp256r1[] = {
  0x08, 0x2a, 0x86, 0x48, 0xce, 0x3d, 0x03, 0x01, 0x07
 };
 static const unsigned char OID_secp384r1[] = {
  0x05, 0x2b, 0x81, 0x04, 0x00, 0x22
 };
 static const unsigned char OID_secp521r1[] = {
  0x05, 0x2b, 0x81, 0x04, 0x00, 0x23
 };

 switch (curve) {
 case 130: return OID_secp256r1;
 case 129: return OID_secp384r1;
 case 128: return OID_secp521r1;
 default:
  return ((void*)0);
 }
}
