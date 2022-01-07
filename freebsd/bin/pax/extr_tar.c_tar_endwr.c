
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int BLKMULT ;
 int NULLCNT ;
 int wr_skip (int ) ;

int
tar_endwr(void)
{
 return(wr_skip((off_t)(NULLCNT*BLKMULT)));
}
