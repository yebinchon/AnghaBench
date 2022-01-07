
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct code_page_directory {scalar_t__ magic; TYPE_1__* array; int n_code_pages; } ;
struct code_page_data {int* offs; } ;
struct buffer_head {int dummy; } ;
typedef int secno ;
struct TYPE_2__ {unsigned int index; int code_page_data; } ;


 scalar_t__ CP_DIR_MAGIC ;
 int GFP_KERNEL ;
 int brelse (struct buffer_head*) ;
 void* hpfs_map_sector (struct super_block*,int ,struct buffer_head**,int ) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int printk (char*,...) ;

char *hpfs_load_code_page(struct super_block *s, secno cps)
{
 struct buffer_head *bh;
 secno cpds;
 unsigned cpi;
 unsigned char *ptr;
 unsigned char *cp_table;
 int i;
 struct code_page_data *cpd;
 struct code_page_directory *cp = hpfs_map_sector(s, cps, &bh, 0);
 if (!cp) return ((void*)0);
 if (cp->magic != CP_DIR_MAGIC) {
  printk("HPFS: Code page directory magic doesn't match (magic = %08x)\n", cp->magic);
  brelse(bh);
  return ((void*)0);
 }
 if (!cp->n_code_pages) {
  printk("HPFS: n_code_pages == 0\n");
  brelse(bh);
  return ((void*)0);
 }
 cpds = cp->array[0].code_page_data;
 cpi = cp->array[0].index;
 brelse(bh);

 if (cpi >= 3) {
  printk("HPFS: Code page index out of array\n");
  return ((void*)0);
 }

 if (!(cpd = hpfs_map_sector(s, cpds, &bh, 0))) return ((void*)0);
 if ((unsigned)cpd->offs[cpi] > 0x178) {
  printk("HPFS: Code page index out of sector\n");
  brelse(bh);
  return ((void*)0);
 }
 ptr = (char *)cpd + cpd->offs[cpi] + 6;
 if (!(cp_table = kmalloc(256, GFP_KERNEL))) {
  printk("HPFS: out of memory for code page table\n");
  brelse(bh);
  return ((void*)0);
 }
 memcpy(cp_table, ptr, 128);
 brelse(bh);



 for (i=128; i<256; i++) cp_table[i]=i;
 for (i=128; i<256; i++) if (cp_table[i-128]!=i && cp_table[i-128]>=128)
  cp_table[cp_table[i-128]] = i;

 return cp_table;
}
