
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int getpid_ () ;
 int seen_sigchld ;
 int stderr ;

__attribute__((used)) static void handle_signal(int x) {
  fprintf(stderr, "[%d] received SIGCHLD\n", getpid_());
  seen_sigchld = 1;
}
