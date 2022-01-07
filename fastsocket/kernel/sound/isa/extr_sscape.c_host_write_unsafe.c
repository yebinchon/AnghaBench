
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_CTRL_IO (unsigned int) ;
 int HOST_DATA_IO (unsigned int) ;
 int TX_READY ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline int host_write_unsafe(unsigned io_base, unsigned char data)
{
 if ((inb(HOST_CTRL_IO(io_base)) & TX_READY) != 0) {
  outb(data, HOST_DATA_IO(io_base));
  return 1;
 }

 return 0;
}
