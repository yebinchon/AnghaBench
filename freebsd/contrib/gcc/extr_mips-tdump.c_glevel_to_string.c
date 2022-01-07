
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glevel_t ;







__attribute__((used)) static const char *
glevel_to_string (glevel_t g_level)
{
  switch(g_level)
    {
    case 131: return "G0";
    case 130: return "G1";
    case 129: return "G2";
    case 128: return "G3";
    }

  return "??";
}
