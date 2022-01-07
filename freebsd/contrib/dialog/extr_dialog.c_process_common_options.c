
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int eOptions ;
struct TYPE_4__ {int visit_cols; scalar_t__ aspect_ratio; void* no_mouse; void* visit_items; void* tab_len; int output; void* use_shadow; void* use_scrollbar; void* separate_str; } ;
struct TYPE_3__ {int defaultno; char* week_start; void* iso_week; void* reorder; void* no_tags; void* no_items; void* begin_x; void* begin_y; void* begin_set; void* ascii_lines; void* no_lines; void* keep_tite; void* time_format; void* date_format; void* help_label; void* exit_label; void* extra_label; void* cancel_label; void* ok_label; void* no_label; void* yes_label; void* dlg_clear_screen; void* trim_whitespace; void* max_input; void* timeout_secs; void* sleep_secs; void* tab_correct; void* column_separator; void* output_separator; void* print_siz; void* last_key; void* keep_window; void* extra_button; void* help_tags; void* help_status; void* help_button; void* help_file; void* help_line; void* item_help; void* insecure; void* default_item; int default_button; void* beep_after_signal; void* beep_signal; void* size_err; void* single_quoted; void* quoted; void* nook; void* nocancel; void* cant_kill; void* nocollapse; void* no_nl_expand; void* cr_wrap; void* colors; void* separate_output; void* backtitle; void* title; } ;


 scalar_t__ DEFAULT_ASPECT_RATIO ;
 int DLG_EXIT_CANCEL ;
 int DLG_TRACE (char*) ;
 void* FALSE ;
 int IgnoreNonScreen (char**,int) ;
 int PrintTextOnly (char**,int*,int ) ;
 int PrintVersion (int ) ;
 int SCOLS ;
 int SLINES ;
 void* TRUE ;
 int button_code (void*) ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,int) ;
 void* ignore_unknown ;
 int lookupOption (char*,int) ;
 int mouse_close () ;
 void* optionString (char**,int*) ;
 void* optionValue (char**,int*) ;
 int process_trace_option (char**,int*) ;

