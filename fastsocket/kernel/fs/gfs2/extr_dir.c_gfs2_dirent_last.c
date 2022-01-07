
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char* name; int len; } ;
struct gfs2_dirent {int de_rec_len; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static int gfs2_dirent_last(const struct gfs2_dirent *dent,
       const struct qstr *name,
       void *opaque)
{
 const char *start = name->name;
 const char *end = (const char *)dent + be16_to_cpu(dent->de_rec_len);
 if (name->len == (end - start))
  return 1;
 return 0;
}
