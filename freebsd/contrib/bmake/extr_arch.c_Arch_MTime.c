
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct ar_hdr {int AR_DATE; } ;
struct TYPE_4__ {scalar_t__ mtime; } ;
typedef TYPE_1__ GNode ;


 int ARCHIVE ;
 struct ar_hdr* ArchStatMember (int ,int ,int ) ;
 int MEMBER ;
 int TRUE ;
 int Var_Value (int ,TYPE_1__*,char**) ;
 int free (char*) ;
 scalar_t__ strtol (int ,int *,int) ;

time_t
Arch_MTime(GNode *gn)
{
    struct ar_hdr *arhPtr;
    time_t modTime;
    char *p1, *p2;

    arhPtr = ArchStatMember(Var_Value(ARCHIVE, gn, &p1),
        Var_Value(MEMBER, gn, &p2),
        TRUE);

    free(p1);
    free(p2);

    if (arhPtr != ((void*)0)) {
 modTime = (time_t)strtol(arhPtr->AR_DATE, ((void*)0), 10);
    } else {
 modTime = 0;
    }

    gn->mtime = modTime;
    return (modTime);
}
