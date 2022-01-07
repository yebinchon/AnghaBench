
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct TYPE_6__ {int value; scalar_t__ p; } ;
struct frame_info {TYPE_4__* next; TYPE_2__ this_id; int * unwind; int type; int level; } ;
struct TYPE_7__ {int addr; scalar_t__ p; } ;
struct TYPE_5__ {int value; scalar_t__ p; } ;
struct TYPE_8__ {TYPE_3__ prev_func; TYPE_1__ prev_pc; } ;


 int fprint_frame_id (struct ui_file*,int ) ;
 int fprint_frame_type (struct ui_file*,int ) ;
 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 int gdb_print_host_address (int *,struct ui_file*) ;
 int paddr_nz (int ) ;

__attribute__((used)) static void
fprint_frame (struct ui_file *file, struct frame_info *fi)
{
  if (fi == ((void*)0))
    {
      fprintf_unfiltered (file, "<NULL frame>");
      return;
    }
  fprintf_unfiltered (file, "{");
  fprintf_unfiltered (file, "level=%d", fi->level);
  fprintf_unfiltered (file, ",");
  fprintf_unfiltered (file, "type=");
  fprint_frame_type (file, fi->type);
  fprintf_unfiltered (file, ",");
  fprintf_unfiltered (file, "unwind=");
  if (fi->unwind != ((void*)0))
    gdb_print_host_address (fi->unwind, file);
  else
    fprintf_unfiltered (file, "<unknown>");
  fprintf_unfiltered (file, ",");
  fprintf_unfiltered (file, "pc=");
  if (fi->next != ((void*)0) && fi->next->prev_pc.p)
    fprintf_unfiltered (file, "0x%s", paddr_nz (fi->next->prev_pc.value));
  else
    fprintf_unfiltered (file, "<unknown>");
  fprintf_unfiltered (file, ",");
  fprintf_unfiltered (file, "id=");
  if (fi->this_id.p)
    fprint_frame_id (file, fi->this_id.value);
  else
    fprintf_unfiltered (file, "<unknown>");
  fprintf_unfiltered (file, ",");
  fprintf_unfiltered (file, "func=");
  if (fi->next != ((void*)0) && fi->next->prev_func.p)
    fprintf_unfiltered (file, "0x%s", paddr_nz (fi->next->prev_func.addr));
  else
    fprintf_unfiltered (file, "<unknown>");
  fprintf_unfiltered (file, "}");
}
