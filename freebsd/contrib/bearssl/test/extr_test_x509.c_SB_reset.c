
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_builder ;


 int SB_set_length (int *,int ) ;

__attribute__((used)) static void
SB_reset(string_builder *sb)
{
 SB_set_length(sb, 0);
}
