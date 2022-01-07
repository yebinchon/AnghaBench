
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_info {int count; int size; } ;


 int fprintf (int ,char*,...) ;
 int htab_traverse (int ,int ,struct output_info*) ;
 int print_statistics ;
 int stderr ;
 int varray_hash ;

void
dump_varray_statistics (void)
{
}
