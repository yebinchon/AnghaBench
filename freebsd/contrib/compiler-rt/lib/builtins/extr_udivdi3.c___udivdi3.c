
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int du_int ;


 int __udivmoddi4 (int ,int ,int ) ;

du_int __udivdi3(du_int a, du_int b) {
  return __udivmoddi4(a, b, 0);
}
