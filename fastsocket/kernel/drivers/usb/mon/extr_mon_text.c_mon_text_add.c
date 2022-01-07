
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int busnum; } ;
struct mon_bus {struct dentry* dent_t; struct dentry* dent_u; struct dentry* dent_s; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_file (char*,int,int ,struct mon_bus*,int *) ;
 int debugfs_remove (struct dentry*) ;
 int mon_dir ;
 int mon_fops_stat ;
 int mon_fops_text_t ;
 int mon_fops_text_u ;
 int snprintf (char*,int,char*,int) ;

int mon_text_add(struct mon_bus *mbus, const struct usb_bus *ubus)
{
 struct dentry *d;
 enum { NAMESZ = 10 };
 char name[NAMESZ];
 int busnum = ubus? ubus->busnum: 0;
 int rc;

 if (ubus != ((void*)0)) {
  rc = snprintf(name, NAMESZ, "%dt", busnum);
  if (rc <= 0 || rc >= NAMESZ)
   goto err_print_t;
  d = debugfs_create_file(name, 0600, mon_dir, mbus,
            &mon_fops_text_t);
  if (d == ((void*)0))
   goto err_create_t;
  mbus->dent_t = d;
 }

 rc = snprintf(name, NAMESZ, "%du", busnum);
 if (rc <= 0 || rc >= NAMESZ)
  goto err_print_u;
 d = debugfs_create_file(name, 0600, mon_dir, mbus, &mon_fops_text_u);
 if (d == ((void*)0))
  goto err_create_u;
 mbus->dent_u = d;

 rc = snprintf(name, NAMESZ, "%ds", busnum);
 if (rc <= 0 || rc >= NAMESZ)
  goto err_print_s;
 d = debugfs_create_file(name, 0600, mon_dir, mbus, &mon_fops_stat);
 if (d == ((void*)0))
  goto err_create_s;
 mbus->dent_s = d;

 return 1;

err_create_s:
err_print_s:
 debugfs_remove(mbus->dent_u);
 mbus->dent_u = ((void*)0);
err_create_u:
err_print_u:
 if (ubus != ((void*)0)) {
  debugfs_remove(mbus->dent_t);
  mbus->dent_t = ((void*)0);
 }
err_create_t:
err_print_t:
 return 0;
}
