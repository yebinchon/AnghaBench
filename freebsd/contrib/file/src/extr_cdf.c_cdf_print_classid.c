
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cl_dword; int* cl_word; int* cl_two; int* cl_six; } ;
typedef TYPE_1__ cdf_classid_t ;


 int snprintf (char*,size_t,char*,int,int,int,int,int,int,int,int,int,int,int) ;

int
cdf_print_classid(char *buf, size_t buflen, const cdf_classid_t *id)
{
 return snprintf(buf, buflen, "%.8x-%.4x-%.4x-%.2x%.2x-"
     "%.2x%.2x%.2x%.2x%.2x%.2x", id->cl_dword, id->cl_word[0],
     id->cl_word[1], id->cl_two[0], id->cl_two[1], id->cl_six[0],
     id->cl_six[1], id->cl_six[2], id->cl_six[3], id->cl_six[4],
     id->cl_six[5]);
}
