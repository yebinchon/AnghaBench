
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fts_name; } ;
typedef TYPE_1__ FTSENT ;


 int strcoll (int ,int ) ;

int
revnamecmp(const FTSENT *a, const FTSENT *b)
{

 return (strcoll(b->fts_name, a->fts_name));
}
