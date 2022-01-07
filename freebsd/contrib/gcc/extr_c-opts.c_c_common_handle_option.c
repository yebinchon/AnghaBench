
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cl_option {int flags; int opt_text; } ;
typedef enum opt_code { ____Placeholder_opt_code } opt_code ;
struct TYPE_10__ {scalar_t__ lang; } ;
struct TYPE_6__ {int missing_files; int phony_targets; void* style; } ;
struct TYPE_9__ {int print_include_names; int inhibit_warnings; int warn_trigraphs; int warn_comments; int warn_num_sign_change; int warn_multichar; int warn_deprecated; int warn_endif_labels; int warnings_are_errors; int warn_invalid_pch; int warn_missing_include_dirs; int warn_newline_at_eof; int warn_system_headers; int warn_traditional; int warn_undef; int directives_only; int dollars_in_ident; int extended_identifiers; int operator_names; int restore_pch_deps; int preprocessed; int show_column; int tabstop; char const* narrow_charset; char const* wide_charset; char const* input_charset; int objc; int pedantic_errors; int pedantic; int remap; int trigraphs; int traditional; int warn_normalize; TYPE_1__ deps; int discard_comments_in_macro_exp; int discard_comments; } ;
struct TYPE_8__ {int warning_as_error_requested; } ;
struct TYPE_7__ {int inlines_hidden; } ;


 int AFTER ;
 int BRACKET ;
 scalar_t__ CLK_ASM ;
 int CL_C ;
 int CL_CXX ;
 int CL_Fortran ;
 int CL_ObjC ;
 int CL_ObjCXX ;
 void* DEPS_SYSTEM ;
 void* DEPS_USER ;
 int QUOTE ;
 int SYSTEM ;
 int TARGET_OPTF (int ) ;
 int add_path (int ,int ,int ,int) ;
 int add_prefixed_path (char const*,int ) ;
 int atoi (char const*) ;
 int c_common_print_pch_checksum (int ) ;
 int c_dialect_cxx () ;
 struct cl_option* cl_options ;
 char const* constant_string_class_name ;
 TYPE_5__* cpp_get_options (int ) ;
 TYPE_4__* cpp_opts ;
 int cpp_set_lang (int ,scalar_t__) ;
 int defer_opt (int,char const*) ;
 char const* deps_file ;
 int deps_seen ;
 int disable_builtin_function (char const*) ;
 int error (char*,...) ;
 int exit_after_options ;
 int flag_access_control ;
 int flag_check_new ;
 int flag_cond_mismatch ;
 int flag_conserve_space ;
 int flag_default_inline ;
 int flag_detailed_statistics ;
 int flag_elide_constructors ;
 int flag_enforce_eh_specs ;
 int flag_exceptions ;
 int flag_gen_declaration ;
 int flag_hosted ;
 int flag_implement_inlines ;
 int flag_implicit_inline_templates ;
 int flag_implicit_templates ;
 int flag_lax_vector_conversions ;
 int flag_ms_extensions ;
 int flag_new_for_scope ;
 int flag_next_runtime ;
 int flag_nil_receivers ;
 int flag_no_asm ;
 int flag_no_builtin ;
 int flag_no_gnu_keywords ;
 int flag_no_line_commands ;
 int flag_no_nonansi_builtin ;
 int flag_no_output ;
 int flag_optional_diags ;
 int flag_pch_preprocess ;
 int flag_permissive ;
 int flag_preprocess_only ;
 int flag_replace_objc_classes ;
 int flag_rtti ;
 int flag_short_double ;
 int flag_short_enums ;
 int flag_short_wchar ;
 int flag_signed_bitfields ;
 int flag_signed_char ;
 int flag_threadsafe_statics ;
 int flag_undef ;
 int flag_use_cxa_atexit ;
 int flag_use_cxa_get_exception_ptr ;
 int flag_use_repository ;
 int flag_weak ;
 int flag_working_directory ;
 int flag_zero_link ;
 TYPE_3__* global_dc ;
 int handle_OPT_d (char const*) ;
 char const* imultilib ;
 int inform (char*) ;
 char const* iprefix ;
 int lang_fortran ;
 int max_tinst_depth ;
 int mesg_implicit_function_declaration ;
 int normalized_C ;
 int normalized_KC ;
 int normalized_identifier_C ;
 int normalized_none ;
 char const* out_fname ;
 int parse_in ;
 char const* pch_file ;
 int print_struct_values ;
 int quote_chain_split ;
 int set_Wformat (int) ;
 int set_Wimplicit (int) ;
 int set_Wunused (int) ;
 int set_std_c89 (int,int) ;
 int set_std_c99 (int) ;
 int set_std_cxx98 (int) ;
 int set_struct_debug_option (char const*) ;
 int set_warn_strict_aliasing (int) ;
 int split_quote_chain () ;
 int std_cxx_inc ;
 int std_inc ;
 int stdout ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;
 char const* sysroot ;
 int verbose ;
 TYPE_2__ visibility_options ;
 int warn_address ;
 int warn_char_subscripts ;
 int warn_ecpp ;
 int warn_main ;
 int warn_missing_braces ;
 int warn_nontemplate_friend ;
 int warn_nonvdtor ;
 int warn_overlength_strings ;
 int warn_parentheses ;
 int warn_pointer_sign ;
 int warn_reorder ;
 int warn_return_type ;
 int warn_sequence_point ;
 int warn_sign_compare ;
 int warn_strict_null_sentinel ;
 int warn_strict_overflow ;
 int warn_switch ;
 int warn_uninitialized ;
 int warn_unknown_pragmas ;
 int warn_unused_macros ;
 int warn_variadic_macros ;
 int warn_write_strings ;
 int warning (int ,char*,...) ;
 int xstrdup (char const*) ;

