
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sender_context {unsigned int num_fds; int * out_fds; int wakefd; int ready_out; } ;
typedef int data ;


 int DATASIZE ;
 int barf (char*) ;
 unsigned int loops ;
 int ready (int ,int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void *sender(struct sender_context *ctx)
{
 char data[DATASIZE];
 unsigned int i, j;

 ready(ctx->ready_out, ctx->wakefd);


 for (i = 0; i < loops; i++) {
  for (j = 0; j < ctx->num_fds; j++) {
   int ret, done = 0;

again:
   ret = write(ctx->out_fds[j], data + done,
        sizeof(data)-done);
   if (ret < 0)
    barf("SENDER: write");
   done += ret;
   if (done < DATASIZE)
    goto again;
  }
 }

 return ((void*)0);
}
