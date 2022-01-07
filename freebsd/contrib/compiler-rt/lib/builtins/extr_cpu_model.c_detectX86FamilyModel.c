
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void detectX86FamilyModel(unsigned EAX, unsigned *Family,
                                 unsigned *Model) {
  *Family = (EAX >> 8) & 0xf;
  *Model = (EAX >> 4) & 0xf;
  if (*Family == 6 || *Family == 0xf) {
    if (*Family == 0xf)

      *Family += (EAX >> 20) & 0xff;

    *Model += ((EAX >> 16) & 0xf) << 4;
  }
}
