
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_usage {int cur; } ;



__attribute__((used)) static void usage_free(struct snd_seq_usage *res, int num)
{
 res->cur -= num;
}
