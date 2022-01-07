
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uchar ;
typedef int cpp_reader ;
struct TYPE_3__ {char type; char* pos; } ;
typedef TYPE_1__ _cpp_line_note ;


 scalar_t__ CPP_OPTION (int *,int ) ;
 scalar_t__ is_nvspace (char const) ;
 int trigraphs ;

__attribute__((used)) static bool
warn_in_comment (cpp_reader *pfile, _cpp_line_note *note)
{
  const uchar *p;




  if (note->type != '/')
    return 0;



  if (CPP_OPTION (pfile, trigraphs))
    return note[1].pos == note->pos;


  p = note->pos + 3;
  while (is_nvspace (*p))
    p++;



  return (*p == '\n' && p < note[1].pos);
}
