
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int modify_field (char*,int ,int,int) ;

__attribute__((used)) static void
modify_general_field (char *addr, LONGEST fieldval, int bitpos, int bitsize)
{
  modify_field (addr + sizeof (LONGEST) * bitpos / (8 * sizeof (LONGEST)),
  fieldval, bitpos % (8 * sizeof (LONGEST)), bitsize);
}
