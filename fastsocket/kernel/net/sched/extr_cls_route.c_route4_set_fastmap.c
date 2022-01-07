
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct route4_head {TYPE_1__* fastmap; } ;
struct route4_filter {int dummy; } ;
struct TYPE_2__ {int iif; struct route4_filter* filter; int id; } ;


 int route4_fastmap_hash (int ,int) ;

__attribute__((used)) static inline void
route4_set_fastmap(struct route4_head *head, u32 id, int iif,
     struct route4_filter *f)
{
 int h = route4_fastmap_hash(id, iif);
 head->fastmap[h].id = id;
 head->fastmap[h].iif = iif;
 head->fastmap[h].filter = f;
}
