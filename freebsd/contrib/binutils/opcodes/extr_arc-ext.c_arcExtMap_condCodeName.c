
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const** condCodes; } ;


 TYPE_1__ arc_extension_map ;

const char *
arcExtMap_condCodeName(int value)
{
  if (value < 16)
    return 0;
  return arc_extension_map.condCodes[value-16];
}
