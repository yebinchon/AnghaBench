
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int regmatch_t ;
struct TYPE_3__ {scalar_t__ rc; int rx; } ;
typedef TYPE_1__ file_regex_t ;


 int assert (int) ;
 int memset (int *,int ,size_t) ;
 int regexec (int *,char const*,size_t,int *,int) ;

int
file_regexec(file_regex_t *rx, const char *str, size_t nmatch,
    regmatch_t* pmatch, int eflags)
{
 assert(rx->rc == 0);

 memset(pmatch, 0, nmatch * sizeof(*pmatch));
 return regexec(&rx->rx, str, nmatch, pmatch, eflags);
}
