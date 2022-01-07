
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_copy_state {int len; } ;


 int fuse_copy_do (struct fuse_copy_state*,void**,unsigned int*) ;
 int fuse_copy_fill (struct fuse_copy_state*) ;

__attribute__((used)) static int fuse_copy_one(struct fuse_copy_state *cs, void *val, unsigned size)
{
 while (size) {
  if (!cs->len) {
   int err = fuse_copy_fill(cs);
   if (err)
    return err;
  }
  fuse_copy_do(cs, &val, &size);
 }
 return 0;
}
