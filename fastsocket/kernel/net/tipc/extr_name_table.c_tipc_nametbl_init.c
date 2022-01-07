
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hlist_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ local_publ_count; int types; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int kcalloc (int ,int,int ) ;
 TYPE_1__ table ;
 int tipc_nametbl_size ;

int tipc_nametbl_init(void)
{
 table.types = kcalloc(tipc_nametbl_size, sizeof(struct hlist_head),
         GFP_ATOMIC);
 if (!table.types)
  return -ENOMEM;

 table.local_publ_count = 0;
 return 0;
}
