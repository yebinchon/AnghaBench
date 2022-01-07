
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundfont_voice_info {int root; int high; int velhigh; int fixkey; int fixvel; int fixpan; int pan; int amplitude; int scaleTuning; int parm; } ;


 int init_voice_parm (int *) ;
 int memset (struct soundfont_voice_info*,int ,int) ;

__attribute__((used)) static void
init_voice_info(struct soundfont_voice_info *avp)
{
 memset(avp, 0, sizeof(*avp));

 avp->root = 60;
 avp->high = 127;
 avp->velhigh = 127;
 avp->fixkey = -1;
 avp->fixvel = -1;
 avp->fixpan = -1;
 avp->pan = -1;
 avp->amplitude = 127;
 avp->scaleTuning = 100;

 init_voice_parm(&avp->parm);
}
