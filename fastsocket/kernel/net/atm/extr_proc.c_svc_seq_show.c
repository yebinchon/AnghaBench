
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_state {int sk; } ;
struct seq_file {struct vcc_state* private; } ;
struct atm_vcc {int dummy; } ;


 void* SEQ_START_TOKEN ;
 struct atm_vcc* atm_sk (int ) ;
 int seq_puts (struct seq_file*,char const*) ;
 int svc_info (struct seq_file*,struct atm_vcc*) ;

__attribute__((used)) static int svc_seq_show(struct seq_file *seq, void *v)
{
 static const char atm_svc_banner[] =
  "Itf VPI VCI           State      Remote\n";

 if (v == SEQ_START_TOKEN)
  seq_puts(seq, atm_svc_banner);
 else {
  struct vcc_state *state = seq->private;
  struct atm_vcc *vcc = atm_sk(state->sk);

  svc_info(seq, vcc);
 }
 return 0;
}
