
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int invalid_keys ;
 scalar_t__ strchr (int ,int ) ;

int
valid_key(char *key)
{
  while (*key)
    if (strchr(invalid_keys, *key++))
      return FALSE;
  return TRUE;
}
