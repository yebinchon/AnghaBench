
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdif {int dummy; } ;


 unsigned char E2SINK_MAX ;
 int SEND_PCLR (struct cmdif*,unsigned char,unsigned char) ;
 unsigned char SPLIT_PATH ;
 unsigned char** lbusin2out ;
 int snd_printdd (char*,unsigned char,unsigned char) ;

__attribute__((used)) static void
freelbuspath(struct cmdif *cif, unsigned char source, unsigned char *path)
{
 while (*path != 0xff) {
  unsigned char sink;

  sink = *path & (~SPLIT_PATH);
  if (sink != E2SINK_MAX) {
   snd_printdd("free path 0x%x->0x%x\n", source, sink);
   SEND_PCLR(cif, source, sink);
   source = lbusin2out[sink][0];
  }
  if (*path++ & SPLIT_PATH) {
   unsigned char *npath = path;

   while (*npath != 0xff)
    npath++;
   freelbuspath(cif, source + 1, ++npath);
  }
 }
}
