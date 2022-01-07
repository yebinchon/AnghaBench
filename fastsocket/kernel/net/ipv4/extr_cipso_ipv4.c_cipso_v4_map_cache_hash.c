
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jhash (unsigned char const*,int ,int ) ;

__attribute__((used)) static u32 cipso_v4_map_cache_hash(const unsigned char *key, u32 key_len)
{
 return jhash(key, key_len, 0);
}
