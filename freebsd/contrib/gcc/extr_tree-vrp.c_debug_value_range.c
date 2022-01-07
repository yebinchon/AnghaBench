
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_range_t ;


 int dump_value_range (int ,int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
debug_value_range (value_range_t *vr)
{
  dump_value_range (stderr, vr);
  fprintf (stderr, "\n");
}
