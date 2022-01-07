
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int name; int lineno; int fname; int commands; int cohorts; } ;
typedef TYPE_1__ GNode ;


 int Lst_AtEnd (int ,void*) ;
 scalar_t__ Lst_Datum (int ) ;
 int Lst_IsEmpty (int ) ;
 int Lst_Last (int ) ;
 int OP_DOUBLEDEP ;
 int OP_HAS_COMMANDS ;
 int OP_SUBMAKE ;
 int PARSE_WARNING ;
 int ParseErrorInternal (int ,int ,int ,char*,int ) ;
 int ParseMark (TYPE_1__*) ;
 scalar_t__ ParseMaybeSubMake (void*) ;
 int Parse_Error (int ,char*,int ,...) ;

__attribute__((used)) static int
ParseAddCmd(void *gnp, void *cmd)
{
    GNode *gn = (GNode *)gnp;


    if ((gn->type & OP_DOUBLEDEP) && !Lst_IsEmpty (gn->cohorts))
 gn = (GNode *)Lst_Datum(Lst_Last(gn->cohorts));


    if (!(gn->type & OP_HAS_COMMANDS)) {
 (void)Lst_AtEnd(gn->commands, cmd);
 if (ParseMaybeSubMake(cmd))
     gn->type |= OP_SUBMAKE;
 ParseMark(gn);
    } else {
 Parse_Error(PARSE_WARNING,
       "duplicate script for target \"%s\" ignored",
       gn->name);
 ParseErrorInternal(gn->fname, gn->lineno, PARSE_WARNING,
       "using previous script for \"%s\" defined here",
       gn->name);

    }
    return(0);
}
