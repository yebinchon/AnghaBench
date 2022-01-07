
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int mda_cursor_loc ;
 int write_mda_w (unsigned int,int) ;

__attribute__((used)) static inline void mda_set_cursor(unsigned int location)
{
 if (mda_cursor_loc == location)
  return;

 write_mda_w(location >> 1, 0x0e);

 mda_cursor_loc = location;
}
