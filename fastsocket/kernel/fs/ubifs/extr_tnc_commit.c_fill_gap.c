
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {struct ubifs_znode* cnext; int child_cnt; } ;
struct ubifs_info {int leb_size; int ileb_len; int min_io_size; scalar_t__ ileb_buf; struct ubifs_znode* enext; struct ubifs_znode* cnext; } ;


 void* ALIGN (int,int) ;
 int dbg_gc (char*,int,int,int,int,int,int) ;
 int make_idx_node (struct ubifs_info*,scalar_t__,struct ubifs_znode*,int,int,int) ;
 int ubifs_assert (int) ;
 int ubifs_idx_node_sz (struct ubifs_info*,int ) ;
 int ubifs_pad (struct ubifs_info*,scalar_t__,int) ;

__attribute__((used)) static int fill_gap(struct ubifs_info *c, int lnum, int gap_start, int gap_end,
      int *dirt)
{
 int len, gap_remains, gap_pos, written, pad_len;

 ubifs_assert((gap_start & 7) == 0);
 ubifs_assert((gap_end & 7) == 0);
 ubifs_assert(gap_end >= gap_start);

 gap_remains = gap_end - gap_start;
 if (!gap_remains)
  return 0;
 gap_pos = gap_start;
 written = 0;
 while (c->enext) {
  len = ubifs_idx_node_sz(c, c->enext->child_cnt);
  if (len < gap_remains) {
   struct ubifs_znode *znode = c->enext;
   const int alen = ALIGN(len, 8);
   int err;

   ubifs_assert(alen <= gap_remains);
   err = make_idx_node(c, c->ileb_buf + gap_pos, znode,
         lnum, gap_pos, len);
   if (err)
    return err;
   gap_remains -= alen;
   gap_pos += alen;
   c->enext = znode->cnext;
   if (c->enext == c->cnext)
    c->enext = ((void*)0);
   written += 1;
  } else
   break;
 }
 if (gap_end == c->leb_size) {
  c->ileb_len = ALIGN(gap_pos, c->min_io_size);

  pad_len = c->ileb_len - gap_pos;
 } else

  pad_len = gap_remains;
 dbg_gc("LEB %d:%d to %d len %d nodes written %d wasted bytes %d",
        lnum, gap_start, gap_end, gap_end - gap_start, written, pad_len);
 ubifs_pad(c, c->ileb_buf + gap_pos, pad_len);
 *dirt += pad_len;
 return written;
}
