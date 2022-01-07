
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_hash_class ;


 int do_KAT_HMAC_bin_bin (int const*,unsigned char*,int ,unsigned char*,int ,char const*) ;
 int hextobin (unsigned char*,char const*) ;

__attribute__((used)) static void
do_KAT_HMAC_hex_hex(const br_hash_class *digest_class, const char *skey,
 const char *sdata, const char *href)
{
 unsigned char key[1024];
 unsigned char data[1024];

 do_KAT_HMAC_bin_bin(digest_class, key, hextobin(key, skey),
  data, hextobin(data, sdata), href);
}
