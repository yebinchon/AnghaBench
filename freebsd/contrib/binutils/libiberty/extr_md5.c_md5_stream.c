
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md5_ctx {int dummy; } ;
typedef int FILE ;


 int BLOCKSIZE ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,int,int *) ;
 int md5_finish_ctx (struct md5_ctx*,void*) ;
 int md5_init_ctx (struct md5_ctx*) ;
 int md5_process_block (char*,int,struct md5_ctx*) ;
 int md5_process_bytes (char*,size_t,struct md5_ctx*) ;

int
md5_stream (FILE *stream, void *resblock)
{


  struct md5_ctx ctx;
  char buffer[4096 + 72];
  size_t sum;


  md5_init_ctx (&ctx);


  while (1)
    {



      size_t n;
      sum = 0;


      do
 {
   n = fread (buffer + sum, 1, 4096 - sum, stream);

   sum += n;
 }
      while (sum < 4096 && n != 0);
      if (n == 0 && ferror (stream))
        return 1;


      if (n == 0)
 break;




      md5_process_block (buffer, 4096, &ctx);
    }


  if (sum > 0)
    md5_process_bytes (buffer, sum, &ctx);


  md5_finish_ctx (&ctx, resblock);
  return 0;
}
