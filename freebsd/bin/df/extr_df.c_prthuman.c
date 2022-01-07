
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_blocks; int f_bsize; int f_bavail; } ;
typedef int int64_t ;


 int prthumanval (char*,int) ;

__attribute__((used)) static void
prthuman(const struct statfs *sfsp, int64_t used)
{

 prthumanval("  {:blocks/%6s}", sfsp->f_blocks * sfsp->f_bsize);
 prthumanval("  {:used/%6s}", used * sfsp->f_bsize);
 prthumanval("  {:available/%6s}", sfsp->f_bavail * sfsp->f_bsize);
}
