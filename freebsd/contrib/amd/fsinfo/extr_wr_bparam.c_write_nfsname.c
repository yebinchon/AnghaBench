
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* f_volname; TYPE_3__* f_ref; } ;
typedef TYPE_4__ fsmount ;
struct TYPE_8__ {TYPE_2__* m_dk; } ;
struct TYPE_7__ {TYPE_1__* d_host; } ;
struct TYPE_6__ {int h_hostname; } ;
typedef int FILE ;


 int XFREE (char*) ;
 int domain_strip (char*,char*) ;
 int fprintf (int *,char*,char*,char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static int
write_nfsname(FILE *ef, fsmount *fp, char *hn)
{
  int errors = 0;
  char *h = xstrdup(fp->f_ref->m_dk->d_host->h_hostname);

 domain_strip(h, hn);
  fprintf(ef, "%s:%s", h, fp->f_volname);
  XFREE(h);
  return errors;
}
