
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ipportnet6_elem {int dummy; } ;


 int memcpy (struct hash_ipportnet6_elem*,struct hash_ipportnet6_elem const*,int) ;

__attribute__((used)) static inline void
hash_ipportnet6_data_copy(struct hash_ipportnet6_elem *dst,
     const struct hash_ipportnet6_elem *src)
{
 memcpy(dst, src, sizeof(*dst));
}
