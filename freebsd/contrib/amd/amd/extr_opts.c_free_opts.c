
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_opts ;


 int FALSE ;
 int apply_opts (int ,int ,int ) ;
 int free_op ;
 int fs_static ;
 int to_free ;

void
free_opts(am_opts *fo)
{



  fs_static = *fo;




  apply_opts(free_op, to_free, FALSE);
}
