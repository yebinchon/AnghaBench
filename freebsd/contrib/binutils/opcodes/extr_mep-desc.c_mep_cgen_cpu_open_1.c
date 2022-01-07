
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cgen_endian { ____Placeholder_cgen_endian } cgen_endian ;
typedef int CGEN_CPU_DESC ;


 int CGEN_CPU_OPEN_BFDMACH ;
 int CGEN_CPU_OPEN_END ;
 int CGEN_CPU_OPEN_ENDIAN ;
 int mep_cgen_cpu_open (int ,char const*,int ,int,int ) ;

CGEN_CPU_DESC
mep_cgen_cpu_open_1 (const char *mach_name, enum cgen_endian endian)
{
  return mep_cgen_cpu_open (CGEN_CPU_OPEN_BFDMACH, mach_name,
          CGEN_CPU_OPEN_ENDIAN, endian,
          CGEN_CPU_OPEN_END);
}
