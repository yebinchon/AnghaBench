
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;
struct TYPE_6__ {TYPE_4__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;


 int load_recdir ;
 int nfsd4_list_rec_dir (TYPE_4__*,int ) ;
 int printk (char*,int ) ;
 TYPE_3__* rec_file ;

int
nfsd4_recdir_load(void) {
 int status;

 if (!rec_file)
  return 0;

 status = nfsd4_list_rec_dir(rec_file->f_path.dentry, load_recdir);
 if (status)
  printk("nfsd4: failed loading clients from recovery"
   " directory %s\n", rec_file->f_path.dentry->d_name.name);
 return status;
}
