
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int screen_output; } ;


 TYPE_1__ dialog_state ;
 int fileno (int ) ;
 scalar_t__ write (int,char*,size_t) ;

__attribute__((used)) static int
my_putc(int ch)
{
    char buffer[2];
    int fd = fileno(dialog_state.screen_output);

    buffer[0] = (char) ch;
    return (int) write(fd, buffer, (size_t) 1);
}
