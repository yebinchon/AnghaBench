
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum pos { ____Placeholder_pos } pos ;
struct TYPE_4__ {struct TYPE_4__* archive_next; int filename; } ;
typedef TYPE_1__ bfd ;


 scalar_t__ FILENAME_CMP (int ,char const*) ;
 int pos_after ;
 scalar_t__ pos_default ;
 int pos_end ;
 char* posname ;
 scalar_t__ postype ;

__attribute__((used)) static bfd **
get_pos_bfd (bfd **contents, enum pos default_pos, const char *default_posname)
{
  bfd **after_bfd = contents;
  enum pos realpos;
  const char *realposname;

  if (postype == pos_default)
    {
      realpos = default_pos;
      realposname = default_posname;
    }
  else
    {
      realpos = postype;
      realposname = posname;
    }

  if (realpos == pos_end)
    {
      while (*after_bfd)
 after_bfd = &((*after_bfd)->archive_next);
    }
  else
    {
      for (; *after_bfd; after_bfd = &(*after_bfd)->archive_next)
 if (FILENAME_CMP ((*after_bfd)->filename, realposname) == 0)
   {
     if (realpos == pos_after)
       after_bfd = &(*after_bfd)->archive_next;
     break;
   }
    }
  return after_bfd;
}
