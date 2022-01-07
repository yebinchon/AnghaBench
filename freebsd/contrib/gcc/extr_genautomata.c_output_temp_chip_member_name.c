
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int automaton_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int output_chip_member_name (int *,int ) ;

__attribute__((used)) static void
output_temp_chip_member_name (FILE *f, automaton_t automaton)
{
  fprintf (f, "_");
  output_chip_member_name (f, automaton);
}
