
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_OFFSET ;

__attribute__((used)) static inline unsigned long bad_hva(void)
{
 return PAGE_OFFSET;
}
