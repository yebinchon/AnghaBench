
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct kvec {unsigned char* iov_base; size_t iov_len; } ;
struct jffs2_sb_info {TYPE_1__* mtd; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,scalar_t__,size_t,size_t*,int const*) ;} ;


 scalar_t__ jffs2_sum_active () ;
 int jffs2_sum_add_kvec (struct jffs2_sb_info*,struct kvec*,int,int ) ;
 int stub1 (TYPE_1__*,scalar_t__,size_t,size_t*,int const*) ;

int jffs2_flash_direct_write(struct jffs2_sb_info *c, loff_t ofs, size_t len,
   size_t *retlen, const u_char *buf)
{
 int ret;
 ret = c->mtd->write(c->mtd, ofs, len, retlen, buf);

 if (jffs2_sum_active()) {
  struct kvec vecs[1];
  int res;

  vecs[0].iov_base = (unsigned char *) buf;
  vecs[0].iov_len = len;

  res = jffs2_sum_add_kvec(c, vecs, 1, (uint32_t) ofs);
  if (res) {
   return res;
  }
 }
 return ret;
}
