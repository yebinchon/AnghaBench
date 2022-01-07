
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int min_io_size; } ;
struct ubifs_ch {int len; } ;


 int ALIGN (int,int ) ;
 int EUCLEAN ;
 int UBIFS_CH_SZ ;
 int dbg_rcvry (char*,int,int) ;
 scalar_t__ is_empty (void*,int) ;
 int le32_to_cpu (int ) ;
 int ubifs_check_node (struct ubifs_info const*,void*,int,int,int,int ) ;

__attribute__((used)) static int no_more_nodes(const struct ubifs_info *c, void *buf, int len,
   int lnum, int offs)
{
 struct ubifs_ch *ch = buf;
 int skip, dlen = le32_to_cpu(ch->len);


 skip = ALIGN(offs + UBIFS_CH_SZ, c->min_io_size) - offs;
 if (is_empty(buf + skip, len - skip))
  return 1;




 if (ubifs_check_node(c, buf, lnum, offs, 1, 0) != -EUCLEAN) {
  dbg_rcvry("unexpected bad common header at %d:%d", lnum, offs);
  return 0;
 }

 skip = ALIGN(offs + dlen, c->min_io_size) - offs;

 if (is_empty(buf + skip, len - skip))
  return 1;
 dbg_rcvry("unexpected data at %d:%d", lnum, offs + skip);
 return 0;
}
