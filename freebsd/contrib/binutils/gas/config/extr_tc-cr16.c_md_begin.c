
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mnemonic; } ;


 int NUMPREGPS ;
 int NUMPREGS ;
 int NUMREGPS ;
 int NUMREGS ;
 char const* _ (char*) ;
 int as_fatal (char const*,...) ;
 int * cr16_inst_hash ;
 TYPE_1__* cr16_instruction ;
 int cr16_pregptab ;
 int cr16_pregtab ;
 int cr16_regptab ;
 int cr16_regtab ;
 char* hash_insert (int *,char const*,char*) ;
 int * hash_new () ;
 int initialise_reg_hash_table (int *,int ,int ) ;
 int linkrelax ;
 int preg_hash ;
 int pregp_hash ;
 int reg_hash ;
 int regp_hash ;
 scalar_t__ streq (char*,char const*) ;

void
md_begin (void)
{
  int i = 0;


  if ((cr16_inst_hash = hash_new ()) == ((void*)0))
    as_fatal (_("Virtual memory exhausted"));

  while (cr16_instruction[i].mnemonic != ((void*)0))
    {
      const char *hashret;
      const char *mnemonic = cr16_instruction[i].mnemonic;

      hashret = hash_insert (cr16_inst_hash, mnemonic,
        (char *)(cr16_instruction + i));

      if (hashret != ((void*)0) && *hashret != '\0')
        as_fatal (_("Can't hash `%s': %s\n"), cr16_instruction[i].mnemonic,
                  *hashret == 0 ? _("(unknown reason)") : hashret);





      do
        {
          ++i;
        }
      while (cr16_instruction[i].mnemonic != ((void*)0)
             && streq (cr16_instruction[i].mnemonic, mnemonic));
    }


  initialise_reg_hash_table (& reg_hash, cr16_regtab, NUMREGS);

  initialise_reg_hash_table (& regp_hash, cr16_regptab, NUMREGPS);

  initialise_reg_hash_table (& preg_hash, cr16_pregtab, NUMPREGS);

  initialise_reg_hash_table (& pregp_hash, cr16_pregptab, NUMPREGPS);


  linkrelax = 1;
}
