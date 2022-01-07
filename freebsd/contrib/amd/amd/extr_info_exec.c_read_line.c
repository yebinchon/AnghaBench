
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_map_timeout; } ;


 scalar_t__ fgets_timed (char*,int,int,int ) ;
 TYPE_1__ gopt ;
 int strlen (char*) ;

__attribute__((used)) static int
read_line(char *buf, int size, int fd)
{
  int done = 0;

  while (fgets_timed(buf, size, fd, gopt.exec_map_timeout)) {
    int len = strlen(buf);
    done += len;
    if (len > 1 && buf[len - 2] == '\\' &&
        buf[len - 1] == '\n') {
      buf += len - 2;
      size -= len - 2;
      *buf = '\n';
      buf[1] = '\0';
    } else {
      return done;
    }
  }

  return done;
}
