
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_map_d {scalar_t__ name; } ;



__attribute__((used)) static int
repl_map_eq (const void *p1, const void *p2)
{
  return ((const struct repl_map_d *)p1)->name
  == ((const struct repl_map_d *)p2)->name;
}
