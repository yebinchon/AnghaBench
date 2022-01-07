
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* node; int solvedSAlist; } ;
typedef TYPE_3__ yyySIT ;
typedef scalar_t__ yyyRCT ;
struct TYPE_8__ {TYPE_3__* stackref; } ;
struct TYPE_10__ {int parentIsStack; int refCountListLen; scalar_t__ whichSym; scalar_t__ prodNum; scalar_t__* refCountList; struct TYPE_10__** cL; scalar_t__ cLlen; TYPE_2__ parent; } ;
typedef TYPE_4__ yyyGNT ;
struct TYPE_7__ {TYPE_3__* yyyOxStackItem; } ;
struct TYPE_11__ {TYPE_1__ yyyOxAttrbs; } ;
typedef TYPE_5__ YYSTYPE ;


 scalar_t__ calloc (size_t,size_t) ;
 scalar_t__ malloc (size_t) ;
 size_t* yyyLRCIL ;
 int yyyLambdaSSAL ;
 int yyyfatal (char*) ;

void yyyGenLeaf(int nAttrbs,int typeNum,long startP,long stopP,YYSTYPE *yylval)
  {yyyRCT *rcPdum;
   yyySIT **yyyOxStackItem = &yylval->yyyOxAttrbs.yyyOxStackItem;
   (*yyyOxStackItem) = (yyySIT *) malloc((size_t)sizeof(yyySIT));
   if ((*yyyOxStackItem) == (yyySIT *) ((void*)0))
      yyyfatal("malloc error in ox yacc semantic stack space allocation\n");
   (*yyyOxStackItem)->node =
                          (yyyGNT *) malloc((size_t)sizeof(yyyGNT))
                         ;
   if ((*yyyOxStackItem)->node == (yyyGNT *) ((void*)0))
      yyyfatal("malloc error in ox node space allocation\n");
   (*yyyOxStackItem)->solvedSAlist = yyyLambdaSSAL;
   (*yyyOxStackItem)->node->parent.stackref = *yyyOxStackItem;
   (*yyyOxStackItem)->node->parentIsStack = 1;
   (*yyyOxStackItem)->node->cLlen = 0;
   (*yyyOxStackItem)->node->cL = (yyyGNT **)((void*)0);
   (*yyyOxStackItem)->node->refCountListLen = nAttrbs;
   rcPdum = (*yyyOxStackItem)->node->refCountList =
            (yyyRCT *) calloc((size_t)nAttrbs, (size_t)sizeof(yyyRCT));
   if (rcPdum == (yyyRCT *) ((void*)0))
      yyyfatal("malloc error in ox reference count list space allocation\n");
   while (startP < stopP) rcPdum[yyyLRCIL[startP++]] = 0;
   (*yyyOxStackItem)->node->prodNum = 0;
   (*yyyOxStackItem)->node->whichSym = 0;
  }
