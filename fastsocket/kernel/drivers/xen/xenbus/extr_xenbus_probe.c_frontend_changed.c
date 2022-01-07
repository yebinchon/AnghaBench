
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_watch {int dummy; } ;


 int DPRINTK (char*) ;
 size_t XS_WATCH_PATH ;
 int xenbus_dev_changed (char const*,int *) ;
 int xenbus_frontend ;

__attribute__((used)) static void frontend_changed(struct xenbus_watch *watch,
        const char **vec, unsigned int len)
{
 DPRINTK("");

 xenbus_dev_changed(vec[XS_WATCH_PATH], &xenbus_frontend);
}
