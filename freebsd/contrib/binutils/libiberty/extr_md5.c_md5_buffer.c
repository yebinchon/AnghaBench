
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_ctx {int dummy; } ;


 void* md5_finish_ctx (struct md5_ctx*,void*) ;
 int md5_init_ctx (struct md5_ctx*) ;
 int md5_process_bytes (char const*,size_t,struct md5_ctx*) ;

void *
md5_buffer (const char *buffer, size_t len, void *resblock)
{
  struct md5_ctx ctx;


  md5_init_ctx (&ctx);


  md5_process_bytes (buffer, len, &ctx);


  return md5_finish_ctx (&ctx, resblock);
}
