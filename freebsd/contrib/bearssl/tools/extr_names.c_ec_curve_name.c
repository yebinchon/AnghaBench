
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
ec_curve_name(int curve)
{
 switch (curve) {
 case 141: return "sect163k1";
 case 140: return "sect163r1";
 case 139: return "sect163r2";
 case 138: return "sect193r1";
 case 137: return "sect193r2";
 case 136: return "sect233k1";
 case 135: return "sect233r1";
 case 134: return "sect239k1";
 case 133: return "sect283k1";
 case 132: return "sect283r1";
 case 131: return "sect409k1";
 case 130: return "sect409r1";
 case 129: return "sect571k1";
 case 128: return "sect571r1";
 case 152: return "secp160k1";
 case 151: return "secp160r1";
 case 150: return "secp160r2";
 case 149: return "secp192k1";
 case 148: return "secp192r1";
 case 147: return "secp224k1";
 case 146: return "secp224r1";
 case 145: return "secp256k1";
 case 144: return "secp256r1";
 case 143: return "secp384r1";
 case 142: return "secp521r1";
 case 155: return "brainpoolP256r1";
 case 154: return "brainpoolP384r1";
 case 153: return "brainpoolP512r1";
 default:
  return "unknown";
 }
}
