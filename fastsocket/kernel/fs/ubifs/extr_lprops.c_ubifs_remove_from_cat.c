
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int list; } ;
struct ubifs_info {int freeable_cnt; } ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int remove_from_lpt_heap (struct ubifs_info*,struct ubifs_lprops*,int) ;
 int ubifs_assert (int) ;

__attribute__((used)) static void ubifs_remove_from_cat(struct ubifs_info *c,
      struct ubifs_lprops *lprops, int cat)
{
 switch (cat) {
 case 134:
 case 133:
 case 130:
  remove_from_lpt_heap(c, lprops, cat);
  break;
 case 129:
  c->freeable_cnt -= 1;
  ubifs_assert(c->freeable_cnt >= 0);

 case 128:
 case 132:
 case 131:
  ubifs_assert(!list_empty(&lprops->list));
  list_del(&lprops->list);
  break;
 default:
  ubifs_assert(0);
 }
}
