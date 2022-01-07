
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int * oss_seq_dev; } ;



void snd_opl3_free_seq_oss(struct snd_opl3 *opl3)
{
 if (opl3->oss_seq_dev) {

  opl3->oss_seq_dev = ((void*)0);
 }
}
