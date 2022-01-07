
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; int len; } ;
typedef TYPE_1__ sb ;


 int sb_add_char (TYPE_1__*,int ) ;

char *
sb_terminate (sb *in)
{
  sb_add_char (in, 0);
  --in->len;
  return in->ptr;
}
