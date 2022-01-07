
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef enum frame_type { ____Placeholder_frame_type } frame_type ;






 int fprintf_unfiltered (struct ui_file*,char*) ;

__attribute__((used)) static void
fprint_frame_type (struct ui_file *file, enum frame_type type)
{
  switch (type)
    {
    case 128:
      fprintf_unfiltered (file, "UNKNOWN_FRAME");
      return;
    case 130:
      fprintf_unfiltered (file, "NORMAL_FRAME");
      return;
    case 131:
      fprintf_unfiltered (file, "DUMMY_FRAME");
      return;
    case 129:
      fprintf_unfiltered (file, "SIGTRAMP_FRAME");
      return;
    default:
      fprintf_unfiltered (file, "<unknown type>");
      return;
    };
}
