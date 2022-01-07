
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* md5_OID ;
 unsigned char const* sha1_OID ;
 unsigned char const* sha224_OID ;
 unsigned char const* sha256_OID ;
 unsigned char const* sha384_OID ;
 unsigned char const* sha512_OID ;

const unsigned char *
br_digest_OID(int digest_id, size_t *len)
{
 switch (digest_id) {
 case 133:
  *len = sizeof md5_OID;
  return md5_OID;
 case 132:
  *len = sizeof sha1_OID;
  return sha1_OID;
 case 131:
  *len = sizeof sha224_OID;
  return sha224_OID;
 case 130:
  *len = sizeof sha256_OID;
  return sha256_OID;
 case 129:
  *len = sizeof sha384_OID;
  return sha384_OID;
 case 128:
  *len = sizeof sha512_OID;
  return sha512_OID;
 default:
  *len = 0;
  return ((void*)0);
 }
}
