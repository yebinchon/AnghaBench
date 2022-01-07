
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigbuf ;
 scalar_t__ sigbuf_valid ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void
sigalrm_handler(int signo)
{
 (void)signo;
 if (sigbuf_valid)
  siglongjmp(sigbuf, 1);
}
