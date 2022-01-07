
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; int file; } ;
struct conditional_frame {int dead_tree; int macro_nest; TYPE_2__* previous_cframe; TYPE_1__ if_file_line; } ;
struct TYPE_4__ {scalar_t__ ignoring; } ;


 int as_where (int *,int *) ;
 TYPE_2__* current_cframe ;
 int macro_nest ;
 int memset (struct conditional_frame*,int ,int) ;

__attribute__((used)) static void
initialize_cframe (struct conditional_frame *cframe)
{
  memset (cframe, 0, sizeof (*cframe));
  as_where (&cframe->if_file_line.file,
     &cframe->if_file_line.line);
  cframe->previous_cframe = current_cframe;
  cframe->dead_tree = current_cframe != ((void*)0) && current_cframe->ignoring;
  cframe->macro_nest = macro_nest;
}
