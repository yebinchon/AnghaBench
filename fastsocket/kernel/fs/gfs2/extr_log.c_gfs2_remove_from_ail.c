
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_bufdata {int bd_bh; TYPE_1__* bd_gl; int bd_ail_gl_list; int bd_ail_st_list; int * bd_ail; } ;
struct TYPE_2__ {int gl_ail_count; } ;


 int atomic_dec (int *) ;
 int brelse (int ) ;
 int list_del_init (int *) ;

void gfs2_remove_from_ail(struct gfs2_bufdata *bd)
{
 bd->bd_ail = ((void*)0);
 list_del_init(&bd->bd_ail_st_list);
 list_del_init(&bd->bd_ail_gl_list);
 atomic_dec(&bd->bd_gl->gl_ail_count);
 brelse(bd->bd_bh);
}
