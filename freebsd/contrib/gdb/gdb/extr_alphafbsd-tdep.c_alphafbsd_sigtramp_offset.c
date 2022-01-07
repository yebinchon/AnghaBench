
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ alphafbsd_sigtramp_start ;

__attribute__((used)) static LONGEST
alphafbsd_sigtramp_offset (CORE_ADDR pc)
{
  return pc - alphafbsd_sigtramp_start;
}
