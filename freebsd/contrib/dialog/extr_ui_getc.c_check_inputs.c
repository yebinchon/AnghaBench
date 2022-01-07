
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
struct TYPE_4__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_3__ {scalar_t__ input; int input_ready; struct TYPE_3__* next; } ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int FALSE ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int TRUE ;
 int WTIMEOUT_VAL ;
 TYPE_2__ dialog_state ;
 int fileno (scalar_t__) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
check_inputs(void)
{
    DIALOG_CALLBACK *p;
    fd_set read_fds;
    struct timeval test;
    int last_fd = -1;
    int fd;
    int found;
    int result = -1;

    if ((p = dialog_state.getc_callbacks) != 0) {
 FD_ZERO(&read_fds);

 while (p != 0) {
     p->input_ready = FALSE;
     if (p->input != 0 && (fd = fileno(p->input)) >= 0) {
  FD_SET(fd, &read_fds);
  if (last_fd < fd)
      last_fd = fd;
     }
     p = p->next;
 }

 test.tv_sec = 0;
 test.tv_usec = WTIMEOUT_VAL * 1000;
 found = select(last_fd + 1, &read_fds,
         (fd_set *) 0,
         (fd_set *) 0,
         &test);

 if (found > 0) {
     for (p = dialog_state.getc_callbacks; p != 0; p = p->next) {
  if (p->input != 0
      && (fd = fileno(p->input)) >= 0
      && FD_ISSET(fd, &read_fds)) {
      p->input_ready = TRUE;
      result = fd;
  }
     }
 }
    }

    return result;
}
