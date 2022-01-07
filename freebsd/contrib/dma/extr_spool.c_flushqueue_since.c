
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct stat {TYPE_1__ st_mtim; } ;
struct TYPE_4__ {int spooldir; } ;


 int SPOOL_FLUSHFILE ;
 scalar_t__ asprintf (char**,char*,int ,int ) ;
 TYPE_2__ config ;
 int free (char*) ;
 scalar_t__ gettimeofday (struct timeval*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;

int
flushqueue_since(unsigned int period)
{
        struct stat st;
 struct timeval now;
        char *flushfn = ((void*)0);

 if (asprintf(&flushfn, "%s/%s", config.spooldir, SPOOL_FLUSHFILE) < 0)
  return (0);
 if (stat(flushfn, &st) < 0) {
  free(flushfn);
  return (0);
 }
 free(flushfn);
 flushfn = ((void*)0);
 if (gettimeofday(&now, 0) != 0)
  return (0);


 if (st.st_mtim.tv_sec + (int)period >= now.tv_sec)
  return (1);
 else
  return (0);
}
