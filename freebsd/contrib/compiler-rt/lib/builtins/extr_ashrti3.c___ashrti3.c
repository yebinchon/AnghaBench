
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; int low; } ;
struct TYPE_4__ {int all; TYPE_1__ s; } ;
typedef TYPE_2__ twords ;
typedef int ti_int ;
typedef int const si_int ;
typedef int di_int ;


 int CHAR_BIT ;

ti_int __ashrti3(ti_int a, si_int b) {
  const int bits_in_dword = (int)(sizeof(di_int) * CHAR_BIT);
  twords input;
  twords result;
  input.all = a;
  if (b & bits_in_dword) {

    result.s.high = input.s.high >> (bits_in_dword - 1);
    result.s.low = input.s.high >> (b - bits_in_dword);
  } else {
    if (b == 0)
      return a;
    result.s.high = input.s.high >> b;
    result.s.low = (input.s.high << (bits_in_dword - b)) | (input.s.low >> b);
  }
  return result.all;
}
