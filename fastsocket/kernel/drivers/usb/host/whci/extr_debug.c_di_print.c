
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc {int n_devices; struct di_buf_entry* di_buf; } ;
struct seq_file {struct whc* private; } ;
struct di_buf_entry {int addr_sec_info; scalar_t__ availability_info; } ;
typedef int buf ;


 int UWB_NUM_MAS ;
 int WHC_DI_DEV_ADDR_MASK ;
 int WHC_DI_DISABLE ;
 int WHC_DI_KEY_IDX_MASK ;
 int WHC_DI_SECURE ;
 int bitmap_scnprintf (char*,int,unsigned long*,int ) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int di_print(struct seq_file *s, void *p)
{
 struct whc *whc = s->private;
 char buf[72];
 int d;

 for (d = 0; d < whc->n_devices; d++) {
  struct di_buf_entry *di = &whc->di_buf[d];

  bitmap_scnprintf(buf, sizeof(buf),
     (unsigned long *)di->availability_info, UWB_NUM_MAS);

  seq_printf(s, "DI[%d]\n", d);
  seq_printf(s, "  availability: %s\n", buf);
  seq_printf(s, "  %c%c key idx: %d dev addr: %d\n",
      (di->addr_sec_info & WHC_DI_SECURE) ? 'S' : ' ',
      (di->addr_sec_info & WHC_DI_DISABLE) ? 'D' : ' ',
      (di->addr_sec_info & WHC_DI_KEY_IDX_MASK) >> 8,
      (di->addr_sec_info & WHC_DI_DEV_ADDR_MASK));
 }
 return 0;
}
