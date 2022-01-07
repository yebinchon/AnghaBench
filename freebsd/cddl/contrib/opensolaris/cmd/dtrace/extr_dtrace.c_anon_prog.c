
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_6__ {int dc_name; } ;
typedef TYPE_1__ dtrace_cmd_t ;
struct TYPE_7__ {int dofh_loadsz; } ;
typedef TYPE_2__ dof_hdr_t ;


 int dfatal (char*,int ) ;
 int dtrace_dof_destroy (int ,TYPE_2__*) ;
 int g_dtp ;
 int oprintf (char*,...) ;

__attribute__((used)) static void
anon_prog(const dtrace_cmd_t *dcp, dof_hdr_t *dof, int n)
{
 const uchar_t *p, *q;

 if (dof == ((void*)0))
  dfatal("failed to create DOF image for '%s'", dcp->dc_name);

 p = (uchar_t *)dof;
 q = p + dof->dofh_loadsz;
 oprintf("dof-data-%d=0x%x", n, *p++);

 while (p < q)
  oprintf(",0x%x", *p++);

 oprintf(";\n");


 dtrace_dof_destroy(g_dtp, dof);
}
