
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* f_volname; char* f_localname; char* f_fstype; char* f_opts; int f_from; TYPE_3__* f_ref; } ;
typedef TYPE_4__ fsmount ;
struct TYPE_8__ {TYPE_2__* m_dk; } ;
struct TYPE_7__ {TYPE_1__* d_host; } ;
struct TYPE_6__ {int h_hostname; } ;
typedef int FILE ;


 int XFREE (char*) ;
 int domain_strip (char*,char*) ;
 int fprintf (int *,char*,char*,char*,char*,char*,char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static void
write_generic_dkrmount(FILE *ef, char *hn, fsmount *fp)
{
  char *h;

  if (fp->f_ref) {
    h = xstrdup(fp->f_ref->m_dk->d_host->h_hostname);
  } else {
    h = xstrdup(fp->f_from);
  }
  domain_strip(h, hn);
  fprintf(ef, "%s:%s %s %s %s 0 0\n",
   h,
   fp->f_volname,
   fp->f_localname,
   fp->f_fstype,
   fp->f_opts);
  XFREE(h);
}
