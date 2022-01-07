
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct magic_set {int dummy; } ;
struct TYPE_3__ {int pat; int rx; } ;
typedef TYPE_1__ file_regex_t ;
typedef int errmsg ;


 int file_magerror (struct magic_set*,char*,int,int ,char*) ;
 int regerror (int,int *,char*,int) ;

void
file_regerror(file_regex_t *rx, int rc, struct magic_set *ms)
{
 char errmsg[512];

 (void)regerror(rc, &rx->rx, errmsg, sizeof(errmsg));
 file_magerror(ms, "regex error %d for `%s', (%s)", rc, rx->pat,
     errmsg);
}
