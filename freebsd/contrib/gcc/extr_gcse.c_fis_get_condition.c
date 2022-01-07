
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int get_condition (int ,int *,int,int) ;

rtx
fis_get_condition (rtx jump)
{
  return get_condition (jump, ((void*)0), 0, 1);
}
