
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;






 char const* FALSE ;
 int abort () ;

__attribute__((used)) static const char *
visibility_name (enum debug_visibility visibility)
{
  const char *s;

  switch (visibility)
    {
    case 128:
      s = "public";
      break;
    case 130:
      s = "private";
      break;
    case 129:
      s = "protected";
      break;
    case 131:
      s = "/* ignore */";
      break;
    default:
      abort ();
      return FALSE;
    }
  return s;
}
