
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_SIGS ;
 scalar_t__ SIG_IGN ;
 int * initial_action ;
 scalar_t__ initial_handler (int) ;
 int sigaction (int,int *,int ) ;
 int signal (int,int ) ;
 int* sigs ;
 scalar_t__ sigs_trapped ;

__attribute__((used)) static void
untrapsig (int s)
{
  int i;

  if (sigs_trapped)
    for (i = 0; i < NUM_SIGS; i++)
      if ((! s || sigs[i] == s) && initial_handler (i) != SIG_IGN)
 {



   signal (sigs[i], initial_action[i]);

 }
}
