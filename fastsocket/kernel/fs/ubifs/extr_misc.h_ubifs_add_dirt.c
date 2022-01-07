
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int LPROPS_NC ;
 int ubifs_update_one_lp (struct ubifs_info*,int,int ,int,int ,int ) ;

__attribute__((used)) static inline int ubifs_add_dirt(struct ubifs_info *c, int lnum, int dirty)
{
 return ubifs_update_one_lp(c, lnum, LPROPS_NC, dirty, 0, 0);
}
