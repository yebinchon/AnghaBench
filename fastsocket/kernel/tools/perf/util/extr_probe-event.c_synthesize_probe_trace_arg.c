
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg_ref {int offset; struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {char* name; char* value; char* type; struct probe_trace_arg_ref* ref; } ;


 int __synthesize_probe_trace_arg_ref (struct probe_trace_arg_ref*,char**,size_t*,int) ;
 int e_snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int synthesize_probe_trace_arg(struct probe_trace_arg *arg,
           char *buf, size_t buflen)
{
 struct probe_trace_arg_ref *ref = arg->ref;
 int ret, depth = 0;
 char *tmp = buf;


 if (arg->name)
  ret = e_snprintf(buf, buflen, " %s=", arg->name);
 else
  ret = e_snprintf(buf, buflen, " ");
 if (ret < 0)
  return ret;
 buf += ret;
 buflen -= ret;


 if (arg->value[0] == '@' && arg->ref)
   ref = ref->next;


 if (ref) {
  depth = __synthesize_probe_trace_arg_ref(ref, &buf,
         &buflen, 1);
  if (depth < 0)
   return depth;
 }


 if (arg->value[0] == '@' && arg->ref)
  ret = e_snprintf(buf, buflen, "%s%+ld", arg->value,
     arg->ref->offset);
 else
  ret = e_snprintf(buf, buflen, "%s", arg->value);
 if (ret < 0)
  return ret;
 buf += ret;
 buflen -= ret;


 while (depth--) {
  ret = e_snprintf(buf, buflen, ")");
  if (ret < 0)
   return ret;
  buf += ret;
  buflen -= ret;
 }

 if (arg->type) {
  ret = e_snprintf(buf, buflen, ":%s", arg->type);
  if (ret <= 0)
   return ret;
  buf += ret;
 }

 return buf - tmp;
}
