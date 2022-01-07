
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUS ;

unsigned
go32_get_dr6 (void)
{
  return STATUS;
}
