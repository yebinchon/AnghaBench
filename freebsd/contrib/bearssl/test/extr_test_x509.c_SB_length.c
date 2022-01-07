
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ptr; } ;
typedef TYPE_1__ string_builder ;



__attribute__((used)) static size_t
SB_length(string_builder *sb)
{
 return sb->ptr;
}
