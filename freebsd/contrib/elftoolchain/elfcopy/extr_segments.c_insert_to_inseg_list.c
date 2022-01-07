
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct segment {int nsec; struct section** v_sec; } ;
struct section {scalar_t__ off; } ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 struct section** realloc (struct section**,int) ;

__attribute__((used)) static void
insert_to_inseg_list(struct segment *seg, struct section *sec)
{
 struct section *s;
 int i;

 seg->nsec++;
 seg->v_sec = realloc(seg->v_sec, seg->nsec * sizeof(*seg->v_sec));
 if (seg->v_sec == ((void*)0))
  err(EXIT_FAILURE, "realloc failed");





 for (i = seg->nsec - 1; i > 0; i--) {
  s = seg->v_sec[i - 1];
  if (sec->off >= s->off) {
   seg->v_sec[i] = sec;
   break;
  } else
   seg->v_sec[i] = s;
 }
 if (i == 0)
  seg->v_sec[0] = sec;
}
