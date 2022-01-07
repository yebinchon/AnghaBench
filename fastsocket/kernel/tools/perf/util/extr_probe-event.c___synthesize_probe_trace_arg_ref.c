
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg_ref {int offset; struct probe_trace_arg_ref* next; } ;


 int e_snprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static int __synthesize_probe_trace_arg_ref(struct probe_trace_arg_ref *ref,
          char **buf, size_t *buflen,
          int depth)
{
 int ret;
 if (ref->next) {
  depth = __synthesize_probe_trace_arg_ref(ref->next, buf,
        buflen, depth + 1);
  if (depth < 0)
   goto out;
 }

 ret = e_snprintf(*buf, *buflen, "%+ld(", ref->offset);
 if (ret < 0)
  depth = ret;
 else {
  *buf += ret;
  *buflen -= ret;
 }
out:
 return depth;

}
