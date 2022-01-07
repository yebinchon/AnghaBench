
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_writedata {TYPE_1__* cfile; } ;
struct TYPE_2__ {scalar_t__ invalidHandle; } ;


 int EAGAIN ;
 int cifs_async_writev (struct cifs_writedata*) ;
 int cifs_reopen_file (TYPE_1__*,int) ;

__attribute__((used)) static int
cifs_uncached_retry_writev(struct cifs_writedata *wdata)
{
 int rc;

 do {
  if (wdata->cfile->invalidHandle) {
   rc = cifs_reopen_file(wdata->cfile, 0);
   if (rc != 0)
    continue;
  }
  rc = cifs_async_writev(wdata);
 } while (rc == -EAGAIN);

 return rc;
}
