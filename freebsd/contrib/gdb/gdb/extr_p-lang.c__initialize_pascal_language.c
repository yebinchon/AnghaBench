
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_language (int *) ;
 int pascal_language_defn ;

void
_initialize_pascal_language (void)
{
  add_language (&pascal_language_defn);
}
