
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmac_telem {scalar_t__ match; int timeout; } ;


 scalar_t__ MAC_FILLED ;
 scalar_t__ MAC_UNSET ;
 int ip_set_timeout_expired (int ) ;

__attribute__((used)) static inline int
bitmap_ipmac_exist(const struct ipmac_telem *elem)
{
 return elem->match == MAC_UNSET ||
        (elem->match == MAC_FILLED &&
  !ip_set_timeout_expired(elem->timeout));
}
