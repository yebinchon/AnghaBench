
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ltab_sz; int ltab_offs; int ltab_lnum; int ubi; } ;


 int ENOMEM ;
 int ubi_read (int ,int ,void*,int ,int ) ;
 int unpack_ltab (struct ubifs_info*,void*) ;
 int vfree (void*) ;
 void* vmalloc (int ) ;

__attribute__((used)) static int read_ltab(struct ubifs_info *c)
{
 int err;
 void *buf;

 buf = vmalloc(c->ltab_sz);
 if (!buf)
  return -ENOMEM;
 err = ubi_read(c->ubi, c->ltab_lnum, buf, c->ltab_offs, c->ltab_sz);
 if (err)
  goto out;
 err = unpack_ltab(c, buf);
out:
 vfree(buf);
 return err;
}
