
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int XS_MKDIR ;
 char* join (char const*,char const*) ;
 int kfree (char*) ;
 int xs_error (int ) ;
 int xs_single (struct xenbus_transaction,int ,char*,int *) ;

int xenbus_mkdir(struct xenbus_transaction t,
   const char *dir, const char *node)
{
 char *path;
 int ret;

 path = join(dir, node);
 if (IS_ERR(path))
  return PTR_ERR(path);

 ret = xs_error(xs_single(t, XS_MKDIR, path, ((void*)0)));
 kfree(path);
 return ret;
}
