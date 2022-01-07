
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {size_t wbuf_len; size_t wbuf_pagesize; scalar_t__ wbuf; } ;


 int memcpy (scalar_t__,int const*,size_t) ;

__attribute__((used)) static size_t jffs2_fill_wbuf(struct jffs2_sb_info *c, const uint8_t *buf,
         size_t len)
{
 if (len && !c->wbuf_len && (len >= c->wbuf_pagesize))
  return 0;

 if (len > (c->wbuf_pagesize - c->wbuf_len))
  len = c->wbuf_pagesize - c->wbuf_len;
 memcpy(c->wbuf + c->wbuf_len, buf, len);
 c->wbuf_len += (uint32_t) len;
 return len;
}
