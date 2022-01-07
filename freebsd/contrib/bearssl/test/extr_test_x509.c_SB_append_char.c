
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* buf; int ptr; } ;
typedef TYPE_1__ string_builder ;


 int SB_expand (TYPE_1__*,int) ;

__attribute__((used)) static void
SB_append_char(string_builder *sb, int c)
{
 SB_expand(sb, 1);
 sb->buf[sb->ptr ++] = c;
}
