
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_logBBsize; } ;
typedef TYPE_1__ xlog_t ;



__attribute__((used)) static inline int
xlog_buf_bbcount_valid(
 xlog_t *log,
 int bbcount)
{
 return bbcount > 0 && bbcount <= log->l_logBBsize;
}
