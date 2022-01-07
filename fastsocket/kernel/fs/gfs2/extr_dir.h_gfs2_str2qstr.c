
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char const* name; int len; int hash; } ;


 int gfs2_disk_hash (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void gfs2_str2qstr(struct qstr *name, const char *fname)
{
 name->name = fname;
 name->len = strlen(fname);
 name->hash = gfs2_disk_hash(name->name, name->len);
}
