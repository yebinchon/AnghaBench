
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint_t ;
typedef int selfbuf ;
typedef int restorebuf ;
typedef int dtrace_recdesc_t ;
typedef int dtrace_probedata_t ;
struct TYPE_8__ {char* dt_sprintf_buf; int dt_stdout_fd; int * dt_freopen_fp; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {TYPE_3__* pfv_argv; } ;
typedef TYPE_2__ dt_pfargv_t ;
struct TYPE_10__ {scalar_t__ pfd_preflen; char* pfd_prefix; } ;
typedef TYPE_3__ dt_pfargd_t ;
typedef int FILE ;


 int DT_FREOPEN_RESTORE ;
 char* alloca (int) ;
 int assert (int) ;
 int dt_handle_liberr (TYPE_1__*,int const*,char*) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int dtrace_sprintf (TYPE_1__*,int *,void*,int const*,int ,void const*,size_t) ;
 int dup (int) ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int * freopen (char*,char*,int *) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strerror (int ) ;
 scalar_t__ strlen (char*) ;

int
dtrace_freopen(dtrace_hdl_t *dtp, FILE *fp, void *fmtdata,
    const dtrace_probedata_t *data, const dtrace_recdesc_t *recp,
    uint_t nrecs, const void *buf, size_t len)
{
 char selfbuf[40], restorebuf[40], *filename;
 FILE *nfp;
 int rval, errval;
 dt_pfargv_t *pfv = fmtdata;
 dt_pfargd_t *pfd = pfv->pfv_argv;

 rval = dtrace_sprintf(dtp, fp, fmtdata, recp, nrecs, buf, len);

 if (rval == -1 || fp == ((void*)0))
  return (rval);
 if (pfd->pfd_preflen != 0 &&
     strcmp(pfd->pfd_prefix, DT_FREOPEN_RESTORE) == 0) {





  assert(strcmp(dtp->dt_sprintf_buf, DT_FREOPEN_RESTORE) == 0);

  if (dtp->dt_freopen_fp == ((void*)0)) {







   return (rval);
  }






  (void) fclose(dtp->dt_freopen_fp);
  dtp->dt_freopen_fp = ((void*)0);

  return (rval);
 }

 if ((nfp = fopen(dtp->dt_sprintf_buf, "a")) == ((void*)0)) {
  char *msg = strerror(errno);
  char *faultstr;
  int len = 80;

  len += strlen(msg) + strlen(dtp->dt_sprintf_buf);
  faultstr = alloca(len);

  (void) snprintf(faultstr, len, "couldn't freopen() \"%s\": %s",
      dtp->dt_sprintf_buf, strerror(errno));

  if ((errval = dt_handle_liberr(dtp, data, faultstr)) == 0)
   return (rval);

  return (errval);
 }

 if (dtp->dt_freopen_fp != ((void*)0))
  (void) fclose(dtp->dt_freopen_fp);


 dtp->dt_freopen_fp = nfp;


 return (rval);
}
