
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int maya_pb_route_shift(int idx)
{
 static const unsigned char shift[10] =
  { 8, 20, 0, 3, 11, 23, 14, 26, 17, 29 };
 return shift[idx % 10];
}
