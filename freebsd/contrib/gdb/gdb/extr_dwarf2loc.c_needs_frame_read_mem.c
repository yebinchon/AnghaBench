
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int memset (char*,int ,size_t) ;

__attribute__((used)) static void
needs_frame_read_mem (void *baton, char *buf, CORE_ADDR addr, size_t len)
{
  memset (buf, 0, len);
}
