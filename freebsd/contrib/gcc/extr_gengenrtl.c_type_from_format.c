
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_unreachable () ;

__attribute__((used)) static const char *
type_from_format (int c)
{
  switch (c)
    {
    case 'i':
      return "int ";

    case 'w':
      return "HOST_WIDE_INT ";

    case 's':
      return "const char *";

    case 'e': case 'u':
      return "rtx ";

    case 'E':
      return "rtvec ";
    case 'b':
      return "struct bitmap_head_def *";
    case 't':
      return "union tree_node *";
    case 'B':
      return "struct basic_block_def *";
    default:
      gcc_unreachable ();
    }
}
