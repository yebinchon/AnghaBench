
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int host_write_unsafe (unsigned int,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static int host_write_ctrl_unsafe(unsigned io_base, unsigned char data,
                                  unsigned timeout)
{
 int err;

 while (!(err = host_write_unsafe(io_base, data)) && (timeout != 0)) {
  udelay(100);
  --timeout;
 }

 return err;
}
