
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct limits {scalar_t__ factor; } ;
typedef scalar_t__ rlim_t ;
typedef int intmax_t ;
typedef enum limithow { ____Placeholder_limithow } limithow ;


 int HARD ;
 scalar_t__ RLIM_INFINITY ;
 int SOFT ;
 int out1fmt (char*,int ) ;
 int out1str (char*) ;

__attribute__((used)) static void
printlimit(enum limithow how, const struct rlimit *limit,
    const struct limits *l)
{
 rlim_t val = 0;

 if (how & SOFT)
  val = limit->rlim_cur;
 else if (how & HARD)
  val = limit->rlim_max;
 if (val == RLIM_INFINITY)
  out1str("unlimited\n");
 else
 {
  val /= l->factor;
  out1fmt("%jd\n", (intmax_t)val);
 }
}
