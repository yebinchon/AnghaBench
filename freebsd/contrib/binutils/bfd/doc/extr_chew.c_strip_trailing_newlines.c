
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ write_idx; } ;


 char at (TYPE_1__*,scalar_t__) ;
 scalar_t__ isspace (unsigned char) ;
 int pc ;
 TYPE_1__* tos ;

__attribute__((used)) static void
strip_trailing_newlines ()
{
  while ((isspace ((unsigned char) at (tos, tos->write_idx - 1))
   || at (tos, tos->write_idx - 1) == '\n')
  && tos->write_idx > 0)
    tos->write_idx--;
  pc++;
}
