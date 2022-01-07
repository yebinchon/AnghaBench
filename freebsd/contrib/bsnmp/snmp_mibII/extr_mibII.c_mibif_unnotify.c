
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int * xnotify_mod; int * xnotify_data; int * xnotify; } ;



void
mibif_unnotify(void *arg)
{
 struct mibif *ifp = arg;

 ifp->xnotify = ((void*)0);
 ifp->xnotify_data = ((void*)0);
 ifp->xnotify_mod = ((void*)0);
}
