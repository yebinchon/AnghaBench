
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {unsigned int cpu; } ;
struct rchan {struct rchan_buf** buf; scalar_t__ is_global; scalar_t__ has_base_filename; } ;
struct dentry {int dummy; } ;


 int __relay_reset (struct rchan_buf*,int) ;
 struct rchan_buf* relay_create_buf (struct rchan*) ;
 struct dentry* relay_create_buf_file (struct rchan*,struct rchan_buf*,unsigned int) ;
 int relay_destroy_buf (struct rchan_buf*) ;
 int relay_set_buf_dentry (struct rchan_buf*,struct dentry*) ;

__attribute__((used)) static struct rchan_buf *relay_open_buf(struct rchan *chan, unsigned int cpu)
{
  struct rchan_buf *buf = ((void*)0);
 struct dentry *dentry;

  if (chan->is_global)
  return chan->buf[0];

 buf = relay_create_buf(chan);
 if (!buf)
  return ((void*)0);

 if (chan->has_base_filename) {
  dentry = relay_create_buf_file(chan, buf, cpu);
  if (!dentry)
   goto free_buf;
  relay_set_buf_dentry(buf, dentry);
 }

  buf->cpu = cpu;
  __relay_reset(buf, 1);

  if(chan->is_global) {
   chan->buf[0] = buf;
   buf->cpu = 0;
   }

 return buf;

free_buf:
  relay_destroy_buf(buf);
 return ((void*)0);
}
