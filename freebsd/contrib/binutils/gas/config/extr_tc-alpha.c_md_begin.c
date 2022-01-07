
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int subsegT ;
typedef int segT ;
struct TYPE_4__ {scalar_t__ X_op; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; } ;


 scalar_t__ ECOFF_DEBUGGING ;
 scalar_t__ O_max ;
 int SEC_HAS_CONTENTS ;
 int SEC_READONLY ;
 int _ (char*) ;
 void* alpha_gp_symbol ;
 int alpha_link_section ;
 int alpha_link_symbol ;
 int alpha_lita_section ;
 int alpha_lita_symbol ;
 void* alpha_literal_hash ;
 void* alpha_macro_hash ;
 TYPE_3__* alpha_macros ;
 unsigned int alpha_num_macros ;
 unsigned int alpha_num_opcodes ;
 void* alpha_opcode_hash ;
 TYPE_2__* alpha_opcodes ;
 void** alpha_register_table ;
 int as_fatal (int ,char const*,char const*) ;
 int assert (int) ;
 int bfd_set_gp_size (int ,int ) ;
 int bfd_set_section_alignment (int ,int ,int) ;
 int bfd_set_section_flags (int ,int ,int) ;
 int create_literal_section (char*,int *,int *) ;
 int g_switch_value ;
 char* hash_insert (void*,char const*,void*) ;
 void* hash_new () ;
 int memcpy (char*,char const*,int) ;
 int reg_section ;
 int sprintf (char*,char*,unsigned int) ;
 int stdoutput ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int subseg_new (char*,int ) ;
 int subseg_set (int ,int ) ;
 void* symbol_create (char*,int ,int,int *) ;
 int text_section ;
 char* xmalloc (int ) ;
 int zero_address_frag ;

void
md_begin (void)
{
  unsigned int i;


  {
    expressionS e;

    e.X_op = O_max;
    assert (e.X_op == O_max);
  }


  alpha_opcode_hash = hash_new ();

  for (i = 0; i < alpha_num_opcodes;)
    {
      const char *name, *retval, *slash;

      name = alpha_opcodes[i].name;
      retval = hash_insert (alpha_opcode_hash, name, (void *) &alpha_opcodes[i]);
      if (retval)
 as_fatal (_("internal error: can't hash opcode `%s': %s"),
    name, retval);






      if ((slash = strchr (name, '/')) != ((void*)0))
 {
   char *p = xmalloc (strlen (name));

   memcpy (p, name, slash - name);
   strcpy (p + (slash - name), slash + 1);

   (void) hash_insert (alpha_opcode_hash, p, (void *) &alpha_opcodes[i]);


 }

      while (++i < alpha_num_opcodes
      && (alpha_opcodes[i].name == name
   || !strcmp (alpha_opcodes[i].name, name)))
 continue;
    }


  alpha_macro_hash = hash_new ();

  for (i = 0; i < alpha_num_macros;)
    {
      const char *name, *retval;

      name = alpha_macros[i].name;
      retval = hash_insert (alpha_macro_hash, name, (void *) &alpha_macros[i]);
      if (retval)
 as_fatal (_("internal error: can't hash macro `%s': %s"),
    name, retval);

      while (++i < alpha_num_macros
      && (alpha_macros[i].name == name
   || !strcmp (alpha_macros[i].name, name)))
 continue;
    }


  for (i = 0; i < 32; ++i)
    {
      char name[4];

      sprintf (name, "$%d", i);
      alpha_register_table[i] = symbol_create (name, reg_section, i,
            &zero_address_frag);
    }

  for (; i < 64; ++i)
    {
      char name[5];

      sprintf (name, "$f%d", i - 32);
      alpha_register_table[i] = symbol_create (name, reg_section, i,
            &zero_address_frag);
    }




  bfd_set_gp_size (stdoutput, g_switch_value);
  alpha_literal_hash = hash_new ();

  subseg_set (text_section, 0);
}
