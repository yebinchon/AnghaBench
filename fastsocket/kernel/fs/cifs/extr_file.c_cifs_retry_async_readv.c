
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_readdata {TYPE_1__* cfile; } ;
struct TYPE_2__ {scalar_t__ invalidHandle; } ;


 int EAGAIN ;
 int cifs_async_readv (struct cifs_readdata*) ;
 int cifs_reopen_file (TYPE_1__*,int) ;

__attribute__((used)) static int
cifs_retry_async_readv(struct cifs_readdata *rdata)
{
 int rc;

 do {
  if (rdata->cfile->invalidHandle) {
   rc = cifs_reopen_file(rdata->cfile, 1);
   if (rc != 0)
    continue;
  }
  rc = cifs_async_readv(rdata);
 } while (rc == -EAGAIN);

 return rc;
}
