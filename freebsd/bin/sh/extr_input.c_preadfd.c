
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; int buf; } ;


 int BUFSIZ ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ el ;
 char* el_gets (scalar_t__,int*) ;
 int el_resize (scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int ,int ,int) ;
 int memcpy (int ,char const*,int) ;
 int out2fmt_flush (char*) ;
 TYPE_1__* parsefile ;
 int parsenextc ;
 int read (scalar_t__,int ,int) ;

__attribute__((used)) static int
preadfd(void)
{
 int nr;
 parsenextc = parsefile->buf;

retry:

 if (parsefile->fd == 0 && el) {
  static const char *rl_cp;
  static int el_len;

  if (rl_cp == ((void*)0)) {
   el_resize(el);
   rl_cp = el_gets(el, &el_len);
  }
  if (rl_cp == ((void*)0))
   nr = el_len == 0 ? 0 : -1;
  else {
   nr = el_len;
   if (nr > BUFSIZ)
    nr = BUFSIZ;
   memcpy(parsefile->buf, rl_cp, nr);
   if (nr != el_len) {
    el_len -= nr;
    rl_cp += nr;
   } else
    rl_cp = ((void*)0);
  }
 } else

  nr = read(parsefile->fd, parsefile->buf, BUFSIZ);

 if (nr <= 0) {
                if (nr < 0) {
                        if (errno == EINTR)
                                goto retry;
                        if (parsefile->fd == 0 && errno == EWOULDBLOCK) {
                                int flags = fcntl(0, F_GETFL, 0);
                                if (flags >= 0 && flags & O_NONBLOCK) {
                                        flags &=~ O_NONBLOCK;
                                        if (fcntl(0, F_SETFL, flags) >= 0) {
      out2fmt_flush("sh: turning off NDELAY mode\n");
                                                goto retry;
                                        }
                                }
                        }
                }
                nr = -1;
 }
 return nr;
}
