
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
computeSignal (int exceptionVector)
{
  int sigval;
  switch (exceptionVector)
    {
    case 0:
      sigval = 8;
      break;
    case 1:
      sigval = 5;
      break;
    case 3:
      sigval = 5;
      break;
    case 4:
      sigval = 16;
      break;
    case 5:
      sigval = 16;
      break;
    case 6:
      sigval = 4;
      break;
    case 7:
      sigval = 8;
      break;
    case 8:
      sigval = 7;
      break;
    case 9:
      sigval = 11;
      break;
    case 10:
      sigval = 11;
      break;
    case 11:
      sigval = 11;
      break;
    case 12:
      sigval = 11;
      break;
    case 13:
      sigval = 11;
      break;
    case 14:
      sigval = 11;
      break;
    case 16:
      sigval = 7;
      break;
    default:
      sigval = 7;
    }
  return (sigval);
}
