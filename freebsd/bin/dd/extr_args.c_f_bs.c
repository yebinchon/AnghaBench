
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int ssize_t ;
struct TYPE_4__ {size_t dbsz; } ;
struct TYPE_3__ {size_t dbsz; } ;


 int SSIZE_MAX ;
 int errx (int,char*,int ) ;
 int get_num (char*) ;
 TYPE_2__ in ;
 TYPE_1__ out ;

__attribute__((used)) static void
f_bs(char *arg)
{
 uintmax_t res;

 res = get_num(arg);
 if (res < 1 || res > SSIZE_MAX)
  errx(1, "bs must be between 1 and %zd", (ssize_t)SSIZE_MAX);
 in.dbsz = out.dbsz = (size_t)res;
}
