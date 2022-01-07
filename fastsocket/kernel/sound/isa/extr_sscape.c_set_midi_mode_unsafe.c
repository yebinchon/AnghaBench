
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_CTRL_IO (unsigned int) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void set_midi_mode_unsafe(unsigned io_base)
{
 outb(0x3, HOST_CTRL_IO(io_base));
}
