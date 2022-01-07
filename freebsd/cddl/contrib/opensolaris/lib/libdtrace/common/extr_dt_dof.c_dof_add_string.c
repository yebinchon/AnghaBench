
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddo_hdl; int ddo_strs; } ;
typedef TYPE_1__ dt_dof_t ;
typedef int dt_buf_t ;
typedef scalar_t__ dof_stridx_t ;


 scalar_t__ dt_buf_len (int *) ;
 int dt_buf_write (int ,int *,char const*,scalar_t__,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static dof_stridx_t
dof_add_string(dt_dof_t *ddo, const char *s)
{
 dt_buf_t *bp = &ddo->ddo_strs;
 dof_stridx_t i = dt_buf_len(bp);

 if (i != 0 && (s == ((void*)0) || *s == '\0'))
  return (0);

 dt_buf_write(ddo->ddo_hdl, bp, s, strlen(s) + 1, sizeof (char));
 return (i);
}
