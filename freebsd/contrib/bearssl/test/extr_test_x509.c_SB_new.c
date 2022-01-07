
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__ ptr; void* buf; } ;
typedef TYPE_1__ string_builder ;


 void* xmalloc (int) ;

__attribute__((used)) static string_builder *
SB_new(void)
{
 string_builder *sb;

 sb = xmalloc(sizeof *sb);
 sb->len = 8;
 sb->buf = xmalloc(sb->len);
 sb->ptr = 0;
 return sb;
}
