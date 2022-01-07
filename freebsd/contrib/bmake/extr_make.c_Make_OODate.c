
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int type; scalar_t__ mtime; int flags; int parents; TYPE_1__* cmgn; } ;
struct TYPE_9__ {scalar_t__ mtime; char* path; char* name; } ;
typedef TYPE_2__ GNode ;
typedef int Boolean ;


 scalar_t__ Arch_IsLib (TYPE_2__*) ;
 scalar_t__ Arch_LibOODate (TYPE_2__*) ;
 int CHILDMADE ;
 scalar_t__ DEBUG (int ) ;
 int Dir_MTime (TYPE_2__*,int) ;
 int FALSE ;
 int FORCE ;
 int Lst_ForEach (int ,int ,TYPE_2__*) ;
 int MAKE ;
 int MakeTimeStamp ;
 int OP_DOUBLEDEP ;
 int OP_EXEC ;
 int OP_FORCE ;
 int OP_JOIN ;
 int OP_LIB ;
 int OP_OPTIONAL ;
 int OP_PHONY ;
 int OP_USE ;
 int OP_USEBEFORE ;
 int TRUE ;
 char* Targ_FmtTime (scalar_t__) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int meta_oodate (TYPE_2__*,int) ;
 scalar_t__ useMeta ;

Boolean
Make_OODate(GNode *gn)
{
    Boolean oodate;





    if ((gn->type & (OP_JOIN|OP_USE|OP_USEBEFORE|OP_EXEC)) == 0) {
 (void)Dir_MTime(gn, 1);
 if (DEBUG(MAKE)) {
     if (gn->mtime != 0) {
  fprintf(debug_file, "modified %s...", Targ_FmtTime(gn->mtime));
     } else {
  fprintf(debug_file, "non-existent...");
     }
 }
    }
    if (gn->type & (OP_USE|OP_USEBEFORE)) {




 if (DEBUG(MAKE)) {
     fprintf(debug_file, ".USE node...");
 }
 oodate = FALSE;
    } else if ((gn->type & OP_LIB) &&
        ((gn->mtime==0) || Arch_IsLib(gn))) {
 if (DEBUG(MAKE)) {
     fprintf(debug_file, "library...");
 }





 oodate = (gn->mtime == 0 || Arch_LibOODate(gn) ||
    (gn->cmgn == ((void*)0) && (gn->type & OP_DOUBLEDEP)));
    } else if (gn->type & OP_JOIN) {




 if (DEBUG(MAKE)) {
     fprintf(debug_file, ".JOIN node...");
 }
 if (DEBUG(MAKE)) {
     fprintf(debug_file, "source %smade...", gn->flags & CHILDMADE ? "" : "not ");
 }
 oodate = (gn->flags & CHILDMADE) ? TRUE : FALSE;
    } else if (gn->type & (OP_FORCE|OP_EXEC|OP_PHONY)) {




 if (DEBUG(MAKE)) {
     if (gn->type & OP_FORCE) {
  fprintf(debug_file, "! operator...");
     } else if (gn->type & OP_PHONY) {
  fprintf(debug_file, ".PHONY node...");
     } else {
  fprintf(debug_file, ".EXEC node...");
     }
 }
 oodate = TRUE;
    } else if ((gn->cmgn != ((void*)0) && gn->mtime < gn->cmgn->mtime) ||
        (gn->cmgn == ((void*)0) &&
  ((gn->mtime == 0 && !(gn->type & OP_OPTIONAL))
    || gn->type & OP_DOUBLEDEP)))
    {







 if (DEBUG(MAKE)) {
     if (gn->cmgn != ((void*)0) && gn->mtime < gn->cmgn->mtime) {
  fprintf(debug_file, "modified before source %s...",
      gn->cmgn->path ? gn->cmgn->path : gn->cmgn->name);
     } else if (gn->mtime == 0) {
  fprintf(debug_file, "non-existent and no sources...");
     } else {
  fprintf(debug_file, ":: operator and no sources...");
     }
 }
 oodate = TRUE;
    } else {







 if (DEBUG(MAKE)) {
     if (gn->flags & FORCE)
  fprintf(debug_file, "non existing child...");
 }
 oodate = (gn->flags & FORCE) ? TRUE : FALSE;
    }
    if (!oodate) {
 Lst_ForEach(gn->parents, MakeTimeStamp, gn);
    }

    return (oodate);
}
