
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct trace_probe {int size; } ;
struct TYPE_10__ {int data; int fn; } ;
struct TYPE_8__ {int data; int fn; } ;
struct probe_arg {char const* comm; TYPE_5__ fetch; TYPE_1__ fetch_size; TYPE_2__* type; int offset; } ;
struct TYPE_9__ {scalar_t__ size; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ MAX_ARGSTR_LEN ;
 int __parse_bitfield_probe_arg (char const*,TYPE_2__*,TYPE_5__*) ;
 int __parse_probe_arg (char*,TYPE_2__*,TYPE_5__*,int) ;
 TYPE_2__* find_fetch_type (char const*) ;
 int get_fetch_size_function (TYPE_2__*,int ) ;
 char const* kstrdup (char*,int ) ;
 int pr_info (char*,char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int parse_probe_arg(char *arg, struct trace_probe *tp,
      struct probe_arg *parg, bool is_return)
{
 const char *t;
 int ret;

 if (strlen(arg) > MAX_ARGSTR_LEN) {
  pr_info("Argument is too long.: %s\n", arg);
  return -ENOSPC;
 }
 parg->comm = kstrdup(arg, GFP_KERNEL);
 if (!parg->comm) {
  pr_info("Failed to allocate memory for command '%s'.\n", arg);
  return -ENOMEM;
 }
 t = strchr(parg->comm, ':');
 if (t) {
  arg[t - parg->comm] = '\0';
  t++;
 }
 parg->type = find_fetch_type(t);
 if (!parg->type) {
  pr_info("Unsupported type: %s\n", t);
  return -EINVAL;
 }
 parg->offset = tp->size;
 tp->size += parg->type->size;
 ret = __parse_probe_arg(arg, parg->type, &parg->fetch, is_return);
 if (ret >= 0 && t != ((void*)0))
  ret = __parse_bitfield_probe_arg(t, parg->type, &parg->fetch);
 if (ret >= 0) {
  parg->fetch_size.fn = get_fetch_size_function(parg->type,
             parg->fetch.fn);
  parg->fetch_size.data = parg->fetch.data;
 }
 return ret;
}
