
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int host_read_unsafe (unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int host_read_ctrl_unsafe(unsigned io_base, unsigned timeout)
{
 int data;

 while (((data = host_read_unsafe(io_base)) < 0) && (timeout != 0)) {
  udelay(100);
  --timeout;
 }

 return data;
}
