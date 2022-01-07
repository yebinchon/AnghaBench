
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned char MUX (int ,unsigned char,unsigned char) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static void
cond_rotate(uint32_t ctl, unsigned char *buf, size_t len, size_t num)
{
 unsigned char tmp[64];
 size_t u, v;

 for (u = 0, v = num; u < len; u ++) {
  tmp[u] = MUX(ctl, buf[v], buf[u]);
  if (++ v == len) {
   v = 0;
  }
 }
 memcpy(buf, tmp, len);
}
