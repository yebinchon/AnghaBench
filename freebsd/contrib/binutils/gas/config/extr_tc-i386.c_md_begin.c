
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__ const* start; TYPE_2__ const* end; } ;
typedef TYPE_1__ templates ;
struct TYPE_7__ {int * name; } ;
typedef TYPE_2__ template ;
struct TYPE_8__ {int * reg_name; } ;
typedef TYPE_3__ reg_entry ;
typedef int PTR ;


 scalar_t__ CODE_64BIT ;
 scalar_t__ ISALPHA (int) ;
 scalar_t__ ISDIGIT (int) ;
 scalar_t__ ISLOWER (int) ;
 scalar_t__ ISUPPER (int) ;
 scalar_t__ IS_ELF ;
 char TOLOWER (int) ;
 int _ (char*) ;
 int as_fatal (int ,int *,char const*) ;
 int bss_section ;
 int data_section ;
 char* digit_chars ;
 scalar_t__ flag_code ;
 char* hash_insert (int ,int *,int ) ;
 int hash_new () ;
 TYPE_2__* i386_optab ;
 TYPE_3__* i386_regtab ;
 unsigned int i386_regtab_size ;
 char* identifier_chars ;
 char* mnemonic_chars ;
 int op_hash ;
 char* operand_chars ;
 char* operand_special_chars ;
 int record_alignment (int ,int) ;
 int reg_hash ;
 char* register_chars ;
 scalar_t__ strcmp (int *,int *) ;
 int text_section ;
 int x86_cie_data_alignment ;
 int x86_dwarf2_return_column ;
 scalar_t__ xmalloc (int) ;

void
md_begin ()
{
  const char *hash_err;


  op_hash = hash_new ();

  {
    const template *optab;
    templates *core_optab;


    optab = i386_optab;
    core_optab = (templates *) xmalloc (sizeof (templates));
    core_optab->start = optab;

    while (1)
      {
 ++optab;
 if (optab->name == ((void*)0)
     || strcmp (optab->name, (optab - 1)->name) != 0)
   {


     core_optab->end = optab;
     hash_err = hash_insert (op_hash,
        (optab - 1)->name,
        (PTR) core_optab);
     if (hash_err)
       {
  as_fatal (_("Internal Error:  Can't hash %s: %s"),
     (optab - 1)->name,
     hash_err);
       }
     if (optab->name == ((void*)0))
       break;
     core_optab = (templates *) xmalloc (sizeof (templates));
     core_optab->start = optab;
   }
      }
  }


  reg_hash = hash_new ();
  {
    const reg_entry *regtab;
    unsigned int regtab_size = i386_regtab_size;

    for (regtab = i386_regtab; regtab_size--; regtab++)
      {
 hash_err = hash_insert (reg_hash, regtab->reg_name, (PTR) regtab);
 if (hash_err)
   as_fatal (_("Internal Error:  Can't hash %s: %s"),
      regtab->reg_name,
      hash_err);
      }
  }


  {
    int c;
    char *p;

    for (c = 0; c < 256; c++)
      {
 if (ISDIGIT (c))
   {
     digit_chars[c] = c;
     mnemonic_chars[c] = c;
     register_chars[c] = c;
     operand_chars[c] = c;
   }
 else if (ISLOWER (c))
   {
     mnemonic_chars[c] = c;
     register_chars[c] = c;
     operand_chars[c] = c;
   }
 else if (ISUPPER (c))
   {
     mnemonic_chars[c] = TOLOWER (c);
     register_chars[c] = mnemonic_chars[c];
     operand_chars[c] = c;
   }

 if (ISALPHA (c) || ISDIGIT (c))
   identifier_chars[c] = c;
 else if (c >= 128)
   {
     identifier_chars[c] = c;
     operand_chars[c] = c;
   }
      }
    digit_chars['-'] = '-';
    mnemonic_chars['-'] = '-';
    mnemonic_chars['.'] = '.';
    identifier_chars['_'] = '_';
    identifier_chars['.'] = '.';

    for (p = operand_special_chars; *p != '\0'; p++)
      operand_chars[(unsigned char) *p] = *p;
  }
  if (flag_code == CODE_64BIT)
    {
      x86_dwarf2_return_column = 16;
      x86_cie_data_alignment = -8;
    }
  else
    {
      x86_dwarf2_return_column = 8;
      x86_cie_data_alignment = -4;
    }
}
