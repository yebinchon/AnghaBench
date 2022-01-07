
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int long_name; } ;


 int basename (int ) ;
 int dso__set_short_name (struct dso*,int ) ;

__attribute__((used)) static void dso__set_basename(struct dso *dso)
{
 dso__set_short_name(dso, basename(dso->long_name));
}
