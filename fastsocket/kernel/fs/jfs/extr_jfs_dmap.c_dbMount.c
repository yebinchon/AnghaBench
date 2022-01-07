
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inode {int i_sb; } ;
struct dbmap_disk {int dn_maxfreebud; int dn_agsize; int * dn_agfree; int dn_agl2size; int dn_agstart; int dn_agwidth; int dn_agheigth; int dn_aglevel; int dn_agpref; int dn_maxag; int dn_maxlevel; int dn_numag; int dn_l2nbperpage; int dn_nfree; int dn_mapsize; } ;
struct bmap {int db_active; struct inode* db_ipbmap; int db_maxfreebud; void* db_agsize; void** db_agfree; void* db_agl2size; void* db_agstart; void* db_agwidth; void* db_agheigth; void* db_aglevel; void* db_agpref; void* db_maxag; void* db_maxlevel; void* db_numag; void* db_l2nbperpage; void* db_nfree; void* db_mapsize; } ;
struct TYPE_2__ {int l2nbperpage; struct bmap* bmap; } ;


 int BMAPBLKNO ;
 int BMAP_LOCK_INIT (struct bmap*) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* JFS_SBI (int ) ;
 int MAXAG ;
 int PSIZE ;
 int kfree (struct bmap*) ;
 struct bmap* kmalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int memset (int ,int ,int) ;
 struct metapage* read_metapage (struct inode*,int,int ,int ) ;
 int release_metapage (struct metapage*) ;

int dbMount(struct inode *ipbmap)
{
 struct bmap *bmp;
 struct dbmap_disk *dbmp_le;
 struct metapage *mp;
 int i;





 bmp = kmalloc(sizeof(struct bmap), GFP_KERNEL);
 if (bmp == ((void*)0))
  return -ENOMEM;


 mp = read_metapage(ipbmap,
      BMAPBLKNO << JFS_SBI(ipbmap->i_sb)->l2nbperpage,
      PSIZE, 0);
 if (mp == ((void*)0)) {
  kfree(bmp);
  return -EIO;
 }


 dbmp_le = (struct dbmap_disk *) mp->data;
 bmp->db_mapsize = le64_to_cpu(dbmp_le->dn_mapsize);
 bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
 bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
 bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
 bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
 bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
 bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
 bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
 bmp->db_agheigth = le32_to_cpu(dbmp_le->dn_agheigth);
 bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
 bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
 bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
 for (i = 0; i < MAXAG; i++)
  bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
 bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
 bmp->db_maxfreebud = dbmp_le->dn_maxfreebud;


 release_metapage(mp);


 bmp->db_ipbmap = ipbmap;
 JFS_SBI(ipbmap->i_sb)->bmap = bmp;

 memset(bmp->db_active, 0, sizeof(bmp->db_active));




 BMAP_LOCK_INIT(bmp);

 return (0);
}
