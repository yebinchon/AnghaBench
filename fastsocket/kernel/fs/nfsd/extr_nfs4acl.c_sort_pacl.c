
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int a_count; TYPE_1__* a_entries; } ;
struct TYPE_2__ {scalar_t__ e_tag; } ;


 scalar_t__ ACL_GROUP ;
 scalar_t__ ACL_GROUP_OBJ ;
 scalar_t__ ACL_USER ;
 int BUG_ON (int) ;
 int sort_pacl_range (struct posix_acl*,int,int) ;

__attribute__((used)) static void
sort_pacl(struct posix_acl *pacl)
{


 int i, j;

 if (pacl->a_count <= 4)
  return;
 i = 1;
 while (pacl->a_entries[i].e_tag == ACL_USER)
  i++;
 sort_pacl_range(pacl, 1, i-1);

 BUG_ON(pacl->a_entries[i].e_tag != ACL_GROUP_OBJ);
 j = ++i;
 while (pacl->a_entries[j].e_tag == ACL_GROUP)
  j++;
 sort_pacl_range(pacl, i, j-1);
 return;
}
