
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct hash_control {int dummy; } ;
struct TYPE_12__ {char* ptr; scalar_t__ len; } ;
typedef TYPE_1__ sb ;
struct TYPE_13__ {TYPE_1__ def; TYPE_1__ actual; } ;
typedef TYPE_2__ formal_entry ;


 int get_apost_token (int,TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ hash_find (struct hash_control*,int ) ;
 scalar_t__ macro_strip_at ;
 int sb_add_char (TYPE_1__*,char) ;
 int sb_add_sb (TYPE_1__*,TYPE_1__*) ;
 int sb_terminate (TYPE_1__*) ;

__attribute__((used)) static int
sub_actual (int start, sb *in, sb *t, struct hash_control *formal_hash,
     int kind, sb *out, int copyifnotthere)
{
  int src;
  formal_entry *ptr;

  src = get_apost_token (start, in, t, kind);


  if (macro_strip_at
      && kind == '@'
      && (src == start || in->ptr[src - 1] != '@'))
    ptr = ((void*)0);
  else
    ptr = (formal_entry *) hash_find (formal_hash, sb_terminate (t));
  if (ptr)
    {
      if (ptr->actual.len)
 {
   sb_add_sb (out, &ptr->actual);
 }
      else
 {
   sb_add_sb (out, &ptr->def);
 }
    }
  else if (kind == '&')
    {

      sb_add_char (out, '&');
      sb_add_sb (out, t);
    }
  else if (copyifnotthere)
    {
      sb_add_sb (out, t);
    }
  else
    {
      sb_add_char (out, '\\');
      sb_add_sb (out, t);
    }
  return src;
}
