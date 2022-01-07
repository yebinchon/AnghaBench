
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file* file; } ;
struct splice_desc {size_t len; size_t total_len; unsigned int flags; int pos; TYPE_1__ u; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int direct_splice_actor ;
 long splice_direct_to_actor (struct file*,struct splice_desc*,int ) ;

long do_splice_direct(struct file *in, loff_t *ppos, struct file *out,
        size_t len, unsigned int flags)
{
 struct splice_desc sd = {
  .len = len,
  .total_len = len,
  .flags = flags,
  .pos = *ppos,
  .u.file = out,
 };
 long ret;

 ret = splice_direct_to_actor(in, &sd, direct_splice_actor);
 if (ret > 0)
  *ppos = sd.pos;

 return ret;
}
