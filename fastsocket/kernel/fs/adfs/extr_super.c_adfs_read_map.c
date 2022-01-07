
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct adfs_sb_info {unsigned int s_map_size; unsigned int s_ids_per_zone; int s_idlen; int s_map2blk; } ;
struct adfs_discrecord {int log2secsize; int log2bpmb; int disc_size; int disc_size_high; int zone_spare; } ;
struct adfs_discmap {unsigned int dm_startbit; unsigned int dm_endbit; int dm_startblk; int dm_bh; } ;


 unsigned int ADFS_DR_SIZE_BITS ;
 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int GFP_KERNEL ;
 scalar_t__ adfs_checkmap (struct super_block*,struct adfs_discmap*) ;
 int adfs_error (struct super_block*,char*) ;
 int brelse (int ) ;
 int kfree (struct adfs_discmap*) ;
 struct adfs_discmap* kmalloc (unsigned int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int sb_bread (struct super_block*,unsigned int) ;
 unsigned int signed_asl (unsigned int,int ) ;

__attribute__((used)) static struct adfs_discmap *adfs_read_map(struct super_block *sb, struct adfs_discrecord *dr)
{
 struct adfs_discmap *dm;
 unsigned int map_addr, zone_size, nzones;
 int i, zone;
 struct adfs_sb_info *asb = ADFS_SB(sb);

 nzones = asb->s_map_size;
 zone_size = (8 << dr->log2secsize) - le16_to_cpu(dr->zone_spare);
 map_addr = (nzones >> 1) * zone_size -
       ((nzones > 1) ? ADFS_DR_SIZE_BITS : 0);
 map_addr = signed_asl(map_addr, asb->s_map2blk);

 asb->s_ids_per_zone = zone_size / (asb->s_idlen + 1);

 dm = kmalloc(nzones * sizeof(*dm), GFP_KERNEL);
 if (dm == ((void*)0)) {
  adfs_error(sb, "not enough memory");
  return ((void*)0);
 }

 for (zone = 0; zone < nzones; zone++, map_addr++) {
  dm[zone].dm_startbit = 0;
  dm[zone].dm_endbit = zone_size;
  dm[zone].dm_startblk = zone * zone_size - ADFS_DR_SIZE_BITS;
  dm[zone].dm_bh = sb_bread(sb, map_addr);

  if (!dm[zone].dm_bh) {
   adfs_error(sb, "unable to read map");
   goto error_free;
  }
 }


 i = zone - 1;
 dm[0].dm_startblk = 0;
 dm[0].dm_startbit = ADFS_DR_SIZE_BITS;
 dm[i].dm_endbit = (le32_to_cpu(dr->disc_size_high) << (32 - dr->log2bpmb)) +
       (le32_to_cpu(dr->disc_size) >> dr->log2bpmb) +
       (ADFS_DR_SIZE_BITS - i * zone_size);

 if (adfs_checkmap(sb, dm))
  return dm;

 adfs_error(sb, "map corrupted");

error_free:
 while (--zone >= 0)
  brelse(dm[zone].dm_bh);

 kfree(dm);
 return ((void*)0);
}
