
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchan_buf {int dummy; } ;
struct rchan {char* base_filename; int is_global; int parent; TYPE_1__* cb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* (* create_buf_file ) (char*,int ,int ,struct rchan_buf*,int *) ;} ;


 int GFP_KERNEL ;
 scalar_t__ NAME_MAX ;
 int S_IRUSR ;
 int kfree (char*) ;
 char* kzalloc (scalar_t__,int ) ;
 int snprintf (char*,scalar_t__,char*,char*,unsigned int) ;
 struct dentry* stub1 (char*,int ,int ,struct rchan_buf*,int *) ;

__attribute__((used)) static struct dentry *relay_create_buf_file(struct rchan *chan,
         struct rchan_buf *buf,
         unsigned int cpu)
{
 struct dentry *dentry;
 char *tmpname;

 tmpname = kzalloc(NAME_MAX + 1, GFP_KERNEL);
 if (!tmpname)
  return ((void*)0);
 snprintf(tmpname, NAME_MAX, "%s%d", chan->base_filename, cpu);


 dentry = chan->cb->create_buf_file(tmpname, chan->parent,
        S_IRUSR, buf,
        &chan->is_global);

 kfree(tmpname);

 return dentry;
}
