
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ubifs_update_one_lp (struct ubifs_info*,int,int,int,int ,int ) ;

__attribute__((used)) static int bud_wbuf_callback(struct ubifs_info *c, int lnum, int free, int pad)
{
 return ubifs_update_one_lp(c, lnum, free, pad, 0, 0);
}
