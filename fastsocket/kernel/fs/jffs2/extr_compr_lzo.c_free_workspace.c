
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lzo_compress_buf ;
 int lzo_mem ;
 int vfree (int ) ;

__attribute__((used)) static void free_workspace(void)
{
 vfree(lzo_mem);
 vfree(lzo_compress_buf);
}
