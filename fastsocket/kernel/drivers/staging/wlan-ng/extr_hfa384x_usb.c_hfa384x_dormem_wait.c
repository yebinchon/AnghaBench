
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int hfa384x_t ;


 int DOWAIT ;
 int hfa384x_dormem (int *,int ,int ,int ,void*,unsigned int,int *,int *,int *) ;

__attribute__((used)) static inline int
hfa384x_dormem_wait(hfa384x_t *hw,
      u16 page, u16 offset, void *data, unsigned int len)
{
 return hfa384x_dormem(hw, DOWAIT,
         page, offset, data, len, ((void*)0), ((void*)0), ((void*)0));
}
