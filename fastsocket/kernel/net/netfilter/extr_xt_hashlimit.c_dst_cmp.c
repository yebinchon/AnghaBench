
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsthash_ent {int dst; } ;
struct dsthash_dst {int dummy; } ;


 int memcmp (int *,struct dsthash_dst const*,int) ;

__attribute__((used)) static inline bool dst_cmp(const struct dsthash_ent *ent,
      const struct dsthash_dst *b)
{
 return !memcmp(&ent->dst, b, sizeof(ent->dst));
}
