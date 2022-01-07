
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int leb_size; int min_io_size; } ;
struct ubifs_ch {int len; } ;


 int ALIGN (int,int) ;
 int UBI_SHORTTERM ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,void*,int) ;
 int next_log_lnum (struct ubifs_info*,int) ;
 int ubifs_leb_change (struct ubifs_info*,int,void*,int,int ) ;
 int ubifs_pad (struct ubifs_info*,void*,int) ;

__attribute__((used)) static int add_node(struct ubifs_info *c, void *buf, int *lnum, int *offs,
      void *node)
{
 struct ubifs_ch *ch = node;
 int len = le32_to_cpu(ch->len), remains = c->leb_size - *offs;

 if (len > remains) {
  int sz = ALIGN(*offs, c->min_io_size), err;

  ubifs_pad(c, buf + *offs, sz - *offs);
  err = ubifs_leb_change(c, *lnum, buf, sz, UBI_SHORTTERM);
  if (err)
   return err;
  *lnum = next_log_lnum(c, *lnum);
  *offs = 0;
 }
 memcpy(buf + *offs, node, len);
 *offs += ALIGN(len, 8);
 return 0;
}
