
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _XCR_XFEATURE_ENABLED_MASK ;
 unsigned long long _xgetbv (int ) ;

__attribute__((used)) static bool getX86XCR0(unsigned *rEAX, unsigned *rEDX) {




  __asm__(".byte 0x0f, 0x01, 0xd0" : "=a"(*rEAX), "=d"(*rEDX) : "c"(0));
  return 0;
}
