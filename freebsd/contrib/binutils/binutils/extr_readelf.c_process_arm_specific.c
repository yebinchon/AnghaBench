
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SHT_ARM_ATTRIBUTES ;
 int display_arm_attribute ;
 int process_attributes (int *,char*,int ,int ,int *) ;

__attribute__((used)) static int
process_arm_specific (FILE *file)
{
  return process_attributes (file, "aeabi", SHT_ARM_ATTRIBUTES,
        display_arm_attribute, ((void*)0));
}
