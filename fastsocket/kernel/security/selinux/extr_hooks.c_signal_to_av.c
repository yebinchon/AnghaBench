
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PROCESS__SIGCHLD ;
 int PROCESS__SIGKILL ;
 int PROCESS__SIGNAL ;
 int PROCESS__SIGSTOP ;




__attribute__((used)) static inline u32 signal_to_av(int sig)
{
 u32 perm = 0;

 switch (sig) {
 case 130:

  perm = PROCESS__SIGCHLD;
  break;
 case 129:

  perm = PROCESS__SIGKILL;
  break;
 case 128:

  perm = PROCESS__SIGSTOP;
  break;
 default:

  perm = PROCESS__SIGNAL;
  break;
 }

 return perm;
}
