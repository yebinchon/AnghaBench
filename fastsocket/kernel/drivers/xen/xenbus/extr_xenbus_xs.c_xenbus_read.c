
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int XS_READ ;
 char* join (char const*,char const*) ;
 int kfree (char*) ;
 void* xs_single (struct xenbus_transaction,int ,char*,unsigned int*) ;

void *xenbus_read(struct xenbus_transaction t,
    const char *dir, const char *node, unsigned int *len)
{
 char *path;
 void *ret;

 path = join(dir, node);
 if (IS_ERR(path))
  return (void *)path;

 ret = xs_single(t, XS_READ, path, len);
 kfree(path);
 return ret;
}
