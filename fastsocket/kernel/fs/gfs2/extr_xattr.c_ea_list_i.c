
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_ea_request {scalar_t__ er_data_len; scalar_t__ er_data; } ;
struct gfs2_ea_header {int ea_type; int ea_name_len; } ;
struct ea_list {scalar_t__ ei_size; struct gfs2_ea_request* ei_er; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 int ERANGE ;
 char* GFS2_EA2NAME (struct gfs2_ea_header*) ;


 int GFS2_EATYPE_UNUSED ;

 unsigned int gfs2_ea_strlen (struct gfs2_ea_header*) ;
 int memcpy (scalar_t__,char*,int) ;

__attribute__((used)) static int ea_list_i(struct gfs2_inode *ip, struct buffer_head *bh,
       struct gfs2_ea_header *ea, struct gfs2_ea_header *prev,
       void *private)
{
 struct ea_list *ei = private;
 struct gfs2_ea_request *er = ei->ei_er;
 unsigned int ea_size = gfs2_ea_strlen(ea);

 if (ea->ea_type == GFS2_EATYPE_UNUSED)
  return 0;

 if (er->er_data_len) {
  char *prefix = ((void*)0);
  unsigned int l = 0;
  char c = 0;

  if (ei->ei_size + ea_size > er->er_data_len)
   return -ERANGE;

  switch (ea->ea_type) {
  case 128:
   prefix = "user.";
   l = 5;
   break;
  case 129:
   prefix = "system.";
   l = 7;
   break;
  case 130:
   prefix = "security.";
   l = 9;
   break;
  }

  BUG_ON(l == 0);

  memcpy(er->er_data + ei->ei_size, prefix, l);
  memcpy(er->er_data + ei->ei_size + l, GFS2_EA2NAME(ea),
         ea->ea_name_len);
  memcpy(er->er_data + ei->ei_size + ea_size - 1, &c, 1);
 }

 ei->ei_size += ea_size;

 return 0;
}
