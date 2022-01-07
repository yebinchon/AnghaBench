
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fts_name; TYPE_2__* fts_statp; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {TYPE_1__ st_ctim; } ;
typedef TYPE_3__ FTSENT ;


 scalar_t__ f_samesort ;
 int strcoll (int ,int ) ;

int
statcmp(const FTSENT *a, const FTSENT *b)
{

 if (b->fts_statp->st_ctim.tv_sec >
     a->fts_statp->st_ctim.tv_sec)
  return (1);
 if (b->fts_statp->st_ctim.tv_sec <
     a->fts_statp->st_ctim.tv_sec)
  return (-1);
 if (b->fts_statp->st_ctim.tv_nsec >
     a->fts_statp->st_ctim.tv_nsec)
  return (1);
 if (b->fts_statp->st_ctim.tv_nsec <
     a->fts_statp->st_ctim.tv_nsec)
  return (-1);
 if (f_samesort)
  return (strcoll(b->fts_name, a->fts_name));
 else
  return (strcoll(a->fts_name, b->fts_name));
}