int
c_common_handle_option (size_t scode, const char *arg, int value)
{
  const struct cl_option *option = &cl_options[scode];
  enum opt_code code = (enum opt_code) scode;
  int result = 1;



  bool preprocessing_asm_p = (cpp_get_options (parse_in)->lang == CLK_ASM);

  switch (code)
    {
    default:
      if (cl_options[code].flags & (CL_C | CL_CXX | CL_ObjC | CL_ObjCXX))
 break;




      result = 0;
      break;

    case 247:
      pch_file = arg;
      break;

    case 295:
      defer_opt (code, arg);
      break;

    case 294:
      cpp_opts->discard_comments = 0;
      break;

    case 293:
      cpp_opts->discard_comments = 0;
      cpp_opts->discard_comments_in_macro_exp = 0;
      break;

    case 292:
      defer_opt (code, arg);
      break;

    case 291:
      flag_preprocess_only = 1;
      break;

    case 289:
      cpp_opts->print_include_names = 1;
      break;

    case 290:
      TARGET_OPTF (xstrdup (arg));
      break;

    case 288:
      if (strcmp (arg, "-"))
 add_path (xstrdup (arg), BRACKET, 0, 1);
      else
 {
   if (quote_chain_split)
     error ("-I- specified twice");
   quote_chain_split = 1;
   split_quote_chain ();
   inform ("obsolete option -I- used, please use -iquote instead");
 }
      break;

    case 287:
    case 283:




      cpp_opts->deps.style = (code == 287 ? DEPS_SYSTEM: DEPS_USER);
      flag_no_output = 1;
      cpp_opts->inhibit_warnings = 1;
      break;

    case 286:
    case 282:
      cpp_opts->deps.style = (code == 286 ? DEPS_SYSTEM: DEPS_USER);
      deps_file = arg;
      break;

    case 285:
      deps_seen = 1;
      deps_file = arg;
      break;

    case 284:
      deps_seen = 1;
      cpp_opts->deps.missing_files = 1;
      break;

    case 281:
      deps_seen = 1;
      cpp_opts->deps.phony_targets = 1;
      break;

    case 280:
    case 279:
      deps_seen = 1;
      defer_opt (code, arg);
      break;

    case 278:
      flag_no_line_commands = 1;
      break;

    case 169:
      flag_working_directory = value;
      break;

    case 277:
      defer_opt (code, arg);
      break;

    case 276:

    case 261:
      set_Wunused (value);
      set_Wformat (value);
      set_Wimplicit (value);
      warn_char_subscripts = value;
      warn_missing_braces = value;

      if (code != 261)
 warn_parentheses = value;

      warn_return_type = value;
      warn_sequence_point = value;
      if (c_dialect_cxx ())
 warn_sign_compare = value;
      warn_switch = value;
      set_warn_strict_aliasing (value);
      warn_strict_overflow = value;
      warn_address = value;



      warn_unknown_pragmas = value;




      if (warn_uninitialized != 1)
 warn_uninitialized = (value ? 2 : 0);

      if (!c_dialect_cxx ())


 warn_main = value * 2;
      else
 {

   warn_reorder = value;
   warn_nontemplate_friend = value;
 }

      cpp_opts->warn_trigraphs = value;
      cpp_opts->warn_comments = value;
      cpp_opts->warn_num_sign_change = value;
      cpp_opts->warn_multichar = value;

      if (warn_pointer_sign == -1)
 warn_pointer_sign = 1;
      break;

    case 275:
    case 274:
      cpp_opts->warn_comments = value;
      break;

    case 273:
      cpp_opts->warn_deprecated = value;
      break;

    case 271:
      cpp_opts->warn_endif_labels = value;
      break;

    case 270:
      cpp_opts->warnings_are_errors = value;
      global_dc->warning_as_error_requested = value;
      break;

    case 269:
      mesg_implicit_function_declaration = 2;
      break;

    case 268:
      set_Wformat (value);
      break;

    case 267:
      set_Wformat (atoi (arg));
      break;

    case 266:
      set_Wimplicit (value);
      break;

    case 265:

      break;

    case 264:
      cpp_opts->warn_invalid_pch = value;
      break;

    case 263:
      if (value)
 warn_main = 1;
      else
 warn_main = -1;
      break;

    case 262:
      cpp_opts->warn_missing_include_dirs = value;
      break;

    case 260:
      cpp_opts->warn_multichar = value;
      break;


    case 259:
      cpp_opts->warn_newline_at_eof = value;
      break;


    case 258:
      if (!value || (arg && strcasecmp (arg, "none") == 0))
 cpp_opts->warn_normalize = normalized_none;
      else if (!arg || strcasecmp (arg, "nfkc") == 0)
 cpp_opts->warn_normalize = normalized_KC;
      else if (strcasecmp (arg, "id") == 0)
 cpp_opts->warn_normalize = normalized_identifier_C;
      else if (strcasecmp (arg, "nfc") == 0)
 cpp_opts->warn_normalize = normalized_C;
      else
 error ("argument %qs to %<-Wnormalized%> not recognized", arg);
      break;

    case 257:
      warn_return_type = value;
      break;

    case 256:
      warn_strict_null_sentinel = value;
      break;

    case 255:
      cpp_opts->warn_system_headers = value;
      break;

    case 254:
      cpp_opts->warn_traditional = value;
      break;

    case 253:
      cpp_opts->warn_trigraphs = value;
      break;

    case 252:
      cpp_opts->warn_undef = value;
      break;

    case 251:


      warn_unknown_pragmas = value * 2;
      break;

    case 250:
      warn_unused_macros = value;
      break;

    case 249:
      warn_variadic_macros = value;
      break;

    case 248:
      warn_write_strings = value;
      break;

    case 272:
      warn_ecpp = value;
      if (value)
        warn_nonvdtor = 1;
      break;

    case 246:
      if (!c_dialect_cxx ())
 set_std_c89 (0, 1);
      else
 set_std_cxx98 (1);
      break;

    case 245:
      handle_OPT_d (arg);
      break;

    case 237:
      if (!c_dialect_cxx ())
 {
   flag_cond_mismatch = value;
   break;
 }


    case 243:
    case 242:
    case 226:
    case 223:
    case 218:
    case 216:
    case 214:
    case 209:
    case 206:
    case 205:
    case 201:
    case 185:
    case 183:
    case 180:
    case 172:
    case 168:
    case 173:
      warning (0, "switch %qs is no longer supported", option->opt_text);
      break;

    case 244:
      flag_access_control = value;
      break;

    case 241:
      flag_no_asm = !value;
      break;

    case 240:
      flag_no_builtin = !value;
      break;

    case 239:
      if (value)
 result = 0;
      else
 disable_builtin_function (arg);
      break;

    case 233:
      cpp_opts->directives_only = 1;
      break;

    case 232:
      cpp_opts->dollars_in_ident = value;
      break;

    case 221:
      value = !value;

    case 215:
      flag_hosted = value;
      flag_no_builtin = !value;

      if (!value && warn_main == 2)
 warn_main = 0;
      break;

    case 191:
      flag_short_double = value;
      break;

    case 190:
      flag_short_enums = value;
      break;

    case 189:
      flag_short_wchar = value;
      break;

    case 187:
      flag_signed_bitfields = value;
      break;

    case 186:
      flag_signed_char = value;
      break;

    case 178:
      flag_signed_bitfields = !value;
      break;

    case 177:
      flag_signed_char = !value;
      break;

    case 238:
      flag_check_new = value;
      break;

    case 236:
      flag_conserve_space = value;
      break;

    case 235:
      constant_string_class_name = arg;
      break;

    case 234:
      flag_default_inline = value;
      break;

    case 231:
      flag_elide_constructors = value;
      break;

    case 227:
      flag_enforce_eh_specs = value;
      break;

    case 224:
      cpp_opts->extended_identifiers = value;
      break;

    case 222:
      flag_new_for_scope = value;
      break;

    case 220:
      flag_no_gnu_keywords = !value;
      break;

    case 219:
      flag_next_runtime = !value;
      break;

    case 217:
      warning (0, "-fhandle-exceptions has been renamed -fexceptions (and is now on by default)");
      flag_exceptions = value;
      break;

    case 213:
      flag_implement_inlines = value;
      break;

    case 212:
      flag_implicit_inline_templates = value;
      break;

    case 211:
      flag_implicit_templates = value;
      break;

    case 208:
      flag_lax_vector_conversions = value;
      break;

    case 207:
      flag_ms_extensions = value;
      break;

    case 204:
      flag_next_runtime = value;
      break;

    case 203:
      flag_nil_receivers = value;
      break;

    case 202:
      flag_no_nonansi_builtin = !value;
      break;

    case 200:
      cpp_opts->operator_names = value;
      break;

    case 199:
      flag_optional_diags = value;
      break;

    case 198:
      cpp_opts->restore_pch_deps = value;
      break;

    case 197:
      flag_pch_preprocess = value;
      break;

    case 196:
      flag_permissive = value;
      break;

    case 195:
      cpp_opts->preprocessed = value;
      break;

    case 194:
      flag_replace_objc_classes = value;
      break;

    case 193:
      flag_use_repository = value;
      if (value)
 flag_implicit_templates = 0;
      break;

    case 192:
      flag_rtti = value;
      break;

    case 188:
      cpp_opts->show_column = value;
      break;

    case 184:
      flag_detailed_statistics = value;
      break;

    case 182:

      if (value >= 1 && value <= 100)
 cpp_opts->tabstop = value;
      break;

    case 225:
      cpp_opts->narrow_charset = arg;
      break;

    case 170:
      cpp_opts->wide_charset = arg;
      break;

    case 210:
      cpp_opts->input_charset = arg;
      break;

    case 181:
      max_tinst_depth = value;
      break;

    case 176:
      flag_use_cxa_atexit = value;
      break;

    case 175:
      flag_use_cxa_get_exception_ptr = value;
      break;

    case 174:
      visibility_options.inlines_hidden = value;
      break;

    case 171:
      flag_weak = value;
      break;

    case 179:
      flag_threadsafe_statics = value;
      break;

    case 167:
      flag_zero_link = value;
      break;

    case 166:
      flag_gen_declaration = 1;
      break;

    case 230:
      set_struct_debug_option ("base");
      break;

    case 228:
      set_struct_debug_option ("dir:ord:sys,dir:gen:any,ind:base");
      break;

    case 229:
      set_struct_debug_option (arg);
      break;

    case 165:
      add_path (xstrdup (arg), AFTER, 0, 1);
      break;

    case 164:
    case 162:
      defer_opt (code, arg);
      break;

    case 163:
      imultilib = arg;
      break;

    case 161:
      iprefix = arg;
      break;

    case 160:
      add_path (xstrdup (arg), QUOTE, 0, 1);
      break;

    case 159:
      sysroot = arg;
      break;

    case 158:
      add_path (xstrdup (arg), SYSTEM, 0, 1);
      break;

    case 157:
      add_prefixed_path (arg, SYSTEM);
      break;

    case 156:
      add_prefixed_path (arg, BRACKET);
      break;

    case 155:
      cpp_set_lang (parse_in, CLK_ASM);
      cpp_opts->dollars_in_ident = 0;
      break;

    case 154:
      lang_fortran = 1;
      break;

    case 153:
      cpp_opts->objc = 1;
      break;

    case 152:
      std_inc = 0;
      break;

    case 151:
      std_cxx_inc = 0;
      break;

    case 150:
      if (!out_fname)
 out_fname = arg;
      else
 error ("output filename specified twice");
      break;




    case 148:
      cpp_opts->pedantic_errors = 1;

    case 149:
      cpp_opts->pedantic = 1;
      cpp_opts->warn_endif_labels = 1;
      if (warn_pointer_sign == -1)
 warn_pointer_sign = 1;
      if (warn_overlength_strings == -1)
 warn_overlength_strings = 1;
      break;

    case 147:
      print_struct_values = 1;
      break;

    case 146:
      c_common_print_pch_checksum (stdout);
      exit_after_options = 1;
      break;

    case 145:
      cpp_opts->remap = 1;
      break;

    case 141:
    case 137:
      if (!preprocessing_asm_p)
 set_std_cxx98 (code == 141 );
      break;

    case 144:
    case 136:
    case 135:
      if (!preprocessing_asm_p)
 set_std_c89 (code == 135 , 1 );
      break;

    case 140:
      if (!preprocessing_asm_p)
 set_std_c89 (0 , 0 );
      break;

    case 143:
    case 142:
    case 134:
    case 133:
      if (!preprocessing_asm_p)
 set_std_c99 (1 );
      break;

    case 139:
    case 138:
      if (!preprocessing_asm_p)
 set_std_c99 (0 );
      break;

    case 131:
      cpp_opts->trigraphs = 1;
      break;

    case 132:
      cpp_opts->traditional = 1;
      break;

    case 130:
      flag_undef = 1;
      break;

    case 128:
      cpp_opts->inhibit_warnings = 1;
      break;

    case 129:
      verbose = 1;
      break;
    }

  return result;
}
