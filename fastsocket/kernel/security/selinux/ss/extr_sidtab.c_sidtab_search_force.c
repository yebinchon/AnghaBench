
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sidtab {int dummy; } ;
struct context {int dummy; } ;


 struct context* sidtab_search_core (struct sidtab*,int ,int) ;

struct context *sidtab_search_force(struct sidtab *s, u32 sid)
{
 return sidtab_search_core(s, sid, 1);
}
