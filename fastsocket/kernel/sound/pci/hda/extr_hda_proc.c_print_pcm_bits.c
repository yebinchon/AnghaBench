
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
typedef int buf ;


 int SND_PRINT_BITS_ADVISED_BUFSIZE ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 int snd_print_pcm_bits (unsigned int,char*,int) ;

__attribute__((used)) static void print_pcm_bits(struct snd_info_buffer *buffer, unsigned int pcm)
{
 char buf[SND_PRINT_BITS_ADVISED_BUFSIZE];

 snd_iprintf(buffer, "    bits [0x%x]:", (pcm >> 16) & 0xff);
 snd_print_pcm_bits(pcm, buf, sizeof(buf));
 snd_iprintf(buffer, "%s\n", buf);
}
