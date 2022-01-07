
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; scalar_t__ ro_media; } ;


 int EROFS ;
 int ubi_leb_change (int ,int,void const*,int,int) ;
 int ubifs_err (char*,int,int,int) ;

__attribute__((used)) static inline int ubifs_leb_change(const struct ubifs_info *c, int lnum,
       const void *buf, int len, int dtype)
{
 int err;

 if (c->ro_media)
  return -EROFS;
 err = ubi_leb_change(c->ubi, lnum, buf, len, dtype);
 if (err) {
  ubifs_err("changing %d bytes in LEB %d, error %d",
     len, lnum, err);
  return err;
 }

 return 0;
}
