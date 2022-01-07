
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eh_addr_size ;

__attribute__((used)) static int
size_of_encoded_value (int encoding)
{
  switch (encoding & 0x7)
    {
    default:
    case 0: return eh_addr_size;
    case 2: return 2;
    case 3: return 4;
    case 4: return 8;
    }
}
