
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnemonic; } ;
typedef int PTR ;


 int _ (char*) ;
 int as_fatal (int ,int ,char const*) ;
 char* hash_insert (int ,int ,int ) ;
 int hash_new () ;
 int op_hash ;
 int spu_num_opcodes ;
 TYPE_1__* spu_opcodes ;
 scalar_t__ strcmp (char const*,char*) ;

void
md_begin (void)
{
  const char *retval = ((void*)0);
  int i;



  op_hash = hash_new ();



  for (i = 0; i < spu_num_opcodes; i++)
    {


      retval = hash_insert (op_hash, spu_opcodes[i].mnemonic, (PTR)&spu_opcodes[i]);

      if (retval != ((void*)0) && strcmp (retval, "exists") != 0)
 as_fatal (_("Can't hash instruction '%s':%s"),
    spu_opcodes[i].mnemonic, retval);
    }
}
