
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static char
hex_digit(uint8_t n)
{

 return ((n < 10) ? '0' + n : 'A' + (n - 10));
}
