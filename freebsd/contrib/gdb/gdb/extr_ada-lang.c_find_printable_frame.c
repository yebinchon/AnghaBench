
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symtab_and_line {TYPE_2__* symtab; } ;
struct frame_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* objfile; int filename; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ DEPRECATED_STREQ (int ,char*) ;
 struct frame_info* deprecated_selected_frame ;
 int find_frame_sal (struct frame_info*,struct symtab_and_line*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 int is_ada_runtime_file (int ) ;

int
find_printable_frame (struct frame_info *fi, int level)
{
  struct symtab_and_line sal;

  for (; fi != ((void*)0); level += 1, fi = get_prev_frame (fi))
    {
      find_frame_sal (fi, &sal);
      if (sal.symtab && !is_ada_runtime_file (sal.symtab->filename))
 {
   deprecated_selected_frame = fi;
   break;
 }
    }

  return level;
}
