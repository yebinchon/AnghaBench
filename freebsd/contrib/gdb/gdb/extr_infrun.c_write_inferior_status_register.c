
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_status {int registers; } ;
typedef int LONGEST ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 void* alloca (int) ;
 int regcache_raw_write (int ,int,void*) ;
 int store_signed_integer (void*,int,int ) ;

void
write_inferior_status_register (struct inferior_status *inf_status, int regno,
    LONGEST val)
{
  int size = DEPRECATED_REGISTER_RAW_SIZE (regno);
  void *buf = alloca (size);
  store_signed_integer (buf, size, val);
  regcache_raw_write (inf_status->registers, regno, buf);
}
