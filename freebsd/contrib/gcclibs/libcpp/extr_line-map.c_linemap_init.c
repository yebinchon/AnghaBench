
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_maps {int last_listed; int trace_includes; scalar_t__ max_column_hint; scalar_t__ highest_line; scalar_t__ highest_location; scalar_t__ cache; scalar_t__ depth; scalar_t__ used; scalar_t__ allocated; int * maps; } ;



void
linemap_init (struct line_maps *set)
{
  set->maps = ((void*)0);
  set->allocated = 0;
  set->used = 0;
  set->last_listed = -1;
  set->trace_includes = 0;
  set->depth = 0;
  set->cache = 0;
  set->highest_location = 0;
  set->highest_line = 0;
  set->max_column_hint = 0;
}
