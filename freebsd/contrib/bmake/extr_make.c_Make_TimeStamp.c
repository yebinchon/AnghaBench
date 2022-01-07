
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mtime; struct TYPE_4__* cmgn; } ;
typedef TYPE_1__ GNode ;



int
Make_TimeStamp(GNode *pgn, GNode *cgn)
{
    if (pgn->cmgn == ((void*)0) || cgn->mtime > pgn->cmgn->mtime) {
 pgn->cmgn = cgn;
    }
    return (0);
}
