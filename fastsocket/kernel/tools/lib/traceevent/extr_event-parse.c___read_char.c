
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* input_buf ;
 scalar_t__ input_buf_ptr ;
 scalar_t__ input_buf_siz ;

__attribute__((used)) static int __read_char(void)
{
 if (input_buf_ptr >= input_buf_siz)
  return -1;

 return input_buf[input_buf_ptr++];
}
