
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double SLOT_MULT ;
 double cpu2slot (int) ;

__attribute__((used)) static double cpu2y(int cpu)
{
 return cpu2slot(cpu) * SLOT_MULT;
}
