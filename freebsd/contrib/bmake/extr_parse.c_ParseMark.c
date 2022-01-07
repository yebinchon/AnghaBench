
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lineno; int fname; } ;
struct TYPE_4__ {int lineno; int fname; } ;
typedef TYPE_1__ GNode ;


 TYPE_2__* curFile ;

__attribute__((used)) static void
ParseMark(GNode *gn)
{
    gn->fname = curFile->fname;
    gn->lineno = curFile->lineno;
}
