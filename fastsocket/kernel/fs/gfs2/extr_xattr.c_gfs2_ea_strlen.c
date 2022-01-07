
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_ea_header {int ea_type; int ea_name_len; } ;






__attribute__((used)) static inline unsigned int gfs2_ea_strlen(struct gfs2_ea_header *ea)
{
 switch (ea->ea_type) {
 case 128:
  return 5 + ea->ea_name_len + 1;
 case 129:
  return 7 + ea->ea_name_len + 1;
 case 130:
  return 9 + ea->ea_name_len + 1;
 default:
  return 0;
 }
}
