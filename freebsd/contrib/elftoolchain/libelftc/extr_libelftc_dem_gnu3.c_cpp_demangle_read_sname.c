
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * container; } ;
struct cpp_demangle_data {long cur; TYPE_1__ output; int last_sname; int cmd; } ;


 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 int READ_TMPL ;
 int assert (int) ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,long,long) ;
 scalar_t__ cpp_demangle_read_number (struct cpp_demangle_data*,long*) ;
 scalar_t__ memcmp (char*,long,int) ;
 int * vector_read_cmd_find (int *,int ) ;

__attribute__((used)) static int
cpp_demangle_read_sname(struct cpp_demangle_data *ddata)
{
 long len;
 int err;

 if (ddata == ((void*)0) || cpp_demangle_read_number(ddata, &len) == 0 ||
     len <= 0)
  return (0);

 if (len == 12 && (memcmp("_GLOBAL__N_1", ddata->cur, 12) == 0))
  err = DEM_PUSH_STR(ddata, "(anonymous namespace)");
 else
  err = cpp_demangle_push_str(ddata, ddata->cur, len);

 if (err == 0)
  return (0);

 assert(ddata->output.size > 0);
 if (vector_read_cmd_find(&ddata->cmd, READ_TMPL) == ((void*)0))
  ddata->last_sname =
      ddata->output.container[ddata->output.size - 1];

 ddata->cur += len;

 return (1);
}
