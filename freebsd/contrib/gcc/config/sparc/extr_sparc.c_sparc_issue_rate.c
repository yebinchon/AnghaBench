
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sparc_cpu ;

__attribute__((used)) static int
sparc_issue_rate (void)
{
  switch (sparc_cpu)
    {
    case 133:
    default:
      return 1;
    case 128:

      return 2;
    case 131:
      return 3;
    case 134:
    case 132:
      return 2;
    case 130:
    case 129:
      return 4;
    }
}
