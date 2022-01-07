
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_ofile {int nsections; scalar_t__ sections; } ;


 int wr_ob (struct coff_ofile*,scalar_t__) ;
 int wr_rl (struct coff_ofile*,scalar_t__) ;
 int wr_sh (struct coff_ofile*,scalar_t__) ;

__attribute__((used)) static void
wr_object_body (struct coff_ofile *p)
{
  int i;

  for (i = 1; i < p->nsections; i++)
    {
      wr_sh (p, p->sections + i);
      wr_ob (p, p->sections + i);
      wr_rl (p, p->sections + i);
    }
}
