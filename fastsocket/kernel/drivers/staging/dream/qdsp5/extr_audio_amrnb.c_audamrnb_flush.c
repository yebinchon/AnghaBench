
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio {int out_bytes; scalar_t__ stopped; scalar_t__ out_tail; scalar_t__ out_head; TYPE_1__* out; } ;
struct TYPE_2__ {scalar_t__ used; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void audamrnb_flush(struct audio *audio)
{
 audio->out[0].used = 0;
 audio->out[1].used = 0;
 audio->out_head = 0;
 audio->out_tail = 0;
 audio->stopped = 0;
 atomic_set(&audio->out_bytes, 0);
}
