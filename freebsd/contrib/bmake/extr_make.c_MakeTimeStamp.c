
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;


 int Make_TimeStamp (int *,int *) ;

__attribute__((used)) static int
MakeTimeStamp(void *pgn, void *cgn)
{
    return Make_TimeStamp((GNode *)pgn, (GNode *)cgn);
}
