
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int signo; } ;


 int pack_hex_byte (char*,int ) ;
 char* remcom_out_buffer ;
 int remove_all_break () ;

__attribute__((used)) static void gdb_cmd_status(struct kgdb_state *ks)
{






 remove_all_break();

 remcom_out_buffer[0] = 'S';
 pack_hex_byte(&remcom_out_buffer[1], ks->signo);
}
