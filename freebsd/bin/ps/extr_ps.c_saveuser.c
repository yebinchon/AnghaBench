
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ki_valid; char* ki_args; int * ki_env; TYPE_1__* ki_p; } ;
struct TYPE_6__ {int ki_flag; scalar_t__ ki_stat; char* ki_comm; char* ki_tdname; int * ki_args; } ;
typedef TYPE_2__ KINFO ;


 int MAXCOMLEN ;
 int P_INMEM ;
 scalar_t__ SZOMB ;
 scalar_t__ UREADOK (TYPE_2__*) ;
 int asprintf (char**,char*,char*) ;
 void* fmt (int ,TYPE_2__*,char*,char*,int ) ;
 int kvm_getargv ;
 int kvm_getenvv ;
 scalar_t__ needcomm ;
 scalar_t__ needenv ;
 void* strdup (char*) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static void
saveuser(KINFO *ki)
{
 char *argsp;

 if (ki->ki_p->ki_flag & P_INMEM) {






  ki->ki_valid = 1;
 } else
  ki->ki_valid = 0;



 if (needcomm) {
  if (ki->ki_p->ki_stat == SZOMB)
   ki->ki_args = strdup("<defunct>");
  else if (UREADOK(ki) || (ki->ki_p->ki_args != ((void*)0)))
   ki->ki_args = fmt(kvm_getargv, ki,
       ki->ki_p->ki_comm, ki->ki_p->ki_tdname, MAXCOMLEN);
  else {
   asprintf(&argsp, "(%s)", ki->ki_p->ki_comm);
   ki->ki_args = argsp;
  }
  if (ki->ki_args == ((void*)0))
   xo_errx(1, "malloc failed");
 } else {
  ki->ki_args = ((void*)0);
 }
 if (needenv) {
  if (UREADOK(ki))
   ki->ki_env = fmt(kvm_getenvv, ki,
       (char *)((void*)0), (char *)((void*)0), 0);
  else
   ki->ki_env = strdup("()");
  if (ki->ki_env == ((void*)0))
   xo_errx(1, "malloc failed");
 } else {
  ki->ki_env = ((void*)0);
 }
}
