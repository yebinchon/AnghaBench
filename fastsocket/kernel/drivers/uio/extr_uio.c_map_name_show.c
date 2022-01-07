
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_mem {char* name; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t map_name_show(struct uio_mem *mem, char *buf)
{
 if (unlikely(!mem->name))
  mem->name = "";

 return sprintf(buf, "%s\n", mem->name);
}
