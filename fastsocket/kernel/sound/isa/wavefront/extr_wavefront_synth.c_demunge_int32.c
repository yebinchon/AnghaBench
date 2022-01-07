
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
demunge_int32 (unsigned char* src, int src_size)

{
 int i;
  int outval = 0;

  for (i = src_size - 1; i >= 0; i--) {
  outval=(outval<<7)+src[i];
 }

 return outval;
}
