
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SHT_GNU_ATTRIBUTES ;
 int display_power_gnu_attribute ;
 int process_attributes (int *,int *,int ,int *,int ) ;

__attribute__((used)) static int
process_power_specific (FILE *file)
{
  return process_attributes (file, ((void*)0), SHT_GNU_ATTRIBUTES, ((void*)0),
        display_power_gnu_attribute);
}
