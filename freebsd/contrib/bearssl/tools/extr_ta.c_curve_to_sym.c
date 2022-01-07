
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
curve_to_sym(int curve)
{
 switch (curve) {
 case 141: return "BR_EC_sect163k1";
 case 140: return "BR_EC_sect163r1";
 case 139: return "BR_EC_sect163r2";
 case 138: return "BR_EC_sect193r1";
 case 137: return "BR_EC_sect193r2";
 case 136: return "BR_EC_sect233k1";
 case 135: return "BR_EC_sect233r1";
 case 134: return "BR_EC_sect239k1";
 case 133: return "BR_EC_sect283k1";
 case 132: return "BR_EC_sect283r1";
 case 131: return "BR_EC_sect409k1";
 case 130: return "BR_EC_sect409r1";
 case 129: return "BR_EC_sect571k1";
 case 128: return "BR_EC_sect571r1";
 case 152: return "BR_EC_secp160k1";
 case 151: return "BR_EC_secp160r1";
 case 150: return "BR_EC_secp160r2";
 case 149: return "BR_EC_secp192k1";
 case 148: return "BR_EC_secp192r1";
 case 147: return "BR_EC_secp224k1";
 case 146: return "BR_EC_secp224r1";
 case 145: return "BR_EC_secp256k1";
 case 144: return "BR_EC_secp256r1";
 case 143: return "BR_EC_secp384r1";
 case 142: return "BR_EC_secp521r1";
 case 155: return "BR_EC_brainpoolP256r1";
 case 154: return "BR_EC_brainpoolP384r1";
 case 153: return "BR_EC_brainpoolP512r1";
 }
 return ((void*)0);
}
