
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int _exit (int) ;
 scalar_t__ masterpid ;
 scalar_t__ wait (int*) ;

__attribute__((used)) static RETSIGTYPE
reaper(int signum)
{
  int result;

  if (wait(&result) == masterpid) {
    _exit(4);
  }
}
