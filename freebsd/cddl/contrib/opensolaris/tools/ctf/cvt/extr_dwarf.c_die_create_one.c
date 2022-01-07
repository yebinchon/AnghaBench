
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int t_name; scalar_t__ t_id; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_17__ {scalar_t__ dw_maxoff; } ;
typedef TYPE_2__ dwarf_t ;
struct TYPE_18__ {int dc_flags; int (* dc_create ) (TYPE_2__*,int ,scalar_t__,TYPE_1__*) ;} ;
typedef TYPE_3__ die_creator_t ;
typedef scalar_t__ Dwarf_Off ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Die ;


 int DW_F_NOTDP ;
 int debug (int,char*,scalar_t__,scalar_t__) ;
 int die_name (TYPE_2__*,int ) ;
 scalar_t__ die_off (TYPE_2__*,int ) ;
 scalar_t__ die_tag (TYPE_2__*,int ) ;
 TYPE_3__* die_tag2ctor (scalar_t__) ;
 int stub1 (TYPE_2__*,int ,scalar_t__,TYPE_1__*) ;
 int tdesc_add (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* tdesc_lookup (TYPE_2__*,scalar_t__) ;
 int terminate (char*,scalar_t__,scalar_t__) ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static void
die_create_one(dwarf_t *dw, Dwarf_Die die)
{
 Dwarf_Off off = die_off(dw, die);
 const die_creator_t *dc;
 Dwarf_Half tag;
 tdesc_t *tdp;

 debug(3, "die %llu <%llx>: create_one\n", off, off);

 if (off > dw->dw_maxoff) {
  terminate("illegal die offset %llu (max %llu)\n", off,
      dw->dw_maxoff);
 }

 tag = die_tag(dw, die);

 if ((dc = die_tag2ctor(tag)) == ((void*)0)) {
  debug(2, "die %llu: ignoring tag type %x\n", off, tag);
  return;
 }

 if ((tdp = tdesc_lookup(dw, off)) == ((void*)0) &&
     !(dc->dc_flags & DW_F_NOTDP)) {
  tdp = xcalloc(sizeof (tdesc_t));
  tdp->t_id = off;
  tdesc_add(dw, tdp);
 }

 if (tdp != ((void*)0))
  tdp->t_name = die_name(dw, die);

 dc->dc_create(dw, die, off, tdp);
}
