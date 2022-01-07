
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_de_head {scalar_t__ deh_state; void* deh_objectid; void* deh_dir_id; } ;
typedef void* __le32 ;


 int DOT_DOT_OFFSET ;
 int DOT_OFFSET ;
 int EMPTY_DIR_SIZE ;
 int ROUND_UP (int ) ;
 int deh_location (struct reiserfs_de_head*) ;
 int mark_de_visible (struct reiserfs_de_head*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int put_deh_location (struct reiserfs_de_head*,int) ;
 int put_deh_offset (struct reiserfs_de_head*,int ) ;
 int strlen (char*) ;

void make_empty_dir_item(char *body, __le32 dirid, __le32 objid,
    __le32 par_dirid, __le32 par_objid)
{
 struct reiserfs_de_head *deh;

 memset(body, 0, EMPTY_DIR_SIZE);
 deh = (struct reiserfs_de_head *)body;


 put_deh_offset(&(deh[0]), DOT_OFFSET);

 deh[0].deh_dir_id = dirid;
 deh[0].deh_objectid = objid;
 deh[0].deh_state = 0;
 put_deh_location(&(deh[0]), EMPTY_DIR_SIZE - ROUND_UP(strlen(".")));
 mark_de_visible(&(deh[0]));


 put_deh_offset(&(deh[1]), DOT_DOT_OFFSET);


 deh[1].deh_dir_id = par_dirid;
 deh[1].deh_objectid = par_objid;
 deh[1].deh_state = 0;
 put_deh_location(&(deh[1]),
    deh_location(&(deh[0])) - ROUND_UP(strlen("..")));
 mark_de_visible(&(deh[1]));


 memcpy(body + deh_location(&(deh[0])), ".", 1);
 memcpy(body + deh_location(&(deh[1])), "..", 2);
}
