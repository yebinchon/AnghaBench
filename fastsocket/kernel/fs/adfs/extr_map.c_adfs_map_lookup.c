
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct adfs_sb_info {int s_map_size; unsigned int s_ids_per_zone; int s_map2blk; } ;


 unsigned int ADFS_ROOT_FRAG ;
 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int adfs_error (struct super_block*,char*,unsigned int,unsigned int,...) ;
 int adfs_map_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int scan_map (struct adfs_sb_info*,unsigned int,unsigned int,unsigned int) ;
 unsigned int signed_asl (int,int ) ;

int
adfs_map_lookup(struct super_block *sb, unsigned int frag_id,
  unsigned int offset)
{
 struct adfs_sb_info *asb = ADFS_SB(sb);
 unsigned int zone, mapoff;
 int result;





 if (frag_id == ADFS_ROOT_FRAG)
  zone = asb->s_map_size >> 1;
 else
  zone = frag_id / asb->s_ids_per_zone;

 if (zone >= asb->s_map_size)
  goto bad_fragment;


 mapoff = signed_asl(offset, -asb->s_map2blk);

 read_lock(&adfs_map_lock);
 result = scan_map(asb, zone, frag_id, mapoff);
 read_unlock(&adfs_map_lock);

 if (result > 0) {
  unsigned int secoff;


  secoff = offset - signed_asl(mapoff, asb->s_map2blk);
  return secoff + signed_asl(result, asb->s_map2blk);
 }

 adfs_error(sb, "fragment 0x%04x at offset %d not found in map",
     frag_id, offset);
 return 0;

bad_fragment:
 adfs_error(sb, "invalid fragment 0x%04x (zone = %d, max = %d)",
     frag_id, zone, asb->s_map_size);
 return 0;
}
