
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int BUG_ON (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int * filp_open (char*,int,int ) ;
 int nfs4_reset_creds (struct cred const*) ;
 int nfs4_save_creds (struct cred const**) ;
 int printk (char*,...) ;
 int * rec_file ;

void
nfsd4_init_recdir(char *rec_dirname)
{
 const struct cred *original_cred;
 int status;

 printk("NFSD: Using %s as the NFSv4 state recovery directory\n",
   rec_dirname);

 BUG_ON(rec_file);

 status = nfs4_save_creds(&original_cred);
 if (status < 0) {
  printk("NFSD: Unable to change credentials to find recovery"
         " directory: error %d\n",
         status);
  return;
 }

 rec_file = filp_open(rec_dirname, O_RDONLY | O_DIRECTORY, 0);
 if (IS_ERR(rec_file)) {
  printk("NFSD: unable to find recovery directory %s\n",
    rec_dirname);
  rec_file = ((void*)0);
 }

 nfs4_reset_creds(original_cred);
}
