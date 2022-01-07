
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char*) ;

int
ada_is_range_type_name (const char *name)
{
  return (name != ((void*)0) && strstr (name, "___XD"));
}
