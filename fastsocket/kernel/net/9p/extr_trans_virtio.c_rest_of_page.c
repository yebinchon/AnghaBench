
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static unsigned int rest_of_page(void *data)
{
 return PAGE_SIZE - ((unsigned long)data % PAGE_SIZE);
}
