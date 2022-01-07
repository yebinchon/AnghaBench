
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mix_write (int,int) ;
 int mode_control ;

__attribute__((used)) static void
set_mode(int new_mode)
{
 mix_write(0x80 | 0x05, 0x078B);
 mix_write(new_mode, 0x078B);

 mode_control = new_mode;
}
