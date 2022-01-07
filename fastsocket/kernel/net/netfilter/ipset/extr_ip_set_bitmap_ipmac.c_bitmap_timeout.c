
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipmac_telem {int timeout; } ;
struct bitmap_ipmac {int dummy; } ;


 struct ipmac_telem* bitmap_ipmac_elem (struct bitmap_ipmac const*,int ) ;
 int ip_set_timeout_test (int ) ;

__attribute__((used)) static inline bool
bitmap_timeout(const struct bitmap_ipmac *map, u32 id)
{
 const struct ipmac_telem *elem = bitmap_ipmac_elem(map, id);

 return ip_set_timeout_test(elem->timeout);
}
