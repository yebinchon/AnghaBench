
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; int hash; int * name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int full_name_hash (char const*,unsigned int) ;
 int * kmemdup (char const*,unsigned int,int ) ;
 int kmemleak_not_leak (int *) ;

__attribute__((used)) static
int nfs_readdir_make_qstr(struct qstr *string, const char *name, unsigned int len)
{
 string->len = len;
 string->name = kmemdup(name, len, GFP_KERNEL);
 if (string->name == ((void*)0))
  return -ENOMEM;




 kmemleak_not_leak(string->name);
 string->hash = full_name_hash(name, len);
 return 0;
}
