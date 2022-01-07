
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int prmap_t ;
struct TYPE_2__ {int dpa_count; int dpa_proc; } ;
typedef TYPE_1__ dt_module_cb_arg_t ;
typedef int ctf_file_t ;


 int * Pname_to_ctf (int ,char const*) ;

__attribute__((used)) static int
dt_module_load_proc_count(void *arg, const prmap_t *prmap, const char *obj)
{
 ctf_file_t *fp;
 dt_module_cb_arg_t *dcp = arg;


 fp = Pname_to_ctf(dcp->dpa_proc, obj);
 if (fp != ((void*)0))
  dcp->dpa_count++;
 return (0);
}
