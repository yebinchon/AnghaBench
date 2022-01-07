
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int line; int file; } ;
struct TYPE_4__ {int line; int file; } ;
struct TYPE_6__ {int macro_nest; TYPE_2__ else_file_line; scalar_t__ else_seen; TYPE_1__ if_file_line; } ;


 int _ (char*) ;
 int as_bad (int ) ;
 int as_bad_where (int ,int ,int ) ;
 TYPE_3__* current_cframe ;

void
cond_finish_check (int nest)
{
  if (current_cframe != ((void*)0) && current_cframe->macro_nest >= nest)
    {
      if (nest >= 0)
 as_bad (_("end of macro inside conditional"));
      else
 as_bad (_("end of file inside conditional"));
      as_bad_where (current_cframe->if_file_line.file,
      current_cframe->if_file_line.line,
      _("here is the start of the unterminated conditional"));
      if (current_cframe->else_seen)
 as_bad_where (current_cframe->else_file_line.file,
        current_cframe->else_file_line.line,
        _("here is the \"else\" of the unterminated conditional"));
    }
}
