
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {int dummy; } ;


 int HARMONY_CNTL ;
 int HARMONY_CNTL_C ;
 int harmony_read (struct snd_harmony*,int ) ;

__attribute__((used)) static inline void
harmony_wait_for_control(struct snd_harmony *h)
{
 while (harmony_read(h, HARMONY_CNTL) & HARMONY_CNTL_C) ;
}
