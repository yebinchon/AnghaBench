
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {int head; scalar_t__ buf; int tail; } ;


 int CIRC_SPACE_TO_END (int,int ,int) ;
 int TI_WRITE_BUF_SIZE ;
 int memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) static int ti_buf_put(struct circ_buf *cb, const char *buf, int count)
{
 int c, ret = 0;

 while (1) {
  c = CIRC_SPACE_TO_END(cb->head, cb->tail, TI_WRITE_BUF_SIZE);
  if (count < c)
   c = count;
  if (c <= 0)
   break;
  memcpy(cb->buf + cb->head, buf, c);
  cb->head = (cb->head + c) & (TI_WRITE_BUF_SIZE-1);
  buf += c;
  count -= c;
  ret += c;
 }

 return ret;
}
