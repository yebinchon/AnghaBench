
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_usage {scalar_t__ cur; scalar_t__ peak; } ;



__attribute__((used)) static void usage_alloc(struct snd_seq_usage *res, int num)
{
 res->cur += num;
 if (res->cur > res->peak)
  res->peak = res->cur;
}
