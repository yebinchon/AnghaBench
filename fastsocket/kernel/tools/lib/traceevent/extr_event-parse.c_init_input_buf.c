
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* input_buf ;
 scalar_t__ input_buf_ptr ;
 unsigned long long input_buf_siz ;

__attribute__((used)) static void init_input_buf(const char *buf, unsigned long long size)
{
 input_buf = buf;
 input_buf_siz = size;
 input_buf_ptr = 0;
}
