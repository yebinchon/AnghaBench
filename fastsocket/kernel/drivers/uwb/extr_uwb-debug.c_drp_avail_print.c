
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int local; int global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct seq_file {struct uwb_rc* private; } ;
typedef int buf ;


 int UWB_NUM_MAS ;
 int bitmap_scnprintf (char*,int,int ,int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int drp_avail_print(struct seq_file *s, void *p)
{
 struct uwb_rc *rc = s->private;
 char buf[72];

 bitmap_scnprintf(buf, sizeof(buf), rc->drp_avail.global, UWB_NUM_MAS);
 seq_printf(s, "global:  %s\n", buf);
 bitmap_scnprintf(buf, sizeof(buf), rc->drp_avail.local, UWB_NUM_MAS);
 seq_printf(s, "local:   %s\n", buf);
 bitmap_scnprintf(buf, sizeof(buf), rc->drp_avail.pending, UWB_NUM_MAS);
 seq_printf(s, "pending: %s\n", buf);

 return 0;
}
