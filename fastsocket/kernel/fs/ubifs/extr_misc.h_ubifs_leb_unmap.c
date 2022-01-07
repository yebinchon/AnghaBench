
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; scalar_t__ ro_media; } ;


 int EROFS ;
 int ubi_leb_unmap (int ,int) ;
 int ubifs_err (char*,int,int) ;

__attribute__((used)) static inline int ubifs_leb_unmap(const struct ubifs_info *c, int lnum)
{
 int err;

 if (c->ro_media)
  return -EROFS;
 err = ubi_leb_unmap(c->ubi, lnum);
 if (err) {
  ubifs_err("unmap LEB %d failed, error %d", lnum, err);
  return err;
 }

 return 0;
}
