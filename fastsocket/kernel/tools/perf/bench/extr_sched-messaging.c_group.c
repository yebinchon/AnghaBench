
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sender_context {unsigned int num_packets; int* in_fds; int ready_out; int wakefd; int* out_fds; unsigned int num_fds; } ;
struct receiver_context {unsigned int num_packets; int* in_fds; int ready_out; int wakefd; int* out_fds; unsigned int num_fds; } ;
typedef int pthread_t ;


 int barf (char*) ;
 int close (int) ;
 int create_worker (struct sender_context*,void*) ;
 int fdpair (int*) ;
 unsigned int loops ;
 struct sender_context* malloc (int) ;
 scalar_t__ receiver ;
 scalar_t__ sender ;
 int thread_mode ;

__attribute__((used)) static unsigned int group(pthread_t *pth,
  unsigned int num_fds,
  int ready_out,
  int wakefd)
{
 unsigned int i;
 struct sender_context *snd_ctx = malloc(sizeof(struct sender_context)
   + num_fds * sizeof(int));

 if (!snd_ctx)
  barf("malloc()");

 for (i = 0; i < num_fds; i++) {
  int fds[2];
  struct receiver_context *ctx = malloc(sizeof(*ctx));

  if (!ctx)
   barf("malloc()");



  fdpair(fds);

  ctx->num_packets = num_fds * loops;
  ctx->in_fds[0] = fds[0];
  ctx->in_fds[1] = fds[1];
  ctx->ready_out = ready_out;
  ctx->wakefd = wakefd;

  pth[i] = create_worker(ctx, (void *)receiver);

  snd_ctx->out_fds[i] = fds[1];
  if (!thread_mode)
   close(fds[0]);
 }


 for (i = 0; i < num_fds; i++) {
  snd_ctx->ready_out = ready_out;
  snd_ctx->wakefd = wakefd;
  snd_ctx->num_fds = num_fds;

  pth[num_fds+i] = create_worker(snd_ctx, (void *)sender);
 }


 if (!thread_mode)
  for (i = 0; i < num_fds; i++)
   close(snd_ctx->out_fds[i]);


 return num_fds * 2;
}
