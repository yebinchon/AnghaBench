
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
hash_function_name(int id)
{
 switch (id) {
 case 133: return "MD5+SHA-1";
 case 134: return "MD5";
 case 132: return "SHA-1";
 case 131: return "SHA-224";
 case 130: return "SHA-256";
 case 129: return "SHA-384";
 case 128: return "SHA-512";
 default:
  return "unknown";
 }
}
