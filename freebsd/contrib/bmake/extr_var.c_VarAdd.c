
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; scalar_t__ flags; int val; } ;
typedef TYPE_1__ Var ;
struct TYPE_11__ {int flags; char* name; int context; } ;
struct TYPE_10__ {int name; } ;
typedef TYPE_2__ Hash_Entry ;
typedef TYPE_3__ GNode ;


 int Buf_AddBytes (int *,int,char const*) ;
 int Buf_Init (int *,int) ;
 scalar_t__ DEBUG (int ) ;
 TYPE_2__* Hash_CreateEntry (int *,char const*,int *) ;
 int Hash_SetValue (TYPE_2__*,TYPE_1__*) ;
 int INTERNAL ;
 int VAR ;
 TYPE_1__* bmake_malloc (int) ;
 int debug_file ;
 int fprintf (int ,char*,char*,char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
VarAdd(const char *name, const char *val, GNode *ctxt)
{
    Var *v;
    int len;
    Hash_Entry *h;

    v = bmake_malloc(sizeof(Var));

    len = val ? strlen(val) : 0;
    Buf_Init(&v->val, len+1);
    Buf_AddBytes(&v->val, len, val);

    v->flags = 0;

    h = Hash_CreateEntry(&ctxt->context, name, ((void*)0));
    Hash_SetValue(h, v);
    v->name = h->name;
    if (DEBUG(VAR) && (ctxt->flags & INTERNAL) == 0) {
 fprintf(debug_file, "%s:%s = %s\n", ctxt->name, name, val);
    }
}
