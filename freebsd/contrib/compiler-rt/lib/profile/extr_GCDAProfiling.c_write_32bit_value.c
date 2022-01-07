
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int write_bytes (char*,int) ;

__attribute__((used)) static void write_32bit_value(uint32_t i) {
  write_bytes((char*)&i, 4);
}
