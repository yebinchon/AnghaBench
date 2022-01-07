
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_link {int dummy; } ;


 int df_chain_dump (struct df_link*,int ) ;
 int fputc (char,int ) ;
 int stderr ;

void
debug_df_chain (struct df_link *link)
{
  df_chain_dump (link, stderr);
  fputc ('\n', stderr);
}
