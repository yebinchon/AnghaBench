
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; char* path; char* name; } ;
typedef TYPE_1__ GNode ;


 int Error (char*,char*) ;
 int OP_JOIN ;
 int OP_PHONY ;
 int Targ_Precious (TYPE_1__*) ;
 int eunlink (char*) ;
 int noExecute ;

__attribute__((used)) static void
JobDeleteTarget(GNode *gn)
{
 if ((gn->type & (OP_JOIN|OP_PHONY)) == 0 && !Targ_Precious(gn)) {
     char *file = (gn->path == ((void*)0) ? gn->name : gn->path);
     if (!noExecute && eunlink(file) != -1) {
  Error("*** %s removed", file);
     }
 }
}
