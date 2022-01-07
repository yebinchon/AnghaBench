
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SIGALRM ;
 int SIG_DFL ;
 int before_rpc ;
 int longjmp (int ,int) ;
 int signal (int ,int ) ;

RETSIGTYPE
create_timeout(int sig)
{
  signal(SIGALRM, SIG_DFL);
  longjmp(before_rpc, 1);
}
