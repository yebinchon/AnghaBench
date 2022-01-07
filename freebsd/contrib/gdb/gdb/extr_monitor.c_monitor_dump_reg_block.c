
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int TARGET_BUF_SIZE ;
 int monitor_expect_prompt (char*,int) ;
 int monitor_printf (char*) ;
 int parse_register_dump (char*,int) ;

int
monitor_dump_reg_block (char *block_cmd)
{
  char buf[TARGET_BUF_SIZE];
  int resp_len;
  monitor_printf (block_cmd);
  resp_len = monitor_expect_prompt (buf, sizeof (buf));
  parse_register_dump (buf, resp_len);
  return 1;
}
