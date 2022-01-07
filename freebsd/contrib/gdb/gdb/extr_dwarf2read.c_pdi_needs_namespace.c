
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dwarf_tag { ____Placeholder_dwarf_tag } dwarf_tag ;
__attribute__((used)) static int
pdi_needs_namespace (enum dwarf_tag tag, const char *namespace)
{
  if (namespace == ((void*)0) || namespace[0] == '\0')
    return 0;

  switch (tag)
    {
    case 129:
    case 133:
    case 130:
    case 128:
    case 132:
    case 131:
      return 1;
    default:
      return 0;
    }
}
