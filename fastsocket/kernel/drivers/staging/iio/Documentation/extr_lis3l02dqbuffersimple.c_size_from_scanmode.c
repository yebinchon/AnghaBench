
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int size_from_scanmode(int numVals, int timestamp)
{
 if (numVals && timestamp)
  return 16;
 else if (timestamp)
  return 8;
 else
  return numVals*2;
}
