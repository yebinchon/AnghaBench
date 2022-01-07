
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* cb_namewidth; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int print_iostat_separator (TYPE_1__*) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
print_iostat_header(iostat_cbdata_t *cb)
{
 (void) printf("%*s     capacity     operations    bandwidth\n",
     cb->cb_namewidth, "");
 (void) printf("%-*s  alloc   free   read  write   read  write\n",
     cb->cb_namewidth, "pool");
 print_iostat_separator(cb);
}
