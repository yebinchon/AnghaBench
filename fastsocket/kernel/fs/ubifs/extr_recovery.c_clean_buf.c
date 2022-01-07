
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ leb_size; int min_io_size; } ;


 int ALIGN (int,int ) ;
 int dbg_rcvry (char*,int,int) ;
 int memset (void*,int,scalar_t__) ;
 int ubifs_assert (int) ;
 int ubifs_pad (struct ubifs_info const*,void*,int) ;

__attribute__((used)) static void clean_buf(const struct ubifs_info *c, void **buf, int lnum,
        int *offs, int *len)
{
 int empty_offs, pad_len;

 lnum = lnum;
 dbg_rcvry("cleaning corruption at %d:%d", lnum, *offs);

 ubifs_assert(!(*offs & 7));
 empty_offs = ALIGN(*offs, c->min_io_size);
 pad_len = empty_offs - *offs;
 ubifs_pad(c, *buf, pad_len);
 *offs += pad_len;
 *buf += pad_len;
 *len -= pad_len;
 memset(*buf, 0xff, c->leb_size - empty_offs);
}
