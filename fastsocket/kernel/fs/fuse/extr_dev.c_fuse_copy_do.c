
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_copy_state {unsigned int len; void* buf; scalar_t__ write; } ;


 int memcpy (void*,void*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int fuse_copy_do(struct fuse_copy_state *cs, void **val, unsigned *size)
{
 unsigned ncpy = min(*size, cs->len);
 if (val) {
  if (cs->write)
   memcpy(cs->buf, *val, ncpy);
  else
   memcpy(*val, cs->buf, ncpy);
  *val += ncpy;
 }
 *size -= ncpy;
 cs->len -= ncpy;
 cs->buf += ncpy;
 return ncpy;
}
