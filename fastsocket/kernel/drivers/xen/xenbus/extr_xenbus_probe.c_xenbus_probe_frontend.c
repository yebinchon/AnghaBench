
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;


 int DPRINTK (char*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,char const*,char const*) ;
 int kfree (char*) ;
 TYPE_1__ xenbus_frontend ;
 int xenbus_probe_node (TYPE_1__*,char const*,char*) ;

__attribute__((used)) static int xenbus_probe_frontend(const char *type, const char *name)
{
 char *nodename;
 int err;

 nodename = kasprintf(GFP_KERNEL, "%s/%s/%s",
        xenbus_frontend.root, type, name);
 if (!nodename)
  return -ENOMEM;

 DPRINTK("%s", nodename);

 err = xenbus_probe_node(&xenbus_frontend, type, nodename);
 kfree(nodename);
 return err;
}
