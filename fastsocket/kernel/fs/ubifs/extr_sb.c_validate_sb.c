
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_sb_node {scalar_t__ key_fmt; int time_gran; int leb_size; int min_io_size; } ;
struct TYPE_2__ {int size; } ;
struct ubifs_info {int min_io_size; int leb_size; scalar_t__ log_lebs; scalar_t__ lpt_lebs; scalar_t__ orph_lebs; long long main_lebs; scalar_t__ jhead_cnt; int leb_cnt; int max_leb_cnt; long long max_bud_bytes; scalar_t__ fanout; scalar_t__ lsave_cnt; scalar_t__ default_compr; long long rp_size; TYPE_1__ vi; int key_hash; } ;


 scalar_t__ DEFAULT_LSAVE_CNT ;
 int EINVAL ;
 scalar_t__ NONDATA_JHEADS_CNT ;
 scalar_t__ UBIFS_COMPR_TYPES_CNT ;
 scalar_t__ UBIFS_MAX_JHEADS ;
 long long UBIFS_MIN_BUD_LEBS ;
 scalar_t__ UBIFS_MIN_FANOUT ;
 scalar_t__ UBIFS_MIN_LOG_LEBS ;
 scalar_t__ UBIFS_MIN_LPT_LEBS ;
 long long UBIFS_MIN_MAIN_LEBS ;
 scalar_t__ UBIFS_MIN_ORPH_LEBS ;
 scalar_t__ UBIFS_MST_LEBS ;
 scalar_t__ UBIFS_SB_LEBS ;
 scalar_t__ UBIFS_SIMPLE_KEY_FMT ;
 int dbg_dump_node (struct ubifs_info*,struct ubifs_sb_node*) ;
 int le32_to_cpu (int ) ;
 int ubifs_err (char*,int,...) ;
 scalar_t__ ubifs_idx_node_sz (struct ubifs_info*,scalar_t__) ;

__attribute__((used)) static int validate_sb(struct ubifs_info *c, struct ubifs_sb_node *sup)
{
 long long max_bytes;
 int err = 1, min_leb_cnt;

 if (!c->key_hash) {
  err = 2;
  goto failed;
 }

 if (sup->key_fmt != UBIFS_SIMPLE_KEY_FMT) {
  err = 3;
  goto failed;
 }

 if (le32_to_cpu(sup->min_io_size) != c->min_io_size) {
  ubifs_err("min. I/O unit mismatch: %d in superblock, %d real",
     le32_to_cpu(sup->min_io_size), c->min_io_size);
  goto failed;
 }

 if (le32_to_cpu(sup->leb_size) != c->leb_size) {
  ubifs_err("LEB size mismatch: %d in superblock, %d real",
     le32_to_cpu(sup->leb_size), c->leb_size);
  goto failed;
 }

 if (c->log_lebs < UBIFS_MIN_LOG_LEBS ||
     c->lpt_lebs < UBIFS_MIN_LPT_LEBS ||
     c->orph_lebs < UBIFS_MIN_ORPH_LEBS ||
     c->main_lebs < UBIFS_MIN_MAIN_LEBS) {
  err = 4;
  goto failed;
 }






 min_leb_cnt = UBIFS_SB_LEBS + UBIFS_MST_LEBS + c->log_lebs;
 min_leb_cnt += c->lpt_lebs + c->orph_lebs + c->jhead_cnt + 6;

 if (c->leb_cnt < min_leb_cnt || c->leb_cnt > c->vi.size) {
  ubifs_err("bad LEB count: %d in superblock, %d on UBI volume, "
     "%d minimum required", c->leb_cnt, c->vi.size,
     min_leb_cnt);
  goto failed;
 }

 if (c->max_leb_cnt < c->leb_cnt) {
  ubifs_err("max. LEB count %d less than LEB count %d",
     c->max_leb_cnt, c->leb_cnt);
  goto failed;
 }

 if (c->main_lebs < UBIFS_MIN_MAIN_LEBS) {
  err = 7;
  goto failed;
 }

 if (c->max_bud_bytes < (long long)c->leb_size * UBIFS_MIN_BUD_LEBS ||
     c->max_bud_bytes > (long long)c->leb_size * c->main_lebs) {
  err = 8;
  goto failed;
 }

 if (c->jhead_cnt < NONDATA_JHEADS_CNT + 1 ||
     c->jhead_cnt > NONDATA_JHEADS_CNT + UBIFS_MAX_JHEADS) {
  err = 9;
  goto failed;
 }

 if (c->fanout < UBIFS_MIN_FANOUT ||
     ubifs_idx_node_sz(c, c->fanout) > c->leb_size) {
  err = 10;
  goto failed;
 }

 if (c->lsave_cnt < 0 || (c->lsave_cnt > DEFAULT_LSAVE_CNT &&
     c->lsave_cnt > c->max_leb_cnt - UBIFS_SB_LEBS - UBIFS_MST_LEBS -
     c->log_lebs - c->lpt_lebs - c->orph_lebs)) {
  err = 11;
  goto failed;
 }

 if (UBIFS_SB_LEBS + UBIFS_MST_LEBS + c->log_lebs + c->lpt_lebs +
     c->orph_lebs + c->main_lebs != c->leb_cnt) {
  err = 12;
  goto failed;
 }

 if (c->default_compr < 0 || c->default_compr >= UBIFS_COMPR_TYPES_CNT) {
  err = 13;
  goto failed;
 }

 max_bytes = c->main_lebs * (long long)c->leb_size;
 if (c->rp_size < 0 || max_bytes < c->rp_size) {
  err = 14;
  goto failed;
 }

 if (le32_to_cpu(sup->time_gran) > 1000000000 ||
     le32_to_cpu(sup->time_gran) < 1) {
  err = 15;
  goto failed;
 }

 return 0;

failed:
 ubifs_err("bad superblock, error %d", err);
 dbg_dump_node(c, sup);
 return -EINVAL;
}
