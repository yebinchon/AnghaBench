
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _fdt_offset_ptr (void*,int) ;

__attribute__((used)) static inline void *_fdt_offset_ptr_w(void *fdt, int offset)
{
 return (void *)(uintptr_t)_fdt_offset_ptr(fdt, offset);
}
