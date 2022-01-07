
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {char* s; int len; } ;
struct TYPE_22__ {TYPE_8__* type; } ;
struct TYPE_20__ {TYPE_6__* op; } ;
struct TYPE_18__ {struct demangle_component const* name; } ;
struct TYPE_17__ {char* string; int len; } ;
struct TYPE_16__ {struct demangle_component const* name; } ;
struct TYPE_15__ {struct demangle_component const* name; } ;
struct TYPE_14__ {long number; } ;
struct TYPE_13__ {TYPE_10__ s_name; TYPE_9__ s_builtin; TYPE_7__ s_operator; TYPE_5__ s_extended_operator; TYPE_4__ s_string; TYPE_3__ s_dtor; TYPE_2__ s_ctor; TYPE_1__ s_number; } ;
typedef struct demangle_component {int type; TYPE_11__ u; } const demangle_component ;
struct d_print_template {struct d_print_template* next; struct demangle_component const* template_decl; } ;
struct d_print_mod {int printed; struct d_print_mod* next; struct d_print_template* templates; struct demangle_component const* mod; } ;
struct d_print_info {int options; struct d_print_mod* modifiers; struct d_print_template* templates; } ;
typedef enum d_builtin_type_print { ____Placeholder_d_builtin_type_print } d_builtin_type_print ;
struct TYPE_21__ {char* name; int len; char* java_name; int java_len; int print; } ;
struct TYPE_19__ {char* name; int len; } ;
 int DMGL_JAVA ;
 int DMGL_RET_POSTFIX ;

 int D_PRINT_DEFAULT ;
 int D_PRINT_FLOAT ;






 int IS_LOWER (char) ;
 int d_append_buffer (struct d_print_info*,char*,int) ;
 int d_append_char (struct d_print_info*,char) ;
 int d_append_string_constant (struct d_print_info*,char*) ;
 char d_last_char (struct d_print_info*) ;
 struct demangle_component const* d_left (struct demangle_component const*) ;
 int d_print_array_type (struct d_print_info*,struct demangle_component const*,struct d_print_mod*) ;
 int d_print_cast (struct d_print_info*,struct demangle_component const*) ;
 int d_print_error (struct d_print_info*) ;
 int d_print_expr_op (struct d_print_info*,struct demangle_component const*) ;
 int d_print_function_type (struct d_print_info*,struct demangle_component const*,struct d_print_mod*) ;
 int d_print_java_identifier (struct d_print_info*,char*,int) ;
 int d_print_mod (struct d_print_info*,struct demangle_component const*) ;
 scalar_t__ d_print_saw_error (struct d_print_info*) ;
 struct demangle_component const* d_right (struct demangle_component const*) ;

