
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct loc_descriptor {int allocated; double freed; double collected; int overhead; char* file; int line; char* function; scalar_t__ times; } ;
struct TYPE_3__ {int n_elements; } ;


 int add_statistics ;
 int cmp_statistic ;
 int fprintf (int ,char*,...) ;
 int ggc_collect () ;
 int ggc_force_collect ;
 int htab_traverse (TYPE_1__*,int ,int*) ;
 struct loc_descriptor** loc_array ;
 TYPE_1__* loc_hash ;
 int qsort (struct loc_descriptor**,int,int,int ) ;
 int sprintf (char*,char*,char const*,int,char*) ;
 int stderr ;
 char* strstr (char const*,char*) ;
 struct loc_descriptor** xcalloc (int,int ) ;

void
dump_ggc_loc_statistics (void)
{
}
