
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CONTROL ;

void
go32_set_dr7 (unsigned val)
{
  CONTROL = val;
}
