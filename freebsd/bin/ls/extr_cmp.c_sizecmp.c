
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fts_name; TYPE_1__* fts_statp; } ;
struct TYPE_5__ {scalar_t__ st_size; } ;
typedef TYPE_2__ FTSENT ;


 int strcoll (int ,int ) ;

int
sizecmp(const FTSENT *a, const FTSENT *b)
{

 if (b->fts_statp->st_size > a->fts_statp->st_size)
  return (1);
 if (b->fts_statp->st_size < a->fts_statp->st_size)
  return (-1);
 return (strcoll(a->fts_name, b->fts_name));
}
