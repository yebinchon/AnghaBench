
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int precise_ptr; } ;



__attribute__((used)) static int hdsp_set_precise_pointer(struct hdsp *hdsp, int precise)
{
 if (precise)
  hdsp->precise_ptr = 1;
 else
  hdsp->precise_ptr = 0;
 return 0;
}
