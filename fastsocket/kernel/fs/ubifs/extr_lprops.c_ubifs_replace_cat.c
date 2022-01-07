
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int flags; int list; } ;
struct ubifs_info {int dummy; } ;


 int LPROPS_CAT_MASK ;







 int list_replace (int *,int *) ;
 int lpt_heap_replace (struct ubifs_info*,struct ubifs_lprops*,struct ubifs_lprops*,int) ;
 int ubifs_assert (int ) ;

void ubifs_replace_cat(struct ubifs_info *c, struct ubifs_lprops *old_lprops,
         struct ubifs_lprops *new_lprops)
{
 int cat;

 cat = new_lprops->flags & LPROPS_CAT_MASK;
 switch (cat) {
 case 134:
 case 133:
 case 130:
  lpt_heap_replace(c, old_lprops, new_lprops, cat);
  break;
 case 128:
 case 132:
 case 129:
 case 131:
  list_replace(&old_lprops->list, &new_lprops->list);
  break;
 default:
  ubifs_assert(0);
 }
}
