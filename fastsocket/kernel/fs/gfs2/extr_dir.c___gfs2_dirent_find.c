
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {scalar_t__ hash; scalar_t__ len; int name; } ;
struct gfs2_dirent {int de_name_len; int de_hash; } ;


 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int gfs2_dirent_sentinel (struct gfs2_dirent const*) ;
 scalar_t__ memcmp (struct gfs2_dirent const*,int ,scalar_t__) ;

__attribute__((used)) static inline int __gfs2_dirent_find(const struct gfs2_dirent *dent,
         const struct qstr *name, int ret)
{
 if (!gfs2_dirent_sentinel(dent) &&
     be32_to_cpu(dent->de_hash) == name->hash &&
     be16_to_cpu(dent->de_name_len) == name->len &&
     memcmp(dent+1, name->name, name->len) == 0)
  return ret;
 return 0;
}
