
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t br_md5_SIZE ;


 size_t br_sha1_SIZE ;

 size_t br_sha224_SIZE ;

 size_t br_sha256_SIZE ;

 size_t br_sha384_SIZE ;

 size_t br_sha512_SIZE ;

size_t
br_digest_size_by_ID(int digest_id)
{
 switch (digest_id) {
 case 133:
  return br_md5_SIZE + br_sha1_SIZE;
 case 134:
  return br_md5_SIZE;
 case 132:
  return br_sha1_SIZE;
 case 131:
  return br_sha224_SIZE;
 case 130:
  return br_sha256_SIZE;
 case 129:
  return br_sha384_SIZE;
 case 128:
  return br_sha512_SIZE;
 default:

  return 0;
 }
}
