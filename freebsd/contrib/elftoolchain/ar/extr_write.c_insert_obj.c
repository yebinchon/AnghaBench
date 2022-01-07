
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int options; int v_obj; } ;
struct ar_obj {int dummy; } ;


 int AR_A ;
 int AR_B ;
 int TAILQ_INSERT_AFTER (int *,struct ar_obj*,struct ar_obj*,int ) ;
 int TAILQ_INSERT_BEFORE (struct ar_obj*,struct ar_obj*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct ar_obj*,int ) ;
 int bsdar_errc (struct bsdar*,int ,char*) ;
 int objs ;

__attribute__((used)) static void
insert_obj(struct bsdar *bsdar, struct ar_obj *obj, struct ar_obj *pos)
{
 if (obj == ((void*)0))
  bsdar_errc(bsdar, 0, "try to insert a null obj");

 if (pos == ((void*)0) || obj == pos)





  goto tail;

 if (bsdar->options & AR_B) {
  TAILQ_INSERT_BEFORE(pos, obj, objs);
  return;
 }
 if (bsdar->options & AR_A) {
  TAILQ_INSERT_AFTER(&bsdar->v_obj, pos, obj, objs);
  return;
 }

tail:
 TAILQ_INSERT_TAIL(&bsdar->v_obj, obj, objs);

}
