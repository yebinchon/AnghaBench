
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *tomoyo_get_msg(const bool is_enforce)
{
 if (is_enforce)
  return "ERROR";
 else
  return "WARNING";
}
