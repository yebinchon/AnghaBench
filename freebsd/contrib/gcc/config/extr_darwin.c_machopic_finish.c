
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int htab_traverse_noresize (scalar_t__,int ,int *) ;
 scalar_t__ machopic_indirections ;
 int machopic_output_indirection ;

void
machopic_finish (FILE *asm_out_file)
{
  if (machopic_indirections)
    htab_traverse_noresize (machopic_indirections,
       machopic_output_indirection,
       asm_out_file);
}
