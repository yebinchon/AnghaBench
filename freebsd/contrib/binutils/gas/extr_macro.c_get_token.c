
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; char* ptr; } ;
typedef TYPE_1__ sb ;


 scalar_t__ is_name_beginner (char) ;
 scalar_t__ is_name_ender (char) ;
 scalar_t__ is_part_of_name (char) ;
 scalar_t__ macro_alternate ;
 int sb_add_char (TYPE_1__*,char) ;

__attribute__((used)) static int
get_token (int idx, sb *in, sb *name)
{
  if (idx < in->len
      && is_name_beginner (in->ptr[idx]))
    {
      sb_add_char (name, in->ptr[idx++]);
      while (idx < in->len
      && is_part_of_name (in->ptr[idx]))
 {
   sb_add_char (name, in->ptr[idx++]);
 }
      if (idx < in->len
      && is_name_ender (in->ptr[idx]))
 {
   sb_add_char (name, in->ptr[idx++]);
 }
    }

  if (macro_alternate && idx < in->len && in->ptr[idx] == '&')
    idx++;
  return idx;
}
