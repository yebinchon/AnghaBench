
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pathname; } ;
typedef TYPE_1__ procinfo ;


 int errmsg ;
 int perror_with_name (int ) ;
 int sprintf (int ,char*,char*,int,char*) ;

void
proc_error (procinfo *pi, char *func, int line)
{
  sprintf (errmsg, "procfs: %s line %d, %s", func, line, pi->pathname);
  perror_with_name (errmsg);
}
