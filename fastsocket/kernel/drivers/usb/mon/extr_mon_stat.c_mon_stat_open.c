
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snap {int str; int slen; } ;
struct mon_bus {int nreaders; int cnt_events; int cnt_text_lost; } ;
struct inode {struct mon_bus* i_private; } ;
struct file {struct snap* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int STAT_BUF_SIZE ;
 struct snap* kmalloc (int,int ) ;
 int snprintf (int ,int ,char*,int,int,int) ;

__attribute__((used)) static int mon_stat_open(struct inode *inode, struct file *file)
{
 struct mon_bus *mbus;
 struct snap *sp;

 if ((sp = kmalloc(sizeof(struct snap), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;

 mbus = inode->i_private;

 sp->slen = snprintf(sp->str, STAT_BUF_SIZE,
     "nreaders %d events %u text_lost %u\n",
     mbus->nreaders, mbus->cnt_events, mbus->cnt_text_lost);

 file->private_data = sp;
 return 0;
}
