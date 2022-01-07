
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_pattern_buffer {int dummy; } ;


 int MB_CUR_MAX ;
 int byte_re_compile_fastmap (struct re_pattern_buffer*) ;
 int wcs_re_compile_fastmap (struct re_pattern_buffer*) ;

int
re_compile_fastmap (struct re_pattern_buffer *bufp)
{





    return byte_re_compile_fastmap(bufp);
}
