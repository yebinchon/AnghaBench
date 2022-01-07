
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct set_telem {int timeout; } ;
struct list_set {int dummy; } ;


 int ip_set_timeout_test (int ) ;
 struct set_telem* list_set_telem (struct list_set const*,int ) ;

__attribute__((used)) static inline bool
list_set_timeout(const struct list_set *map, u32 id)
{
 const struct set_telem *elem = list_set_telem(map, id);

 return ip_set_timeout_test(elem->timeout);
}
