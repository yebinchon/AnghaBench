
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BRACKET ;
 size_t QUOTE ;
 int ** heads ;
 int quote_ignores_source_dir ;
 int ** tails ;

void
split_quote_chain (void)
{
  heads[QUOTE] = heads[BRACKET];
  tails[QUOTE] = tails[BRACKET];
  heads[BRACKET] = ((void*)0);
  tails[BRACKET] = ((void*)0);

  quote_ignores_source_dir = 1;
}
