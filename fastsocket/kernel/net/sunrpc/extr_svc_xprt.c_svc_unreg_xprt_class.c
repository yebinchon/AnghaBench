
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt_class {int xcl_list; int xcl_name; } ;


 int dprintk (char*,int ) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int svc_xprt_class_lock ;

void svc_unreg_xprt_class(struct svc_xprt_class *xcl)
{
 dprintk("svc: Removing svc transport class '%s'\n", xcl->xcl_name);
 spin_lock(&svc_xprt_class_lock);
 list_del_init(&xcl->xcl_list);
 spin_unlock(&svc_xprt_class_lock);
}
