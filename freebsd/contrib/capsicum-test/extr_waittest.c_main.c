
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int WNOHANG ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int pdfork (int*,int ) ;
 int sleep (int) ;
 int stderr ;
 char* strerror (int) ;
 scalar_t__ waitpid (int,int*,int ) ;

int main() {
  int procfd;
  int rc = pdfork(&procfd, 0);
  if (rc < 0) {
    fprintf(stderr, "pdfork() failed rc=%d errno=%d %s\n", rc, errno, strerror(errno));
    exit(1);
  }
  if (rc == 0) {
    sleep(1);
    exit(123);
  }
  fprintf(stderr, "pdfork()ed child pid=%ld procfd=%d\n", (long)rc, procfd);
  sleep(2);
  pid_t child = waitpid(-1, &rc, WNOHANG);
  if (child == 0) {
    fprintf(stderr, "waitpid(): no completed child found\n");
  } else if (child < 0) {
    fprintf(stderr, "waitpid(): failed errno=%d %s\n", errno, strerror(errno));
  } else {
    fprintf(stderr, "waitpid(): found completed child %ld\n", (long)child);
  }
  return 0;
}
