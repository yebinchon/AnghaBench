
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

__attribute__((used)) static const char *
get_symbol_visibility (unsigned int visibility)
{
  switch (visibility)
    {
    case 131: return "DEFAULT";
    case 129: return "INTERNAL";
    case 130: return "HIDDEN";
    case 128: return "PROTECTED";
    default: abort ();
    }
}
