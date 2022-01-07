
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dr ;
struct TYPE_7__ {int ddr_type; } ;
typedef TYPE_1__ dmu_diff_record_t ;
struct TYPE_8__ {scalar_t__ zerr; int errbuf; int datafd; int outputfd; } ;
typedef TYPE_2__ differ_info_t ;
typedef int FILE ;


 int ASSERT (int) ;


 scalar_t__ EPIPE ;
 int TEXT_DOMAIN ;
 int close (int ) ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fdopen (int ,char*) ;
 int read (int ,char*,int) ;
 int snprintf (int ,int,char*) ;
 int strerror_r (scalar_t__,int ,int) ;
 int write_free_diffs (int *,TYPE_2__*,TYPE_1__*) ;
 int write_inuse_diffs (int *,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void *
differ(void *arg)
{
 differ_info_t *di = arg;
 dmu_diff_record_t dr;
 FILE *ofp;
 int err = 0;

 if ((ofp = fdopen(di->outputfd, "w")) == ((void*)0)) {
  di->zerr = errno;
  (void) strerror_r(errno, di->errbuf, sizeof (di->errbuf));
  (void) close(di->datafd);
  return ((void *)-1);
 }

 for (;;) {
  char *cp = (char *)&dr;
  int len = sizeof (dr);
  int rv;

  do {
   rv = read(di->datafd, cp, len);
   cp += rv;
   len -= rv;
  } while (len > 0 && rv > 0);

  if (rv < 0 || (rv == 0 && len != sizeof (dr))) {
   di->zerr = EPIPE;
   break;
  } else if (rv == 0) {

   break;
  }

  switch (dr.ddr_type) {
  case 129:
   err = write_free_diffs(ofp, di, &dr);
   break;
  case 128:
   err = write_inuse_diffs(ofp, di, &dr);
   break;
  default:
   di->zerr = EPIPE;
   break;
  }

  if (err || di->zerr)
   break;
 }

 (void) fclose(ofp);
 (void) close(di->datafd);
 if (err)
  return ((void *)-1);
 if (di->zerr) {
  ASSERT(di->zerr == EPIPE);
  (void) snprintf(di->errbuf, sizeof (di->errbuf),
      dgettext(TEXT_DOMAIN,
      "Internal error: bad data from diff IOCTL"));
  return ((void *)-1);
 }
 return ((void *)0);
}
