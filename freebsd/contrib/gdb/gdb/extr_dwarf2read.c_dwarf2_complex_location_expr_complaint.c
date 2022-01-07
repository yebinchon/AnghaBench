
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*) ;
 int symfile_complaints ;

__attribute__((used)) static void
dwarf2_complex_location_expr_complaint (void)
{
  complaint (&symfile_complaints, "location expression too complex");
}
