
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ptr; scalar_t__ buf; } ;
typedef TYPE_1__ string_builder ;


 int SB_expand (TYPE_1__*,size_t) ;
 int memset (scalar_t__,char,size_t) ;

__attribute__((used)) static void
SB_set_length(string_builder *sb, size_t len)
{
 if (sb->ptr < len) {
  SB_expand(sb, len - sb->ptr);
  memset(sb->buf + sb->ptr, ' ', len - sb->ptr);
 }
 sb->ptr = len;
}
