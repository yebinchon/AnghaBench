
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LITTLENUM_TYPE ;



__attribute__((used)) static void
make_invalid_floating_point_number (LITTLENUM_TYPE *words)
{
  *words = 0x8000;
}
