
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;


 int IMA_DIGEST_SIZE ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void ima_print_digest(struct seq_file *m, u8 *digest)
{
 int i;

 for (i = 0; i < IMA_DIGEST_SIZE; i++)
  seq_printf(m, "%02x", *(digest + i));
}
