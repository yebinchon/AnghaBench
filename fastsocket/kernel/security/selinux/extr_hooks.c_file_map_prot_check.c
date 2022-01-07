
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;
struct cred {int dummy; } ;


 int FILE__EXECUTE ;
 int FILE__READ ;
 int FILE__WRITE ;
 int PROCESS__EXECMEM ;
 unsigned long PROT_EXEC ;
 unsigned long PROT_WRITE ;
 int cred_has_perm (struct cred const*,struct cred const*,int ) ;
 struct cred* current_cred () ;
 int file_has_perm (struct cred const*,struct file*,int ) ;

__attribute__((used)) static int file_map_prot_check(struct file *file, unsigned long prot, int shared)
{
 const struct cred *cred = current_cred();
 int rc = 0;


 if ((prot & PROT_EXEC) && (!file || (!shared && (prot & PROT_WRITE)))) {





  rc = cred_has_perm(cred, cred, PROCESS__EXECMEM);
  if (rc)
   goto error;
 }


 if (file) {

  u32 av = FILE__READ;


  if (shared && (prot & PROT_WRITE))
   av |= FILE__WRITE;

  if (prot & PROT_EXEC)
   av |= FILE__EXECUTE;

  return file_has_perm(cred, file, av);
 }

error:
 return rc;
}
