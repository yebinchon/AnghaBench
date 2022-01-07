
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_unreachable () ;

__attribute__((used)) static const char *
accessor_from_format (int c)
{
  switch (c)
    {
    case 'i':
      return "XINT";

    case 'w':
      return "XWINT";

    case 's':
      return "XSTR";

    case 'e': case 'u':
      return "XEXP";

    case 'E':
      return "XVEC";

    case 'b':
      return "XBITMAP";

    case 't':
      return "XTREE";

    case 'B':
      return "XBBDEF";

    default:
      gcc_unreachable ();
    }
}
