
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ar_hdr {int AR_DATE; } ;
struct TYPE_5__ {int type; scalar_t__ mtime; TYPE_1__* cmgn; int path; int children; } ;
struct TYPE_4__ {scalar_t__ mtime; } ;
typedef TYPE_2__ GNode ;
typedef int Boolean ;


 int ARCH ;
 struct ar_hdr* ArchStatMember (int ,int ,int) ;
 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 scalar_t__ Lst_IsEmpty (int ) ;
 int MAKE ;
 scalar_t__ OP_NOP (int) ;
 int OP_PHONY ;
 char* RANLIBMAG ;
 int TRUE ;
 char* Targ_FmtTime (int) ;
 int UNCONST (char*) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 scalar_t__ now ;
 scalar_t__ strtol (int ,int *,int) ;

Boolean
Arch_LibOODate(GNode *gn)
{
    Boolean oodate;

    if (gn->type & OP_PHONY) {
 oodate = TRUE;
    } else if (OP_NOP(gn->type) && Lst_IsEmpty(gn->children)) {
 oodate = FALSE;
    } else if ((!Lst_IsEmpty(gn->children) && gn->cmgn == ((void*)0)) ||
        (gn->mtime > now) ||
        (gn->cmgn != ((void*)0) && gn->mtime < gn->cmgn->mtime)) {
 oodate = TRUE;
    } else {
 oodate = FALSE;

    }
    return (oodate);
}
