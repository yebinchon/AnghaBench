
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcpos {int dummy; } ;


 int memcpy (struct srcpos*,struct srcpos*,int) ;
 struct srcpos* xmalloc (int) ;

struct srcpos *
srcpos_copy(struct srcpos *pos)
{
 struct srcpos *pos_new;

 pos_new = xmalloc(sizeof(struct srcpos));
 memcpy(pos_new, pos, sizeof(struct srcpos));

 return pos_new;
}
