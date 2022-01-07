
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int ssize_t ;
typedef int ctf_buf_t ;


 int ctf_buf_cur (int *) ;
 int ctf_buf_write (int *,char const*,int) ;

__attribute__((used)) static void
pad_buffer(ctf_buf_t *buf, int align)
{
 uint_t cur = ctf_buf_cur(buf);
 ssize_t topad = (align - (cur % align)) % align;
 static const char pad[8] = { 0 };

 while (topad > 0) {
  ctf_buf_write(buf, pad, (topad > 8 ? 8 : topad));
  topad -= 8;
 }
}
