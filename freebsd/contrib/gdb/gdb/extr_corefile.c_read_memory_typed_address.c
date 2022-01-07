
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int TYPE_LENGTH (struct type*) ;
 char* alloca (int ) ;
 int extract_typed_address (char*,struct type*) ;
 int read_memory (int ,char*,int ) ;

CORE_ADDR
read_memory_typed_address (CORE_ADDR addr, struct type *type)
{
  char *buf = alloca (TYPE_LENGTH (type));
  read_memory (addr, buf, TYPE_LENGTH (type));
  return extract_typed_address (buf, type);
}
