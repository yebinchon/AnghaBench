
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct qtree_mem_dqinfo {int dqi_type; int dqi_sb; scalar_t__ dqi_free_entry; int dqi_usable_bs; } ;
struct qt_disk_dqdbheader {void* dqdh_prev_free; void* dqdh_next_free; } ;


 int ENOMEM ;
 void* cpu_to_le32 (scalar_t__) ;
 char* getdqbuf (int ) ;
 int kfree (char*) ;
 int mark_info_dirty (int ,int ) ;
 int read_blk (struct qtree_mem_dqinfo*,scalar_t__,char*) ;
 int write_blk (struct qtree_mem_dqinfo*,scalar_t__,char*) ;

__attribute__((used)) static int insert_free_dqentry(struct qtree_mem_dqinfo *info, char *buf,
          uint blk)
{
 char *tmpbuf = getdqbuf(info->dqi_usable_bs);
 struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
 int err;

 if (!tmpbuf)
  return -ENOMEM;
 dh->dqdh_next_free = cpu_to_le32(info->dqi_free_entry);
 dh->dqdh_prev_free = cpu_to_le32(0);
 err = write_blk(info, blk, buf);
 if (err < 0)
  goto out_buf;
 if (info->dqi_free_entry) {
  err = read_blk(info, info->dqi_free_entry, tmpbuf);
  if (err < 0)
   goto out_buf;
  ((struct qt_disk_dqdbheader *)tmpbuf)->dqdh_prev_free =
       cpu_to_le32(blk);
  err = write_blk(info, info->dqi_free_entry, tmpbuf);
  if (err < 0)
   goto out_buf;
 }
 kfree(tmpbuf);
 info->dqi_free_entry = blk;
 mark_info_dirty(info->dqi_sb, info->dqi_type);
 return 0;
out_buf:
 kfree(tmpbuf);
 return err;
}
