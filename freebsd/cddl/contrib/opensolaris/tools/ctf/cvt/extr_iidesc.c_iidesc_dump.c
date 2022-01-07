
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ii_type; char* ii_name; } ;
typedef TYPE_1__ iidesc_t ;


 int printf (char*,int,char*) ;

int
iidesc_dump(iidesc_t *ii)
{
 printf("type: %d  name %s\n", ii->ii_type,
     (ii->ii_name ? ii->ii_name : "(anon)"));

 return (0);
}
