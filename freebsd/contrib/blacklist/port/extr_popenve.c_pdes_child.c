
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int fd; int fp; struct pid* next; } ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 int dup2 (int,int) ;
 int fileno (int ) ;
 struct pid* pidlist ;

__attribute__((used)) static void
pdes_child(int *pdes, const char *type)
{
 struct pid *old;




 for (old = pidlist; old; old = old->next)



  (void)close(fileno(old->fp));


 if (type[0] == 'r') {
  (void)close(pdes[0]);
  if (pdes[1] != STDOUT_FILENO) {
   (void)dup2(pdes[1], STDOUT_FILENO);
   (void)close(pdes[1]);
  }
  if (type[1] == '+')
   (void)dup2(STDOUT_FILENO, STDIN_FILENO);
 } else {
  (void)close(pdes[1]);
  if (pdes[0] != STDIN_FILENO) {
   (void)dup2(pdes[0], STDIN_FILENO);
   (void)close(pdes[0]);
  }
 }
}
