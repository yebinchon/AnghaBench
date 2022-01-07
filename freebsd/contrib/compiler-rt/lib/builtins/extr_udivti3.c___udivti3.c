
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tu_int ;


 int __udivmodti4 (int ,int ,int ) ;

tu_int __udivti3(tu_int a, tu_int b) {
  return __udivmodti4(a, b, 0);
}
