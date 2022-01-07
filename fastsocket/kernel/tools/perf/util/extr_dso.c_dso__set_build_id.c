
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int has_build_id; int build_id; } ;


 int memcpy (int ,void*,int) ;

void dso__set_build_id(struct dso *dso, void *build_id)
{
 memcpy(dso->build_id, build_id, sizeof(dso->build_id));
 dso->has_build_id = 1;
}
