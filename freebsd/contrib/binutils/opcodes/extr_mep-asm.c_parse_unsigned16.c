
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_CPU_DESC ;


 char const* parse_lo16 (int ,char const**,int,long*,int ) ;

__attribute__((used)) static const char *
parse_unsigned16 (CGEN_CPU_DESC cd,
    const char **strp,
    int opindex,
    unsigned long *valuep)
{
  return parse_lo16 (cd, strp, opindex, (long *) valuep, 0);
}
