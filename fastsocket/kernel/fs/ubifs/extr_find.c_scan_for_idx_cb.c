
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int flags; scalar_t__ free; scalar_t__ dirty; int lnum; } ;
struct ubifs_info {scalar_t__ leb_size; } ;
struct scan_data {int lnum; } ;


 int LPROPS_INDEX ;
 int LPROPS_TAKEN ;
 int LPT_SCAN_ADD ;
 int LPT_SCAN_CONTINUE ;
 int LPT_SCAN_STOP ;
 scalar_t__ valuable (struct ubifs_info*,struct ubifs_lprops const*) ;

__attribute__((used)) static int scan_for_idx_cb(struct ubifs_info *c,
      const struct ubifs_lprops *lprops, int in_tree,
      struct scan_data *data)
{
 int ret = LPT_SCAN_CONTINUE;


 if (lprops->flags & LPROPS_TAKEN)
  return LPT_SCAN_CONTINUE;

 if (!in_tree && valuable(c, lprops))
  ret |= LPT_SCAN_ADD;

 if (lprops->flags & LPROPS_INDEX)
  return ret;

 if (lprops->free + lprops->dirty != c->leb_size)
  return ret;





 data->lnum = lprops->lnum;
 return LPT_SCAN_ADD | LPT_SCAN_STOP;
}
