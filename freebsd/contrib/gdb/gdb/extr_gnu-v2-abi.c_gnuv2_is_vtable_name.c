
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_cplus_marker (char const) ;

__attribute__((used)) static int
gnuv2_is_vtable_name (const char *name)
{
  return (((name)[0] == '_'
    && (((name)[1] == 'V' && (name)[2] == 'T')
        || ((name)[1] == 'v' && (name)[2] == 't'))
    && is_cplus_marker ((name)[3])) ||
   ((name)[0] == '_' && (name)[1] == '_'
    && (name)[2] == 'v' && (name)[3] == 't' && (name)[4] == '_'));
}
