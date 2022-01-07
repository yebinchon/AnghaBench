
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w83697hf_set_reg (int,int) ;

__attribute__((used)) static void w83697hf_write_timeout(int timeout)
{

 w83697hf_set_reg(0xF4, timeout);
}