__attribute__((used)) static int
process_common_options(int argc, char **argv, int offset, bool output)
{
    bool done = FALSE;
    eOptions code;

    DLG_TRACE(("# process_common_options, offset %d\n", offset));

    while (offset < argc && !done) {
 DLG_TRACE(("#\targv[%d] = %s\n", offset, argv[offset]));
 switch (code = lookupOption(argv[offset], 1)) {
 case 137:
     dialog_vars.title = optionString(argv, &offset);
     break;
 case 207:
     dialog_vars.backtitle = optionString(argv, &offset);
     break;
 case 148:
     dialog_state.separate_str = optionString(argv, &offset);
     break;
 case 149:
     dialog_vars.separate_output = TRUE;
     break;
 case 201:
     dialog_vars.colors = TRUE;
     break;
 case 199:
     dialog_vars.cr_wrap = TRUE;
     break;
 case 165:
     dialog_vars.no_nl_expand = TRUE;
     break;
 case 172:
     dialog_vars.nocollapse = TRUE;
     break;
 case 169:
     dialog_vars.cant_kill = TRUE;
     break;
 case 162:
     dialog_vars.nocancel = TRUE;
     break;
 case 161:
     dialog_vars.nook = TRUE;
     break;
 case 153:
     dialog_vars.quoted = TRUE;
     break;
 case 145:
     dialog_vars.single_quoted = TRUE;
     break;
 case 144:
     dialog_vars.size_err = TRUE;
     break;
 case 206:
     dialog_vars.beep_signal = TRUE;
     break;
 case 205:
     dialog_vars.beep_after_signal = TRUE;
     break;
 case 150:
     dialog_state.use_scrollbar = TRUE;
     break;
 case 146:
     dialog_state.use_shadow = TRUE;
     break;
 case 195:
     dialog_vars.defaultno = TRUE;
     dialog_vars.default_button = DLG_EXIT_CANCEL;
     break;
 case 197:
     dialog_vars.default_button = button_code(optionString(argv, &offset));
     dialog_vars.defaultno = dialog_vars.default_button == DLG_EXIT_CANCEL;
     break;
 case 196:
     dialog_vars.default_item = optionString(argv, &offset);
     break;
 case 181:
     dialog_vars.insecure = TRUE;
     break;
 case 179:
     dialog_vars.item_help = TRUE;
     break;
 case 186:
     dialog_vars.help_line = optionString(argv, &offset);
     break;
 case 188:
     dialog_vars.help_file = optionString(argv, &offset);
     break;
 case 189:
     dialog_vars.help_button = TRUE;
     break;
 case 185:
     dialog_vars.help_status = TRUE;
     break;
 case 184:
     dialog_vars.help_tags = TRUE;
     break;
 case 193:
     dialog_vars.extra_button = TRUE;
     break;
 case 182:
     ignore_unknown = TRUE;
     break;
 case 176:
     dialog_vars.keep_window = TRUE;
     break;
 case 175:
     dialog_vars.last_key = TRUE;
     break;
 case 164:
     dialog_state.use_shadow = FALSE;
     break;
 case 157:
     dialog_vars.print_siz = TRUE;
     break;
 case 156:
 case 155:
     PrintTextOnly(argv, &offset, code);
     break;
 case 158:
     if (output) {
  IgnoreNonScreen(argv, offset);
  fflush(dialog_state.output);
  fprintf(dialog_state.output, "MaxSize: %d, %d\n", SLINES, SCOLS);
     }
     break;
 case 154:
     if (output) {
  PrintVersion(dialog_state.output);
     }
     break;
 case 147:
 case 159:
     dialog_vars.output_separator = optionString(argv, &offset);
     break;
 case 200:
     dialog_vars.column_separator = optionString(argv, &offset);
     break;
 case 141:
     dialog_vars.tab_correct = TRUE;
     break;
 case 143:
     dialog_vars.sleep_secs = optionValue(argv, &offset);
     break;
 case 138:
     dialog_vars.timeout_secs = optionValue(argv, &offset);
     break;
 case 174:
     dialog_vars.max_input = optionValue(argv, &offset);
     break;
 case 140:
     dialog_state.tab_len = optionValue(argv, &offset);
     break;
 case 134:
     dialog_vars.trim_whitespace = TRUE;
     break;
 case 131:
     dialog_state.visit_items = TRUE;
     dialog_state.visit_cols = 1;
     break;
 case 209:
     dialog_state.aspect_ratio = optionValue(argv, &offset);
     break;
 case 204:
     dialog_vars.begin_set = TRUE;
     dialog_vars.begin_y = optionValue(argv, &offset);
     dialog_vars.begin_x = optionValue(argv, &offset);
     break;
 case 202:
     dialog_vars.dlg_clear_screen = TRUE;
     break;
 case 128:
     dialog_vars.yes_label = optionString(argv, &offset);
     break;
 case 168:
     dialog_vars.no_label = optionString(argv, &offset);
     break;
 case 160:
     dialog_vars.ok_label = optionString(argv, &offset);
     break;
 case 203:
     dialog_vars.cancel_label = optionString(argv, &offset);
     break;
 case 192:
     dialog_vars.extra_label = optionString(argv, &offset);
     break;
 case 194:
     dialog_vars.exit_label = optionString(argv, &offset);
     break;
 case 187:
     dialog_vars.help_label = optionString(argv, &offset);
     break;
 case 198:
     dialog_vars.date_format = optionString(argv, &offset);
     break;
 case 139:
     dialog_vars.time_format = optionString(argv, &offset);
     break;
 case 177:
     dialog_vars.keep_tite = TRUE;
     break;
 case 210:
     dialog_vars.ascii_lines = TRUE;
     dialog_vars.no_lines = FALSE;
     break;
 case 167:
     dialog_vars.no_lines = TRUE;
     dialog_vars.ascii_lines = FALSE;
     break;
 case 166:
     dialog_state.no_mouse = TRUE;
     mouse_close();
     break;
 case 183:
 case 129:
     (void) optionString(argv, &offset);

 case 211:
 case 208:
 case 191:
 case 178:
 case 173:
 case 171:
 case 151:
 case 142:
 case 133:
     break;
 case 132:
     if (ignore_unknown)
  break;

 default:
     done = TRUE;
     break;
 case 180:
     dialog_vars.iso_week = TRUE;
     if (dialog_vars.week_start == 0) {
  static char default_1st[] = "1";
  dialog_vars.week_start = default_1st;
     }
     break;
 }
 if (!done)
     offset++;
    }

    if (dialog_state.aspect_ratio == 0)
 dialog_state.aspect_ratio = DEFAULT_ASPECT_RATIO;

    return offset;
}
