
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* next; scalar_t__ debugging; } ;
typedef TYPE_2__ list_info_type ;
struct TYPE_4__ {scalar_t__ debugging; } ;


 scalar_t__ ISSPACE (char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
debugging_pseudo (list_info_type *list, const char *line)
{
  static int in_debug;
  int was_debug;

  if (list->debugging)
    {
      in_debug = 1;
      return 1;
    }

  was_debug = in_debug;
  in_debug = 0;

  while (ISSPACE (*line))
    line++;

  if (*line != '.')
    {
      return 0;
    }

  line++;

  if (strncmp (line, "def", 3) == 0)
    return 1;
  if (strncmp (line, "val", 3) == 0)
    return 1;
  if (strncmp (line, "scl", 3) == 0)
    return 1;
  if (strncmp (line, "line", 4) == 0)
    return 1;
  if (strncmp (line, "endef", 5) == 0)
    return 1;
  if (strncmp (line, "ln", 2) == 0)
    return 1;
  if (strncmp (line, "type", 4) == 0)
    return 1;
  if (strncmp (line, "size", 4) == 0)
    return 1;
  if (strncmp (line, "dim", 3) == 0)
    return 1;
  if (strncmp (line, "tag", 3) == 0)
    return 1;
  if (strncmp (line, "stabs", 5) == 0)
    return 1;
  if (strncmp (line, "stabn", 5) == 0)
    return 1;

  return 0;
}
