
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Eflag ;
 scalar_t__ Vflag ;
 int error (char*) ;
 int getgid () ;
 int getuid () ;
 scalar_t__* optval ;
 scalar_t__ privileged ;
 int setgid (int ) ;
 int setuid (int ) ;

__attribute__((used)) static void
setoptionbyindex(int idx, int val)
{
 if (&optval[idx] == &privileged && !val && privileged) {
  if (setgid(getgid()) == -1)
   error("setgid");
  if (setuid(getuid()) == -1)
   error("setuid");
 }
 optval[idx] = val;
 if (val) {

  if (&optval[idx] == &Vflag)
   Eflag = 0;
  else if (&optval[idx] == &Eflag)
   Vflag = 0;
 }
}
