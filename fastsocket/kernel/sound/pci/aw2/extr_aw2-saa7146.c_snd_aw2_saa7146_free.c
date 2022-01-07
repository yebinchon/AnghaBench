
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int * base_addr; } ;


 int IER ;
 int MC1 ;
 int MRST_N ;
 int WRITEREG (int,int ) ;

int snd_aw2_saa7146_free(struct snd_aw2_saa7146 *chip)
{

 WRITEREG(0, IER);


 WRITEREG((MRST_N << 16), MC1);


 chip->base_addr = ((void*)0);

 return 0;
}
