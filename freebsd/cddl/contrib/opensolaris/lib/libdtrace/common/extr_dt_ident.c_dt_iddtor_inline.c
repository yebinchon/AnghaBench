
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* din_argv; int * din_hash; int din_list; } ;
typedef TYPE_1__ dt_idnode_t ;
struct TYPE_8__ {scalar_t__ di_kind; TYPE_1__* di_iarg; } ;
typedef TYPE_2__ dt_ident_t ;


 scalar_t__ DT_IDENT_ARRAY ;
 int dt_iddtor_free (TYPE_2__*) ;
 int dt_iddtor_sign (TYPE_2__*) ;
 int dt_idhash_destroy (int *) ;
 int dt_node_link_free (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
dt_iddtor_inline(dt_ident_t *idp)
{
 dt_idnode_t *inp = idp->di_iarg;

 if (inp != ((void*)0)) {
  dt_node_link_free(&inp->din_list);

  if (inp->din_hash != ((void*)0))
   dt_idhash_destroy(inp->din_hash);

  free(inp->din_argv);
  free(inp);
 }

 if (idp->di_kind == DT_IDENT_ARRAY)
  dt_iddtor_sign(idp);
 else
  dt_iddtor_free(idp);
}
