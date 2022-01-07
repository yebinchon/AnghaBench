
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buf; } ;


 int INTOFF ;
 int INTON ;
 TYPE_1__* parsefile ;
 int parselleft ;
 char const* parsenextc ;
 int parsenleft ;
 int plinno ;
 int pushfile () ;
 int strlen (char const*) ;

void
setinputstring(const char *string, int push)
{
 INTOFF;
 if (push)
  pushfile();
 parsenextc = string;
 parselleft = parsenleft = strlen(string);
 parsefile->buf = ((void*)0);
 plinno = 1;
 INTON;
}
