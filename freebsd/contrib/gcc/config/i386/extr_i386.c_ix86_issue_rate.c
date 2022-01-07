
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ix86_tune ;

__attribute__((used)) static int
ix86_issue_rate (void)
{
  switch (ix86_tune)
    {
    case 130:
    case 133:
      return 2;

    case 128:
    case 129:
    case 137:
    case 132:
    case 138:
    case 131:
    case 135:
    case 134:
      return 3;

    case 136:
      return 4;

    default:
      return 1;
    }
}
