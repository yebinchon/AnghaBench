
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int splay_tree ;
typedef TYPE_1__* record_layout_info ;
struct TYPE_4__ {scalar_t__ t; } ;


 scalar_t__ BINFO_BASE_BINFO (int ,int) ;
 int BINFO_N_BASE_BINFOS (int ) ;
 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 scalar_t__ CLASSTYPE_HAS_PRIMARY_BASE_P (scalar_t__) ;
 scalar_t__ CLASSTYPE_PRIMARY_BINFO (scalar_t__) ;
 int TYPE_BINFO (scalar_t__) ;
 scalar_t__* build_base_field (TYPE_1__*,scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static void
build_base_fields (record_layout_info rli,
     splay_tree offsets, tree *next_field)
{


  tree t = rli->t;
  int n_baseclasses = BINFO_N_BASE_BINFOS (TYPE_BINFO (t));
  int i;


  if (CLASSTYPE_HAS_PRIMARY_BASE_P (t))
    next_field = build_base_field (rli, CLASSTYPE_PRIMARY_BINFO (t),
       offsets, next_field);


  for (i = 0; i < n_baseclasses; ++i)
    {
      tree base_binfo;

      base_binfo = BINFO_BASE_BINFO (TYPE_BINFO (t), i);



      if (base_binfo == CLASSTYPE_PRIMARY_BINFO (t))
 continue;



      if (BINFO_VIRTUAL_P (base_binfo))
 continue;

      next_field = build_base_field (rli, base_binfo,
         offsets, next_field);
    }
}
