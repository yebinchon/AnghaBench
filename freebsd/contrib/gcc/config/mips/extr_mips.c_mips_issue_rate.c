
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_tune ;

__attribute__((used)) static int
mips_issue_rate (void)
{
  switch (mips_tune)
    {
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 135:
      return 2;

    case 129:
    case 128:




      return 3;

    default:
      return 1;
    }
}
