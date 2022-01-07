
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_hash_class ;


 int do_KAT_HMAC_bin_bin (int const*,char const*,int ,char const*,int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
do_KAT_HMAC_str_str(const br_hash_class *digest_class, const char *key,
 const char *data, const char *href)
{
 do_KAT_HMAC_bin_bin(digest_class, key, strlen(key),
  data, strlen(data), href);
}