__attribute__((used)) static void
d_print_comp (struct d_print_info *dpi,
              const struct demangle_component *dc)
{
  if (dc == ((void*)0))
    {
      d_print_error (dpi);
      return;
    }
  if (d_print_saw_error (dpi))
    return;

  switch (dc->type)
    {
    case 163:
      if ((dpi->options & DMGL_JAVA) == 0)
 d_append_buffer (dpi, dc->u.s_name.s, dc->u.s_name.len);
      else
 d_print_java_identifier (dpi, dc->u.s_name.s, dc->u.s_name.len);
      return;

    case 159:
    case 164:
      d_print_comp (dpi, d_left (dc));
      if ((dpi->options & DMGL_JAVA) == 0)
 d_append_string_constant (dpi, "::");
      else
 d_append_char (dpi, '.');
      d_print_comp (dpi, d_right (dc));
      return;

    case 146:
      {
 struct d_print_mod *hold_modifiers;
 struct demangle_component *typed_name;
 struct d_print_mod adpm[4];
 unsigned int i;
 struct d_print_template dpt;




 hold_modifiers = dpi->modifiers;
 i = 0;
 typed_name = d_left (dc);
 while (typed_name != ((void*)0))
   {
     if (i >= sizeof adpm / sizeof adpm[0])
       {
  d_print_error (dpi);
  return;
       }

     adpm[i].next = dpi->modifiers;
     dpi->modifiers = &adpm[i];
     adpm[i].mod = typed_name;
     adpm[i].printed = 0;
     adpm[i].templates = dpi->templates;
     ++i;

     if (typed_name->type != 155
  && typed_name->type != 137
  && typed_name->type != 176)
       break;

     typed_name = d_left (typed_name);
   }



 if (typed_name->type == 153)
   {
     dpt.next = dpi->templates;
     dpi->templates = &dpt;
     dpt.template_decl = typed_name;
   }





 if (typed_name->type == 164)
   {
     struct demangle_component *local_name;

     local_name = d_right (typed_name);
     while (local_name->type == 155
     || local_name->type == 137
     || local_name->type == 176)
       {
  if (i >= sizeof adpm / sizeof adpm[0])
    {
      d_print_error (dpi);
      return;
    }

  adpm[i] = adpm[i - 1];
  adpm[i].next = &adpm[i - 1];
  dpi->modifiers = &adpm[i];

  adpm[i - 1].mod = local_name;
  adpm[i - 1].printed = 0;
  adpm[i - 1].templates = dpi->templates;
  ++i;

  local_name = d_left (local_name);
       }
   }

 d_print_comp (dpi, d_right (dc));

 if (typed_name->type == 153)
   dpi->templates = dpt.next;



 while (i > 0)
   {
     --i;
     if (! adpm[i].printed)
       {
  d_append_char (dpi, ' ');
  d_print_mod (dpi, adpm[i].mod);
       }
   }

 dpi->modifiers = hold_modifiers;

 return;
      }

    case 153:
      {
 struct d_print_mod *hold_dpm;





 hold_dpm = dpi->modifiers;
 dpi->modifiers = ((void*)0);

 d_print_comp (dpi, d_left (dc));
 if (d_last_char (dpi) == '<')
   d_append_char (dpi, ' ');
 d_append_char (dpi, '<');
 d_print_comp (dpi, d_right (dc));


 if (d_last_char (dpi) == '>')
   d_append_char (dpi, ' ');
 d_append_char (dpi, '>');

 dpi->modifiers = hold_dpm;

 return;
      }

    case 151:
      {
 long i;
 struct demangle_component *a;
 struct d_print_template *hold_dpt;

 if (dpi->templates == ((void*)0))
   {
     d_print_error (dpi);
     return;
   }
 i = dc->u.s_number.number;
 for (a = d_right (dpi->templates->template_decl);
      a != ((void*)0);
      a = d_right (a))
   {
     if (a->type != 152)
       {
  d_print_error (dpi);
  return;
       }
     if (i <= 0)
       break;
     --i;
   }
 if (i != 0 || a == ((void*)0))
   {
     d_print_error (dpi);
     return;
   }






 hold_dpt = dpi->templates;
 dpi->templates = hold_dpt->next;

 d_print_comp (dpi, d_left (a));

 dpi->templates = hold_dpt;

 return;
      }

    case 174:
      d_print_comp (dpi, dc->u.s_ctor.name);
      return;

    case 173:
      d_append_char (dpi, '~');
      d_print_comp (dpi, dc->u.s_dtor.name);
      return;

    case 136:
      d_append_string_constant (dpi, "vtable for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 135:
      d_append_string_constant (dpi, "VTT for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 177:
      d_append_string_constant (dpi, "construction vtable for ");
      d_print_comp (dpi, d_left (dc));
      d_append_string_constant (dpi, "-in-");
      d_print_comp (dpi, d_right (dc));
      return;

    case 145:
      d_append_string_constant (dpi, "typeinfo for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 143:
      d_append_string_constant (dpi, "typeinfo name for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 144:
      d_append_string_constant (dpi, "typeinfo fn for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 150:
      d_append_string_constant (dpi, "non-virtual thunk to ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 139:
      d_append_string_constant (dpi, "virtual thunk to ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 175:
      d_append_string_constant (dpi, "covariant return thunk to ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 167:
      d_append_string_constant (dpi, "java Class for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 170:
      d_append_string_constant (dpi, "guard variable for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 157:
      d_append_string_constant (dpi, "reference temporary for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 169:
      d_append_string_constant (dpi, "hidden alias for ");
      d_print_comp (dpi, d_left (dc));
      return;

    case 154:
      d_append_buffer (dpi, dc->u.s_string.string, dc->u.s_string.len);
      return;

    case 156:
    case 138:
    case 178:
      {
 struct d_print_mod *pdpm;





 for (pdpm = dpi->modifiers; pdpm != ((void*)0); pdpm = pdpm->next)
   {
     if (! pdpm->printed)
       {
  if (pdpm->mod->type != 156
      && pdpm->mod->type != 138
      && pdpm->mod->type != 178)
    break;
  if (pdpm->mod->type == dc->type)
    {
      d_print_comp (dpi, d_left (dc));
      return;
    }
       }
   }
      }

    case 155:
    case 137:
    case 176:
    case 140:
    case 161:
    case 158:
    case 179:
    case 168:
      {

 struct d_print_mod dpm;

 dpm.next = dpi->modifiers;
 dpi->modifiers = &dpm;
 dpm.mod = dc;
 dpm.printed = 0;
 dpm.templates = dpi->templates;

 d_print_comp (dpi, d_left (dc));



 if (! dpm.printed)
   d_print_mod (dpi, dc);

 dpi->modifiers = dpm.next;

 return;
      }

    case 181:
      if ((dpi->options & DMGL_JAVA) == 0)
 d_append_buffer (dpi, dc->u.s_builtin.type->name,
    dc->u.s_builtin.type->len);
      else
 d_append_buffer (dpi, dc->u.s_builtin.type->java_name,
    dc->u.s_builtin.type->java_len);
      return;

    case 141:
      d_print_comp (dpi, d_left (dc));
      return;

    case 171:
      {
 if ((dpi->options & DMGL_RET_POSTFIX) != 0)
   d_print_function_type (dpi, dc, dpi->modifiers);


 if (d_left (dc) != ((void*)0))
   {
     struct d_print_mod dpm;



     dpm.next = dpi->modifiers;
     dpi->modifiers = &dpm;
     dpm.mod = dc;
     dpm.printed = 0;
     dpm.templates = dpi->templates;

     d_print_comp (dpi, d_left (dc));

     dpi->modifiers = dpm.next;

     if (dpm.printed)
       return;



     if ((dpi->options & DMGL_RET_POSTFIX) == 0)
       d_append_char (dpi, ' ');
   }

 if ((dpi->options & DMGL_RET_POSTFIX) == 0)
   d_print_function_type (dpi, dc, dpi->modifiers);

 return;
      }

    case 184:
      {
 struct d_print_mod *hold_modifiers;
 struct d_print_mod adpm[4];
 unsigned int i;
 struct d_print_mod *pdpm;
 hold_modifiers = dpi->modifiers;

 adpm[0].next = hold_modifiers;
 dpi->modifiers = &adpm[0];
 adpm[0].mod = dc;
 adpm[0].printed = 0;
 adpm[0].templates = dpi->templates;

 i = 1;
 pdpm = hold_modifiers;
 while (pdpm != ((void*)0)
        && (pdpm->mod->type == 156
     || pdpm->mod->type == 138
     || pdpm->mod->type == 178))
   {
     if (! pdpm->printed)
       {
  if (i >= sizeof adpm / sizeof adpm[0])
    {
      d_print_error (dpi);
      return;
    }

  adpm[i] = *pdpm;
  adpm[i].next = dpi->modifiers;
  dpi->modifiers = &adpm[i];
  pdpm->printed = 1;
  ++i;
       }

     pdpm = pdpm->next;
   }

 d_print_comp (dpi, d_right (dc));

 dpi->modifiers = hold_modifiers;

 if (adpm[0].printed)
   return;

 while (i > 1)
   {
     --i;
     d_print_mod (dpi, adpm[i].mod);
   }

 d_print_array_type (dpi, dc, dpi->modifiers);

 return;
      }

    case 160:
      {
 struct d_print_mod dpm;

 dpm.next = dpi->modifiers;
 dpi->modifiers = &dpm;
 dpm.mod = dc;
 dpm.printed = 0;
 dpm.templates = dpi->templates;

 d_print_comp (dpi, d_right (dc));



 if (! dpm.printed)
   {
     d_append_char (dpi, ' ');
     d_print_comp (dpi, d_left (dc));
     d_append_string_constant (dpi, "::*");
   }

 dpi->modifiers = dpm.next;

 return;
      }

    case 185:
    case 152:
      d_print_comp (dpi, d_left (dc));
      if (d_right (dc) != ((void*)0))
 {
   d_append_string_constant (dpi, ", ");
   d_print_comp (dpi, d_right (dc));
 }
      return;

    case 162:
      {
 char c;

 d_append_string_constant (dpi, "operator");
 c = dc->u.s_operator.op->name[0];
 if (IS_LOWER (c))
   d_append_char (dpi, ' ');
 d_append_buffer (dpi, dc->u.s_operator.op->name,
    dc->u.s_operator.op->len);
 return;
      }

    case 172:
      d_append_string_constant (dpi, "operator ");
      d_print_comp (dpi, dc->u.s_extended_operator.name);
      return;

    case 180:
      d_append_string_constant (dpi, "operator ");
      d_print_cast (dpi, dc);
      return;

    case 142:
      if (d_left (dc)->type != 180)
 d_print_expr_op (dpi, d_left (dc));
      else
 {
   d_append_char (dpi, '(');
   d_print_cast (dpi, d_left (dc));
   d_append_char (dpi, ')');
 }
      d_append_char (dpi, '(');
      d_print_comp (dpi, d_right (dc));
      d_append_char (dpi, ')');
      return;

    case 183:
      if (d_right (dc)->type != 182)
 {
   d_print_error (dpi);
   return;
 }




      if (d_left (dc)->type == 162
   && d_left (dc)->u.s_operator.op->len == 1
   && d_left (dc)->u.s_operator.op->name[0] == '>')
 d_append_char (dpi, '(');

      d_append_char (dpi, '(');
      d_print_comp (dpi, d_left (d_right (dc)));
      d_append_string_constant (dpi, ") ");
      d_print_expr_op (dpi, d_left (dc));
      d_append_string_constant (dpi, " (");
      d_print_comp (dpi, d_right (d_right (dc)));
      d_append_char (dpi, ')');

      if (d_left (dc)->type == 162
   && d_left (dc)->u.s_operator.op->len == 1
   && d_left (dc)->u.s_operator.op->name[0] == '>')
 d_append_char (dpi, ')');

      return;

    case 182:

      d_print_error (dpi);
      return;

    case 149:
      if (d_right (dc)->type != 148
   || d_right (d_right (dc))->type != 147)
 {
   d_print_error (dpi);
   return;
 }
      d_append_char (dpi, '(');
      d_print_comp (dpi, d_left (d_right (dc)));
      d_append_string_constant (dpi, ") ");
      d_print_expr_op (dpi, d_left (dc));
      d_append_string_constant (dpi, " (");
      d_print_comp (dpi, d_left (d_right (d_right (dc))));
      d_append_string_constant (dpi, ") : (");
      d_print_comp (dpi, d_right (d_right (d_right (dc))));
      d_append_char (dpi, ')');
      return;

    case 148:
    case 147:

      d_print_error (dpi);
      return;

    case 166:
    case 165:
      {
 enum d_builtin_type_print tp;


 tp = D_PRINT_DEFAULT;
 if (d_left (dc)->type == 181)
   {
     tp = d_left (dc)->u.s_builtin.type->print;
     switch (tp)
       {
       case 133:
       case 130:
       case 132:
       case 129:
       case 131:
       case 128:
  if (d_right (dc)->type == 163)
    {
      if (dc->type == 165)
        d_append_char (dpi, '-');
      d_print_comp (dpi, d_right (dc));
      switch (tp)
        {
        default:
   break;
        case 130:
   d_append_char (dpi, 'u');
   break;
        case 132:
   d_append_char (dpi, 'l');
   break;
        case 129:
   d_append_string_constant (dpi, "ul");
   break;
        case 131:
   d_append_string_constant (dpi, "ll");
   break;
        case 128:
   d_append_string_constant (dpi, "ull");
   break;
        }
      return;
    }
  break;

       case 134:
  if (d_right (dc)->type == 163
      && d_right (dc)->u.s_name.len == 1
      && dc->type == 166)
    {
      switch (d_right (dc)->u.s_name.s[0])
        {
        case '0':
   d_append_string_constant (dpi, "false");
   return;
        case '1':
   d_append_string_constant (dpi, "true");
   return;
        default:
   break;
        }
    }
  break;

       default:
  break;
       }
   }

 d_append_char (dpi, '(');
 d_print_comp (dpi, d_left (dc));
 d_append_char (dpi, ')');
 if (dc->type == 165)
   d_append_char (dpi, '-');
 if (tp == D_PRINT_FLOAT)
   d_append_char (dpi, '[');
 d_print_comp (dpi, d_right (dc));
 if (tp == D_PRINT_FLOAT)
   d_append_char (dpi, ']');
      }
      return;

    default:
      d_print_error (dpi);
      return;
    }
}
