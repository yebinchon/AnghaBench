
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_callbacks {int undef; int define; int read_pch; int valid_pch; int def_pragma; int ident; int line_change; } ;
struct c_fileinfo {int time; } ;


 scalar_t__ DINFO_LEVEL_VERBOSE ;
 scalar_t__ DWARF2_DEBUG ;
 scalar_t__ VMS_AND_DWARF2_DEBUG ;
 int body_time ;
 int c_common_read_pch ;
 int c_common_valid_pch ;
 int cb_def_pragma ;
 int cb_define ;
 int cb_ident ;
 int cb_line_change ;
 int cb_undef ;
 struct cpp_callbacks* cpp_get_callbacks (int ) ;
 scalar_t__ debug_info_level ;
 scalar_t__ flag_detailed_statistics ;
 struct c_fileinfo* get_fileinfo (char*) ;
 int get_run_time () ;
 scalar_t__ header_time ;
 int parse_in ;
 scalar_t__ write_symbols ;

void
init_c_lex (void)
{
  struct cpp_callbacks *cb;
  struct c_fileinfo *toplevel;



  toplevel = get_fileinfo ("<top level>");
  if (flag_detailed_statistics)
    {
      header_time = 0;
      body_time = get_run_time ();
      toplevel->time = body_time;
    }

  cb = cpp_get_callbacks (parse_in);

  cb->line_change = cb_line_change;
  cb->ident = cb_ident;
  cb->def_pragma = cb_def_pragma;
  cb->valid_pch = c_common_valid_pch;
  cb->read_pch = c_common_read_pch;


  if (debug_info_level == DINFO_LEVEL_VERBOSE
      && (write_symbols == DWARF2_DEBUG
   || write_symbols == VMS_AND_DWARF2_DEBUG))
    {
      cb->define = cb_define;
      cb->undef = cb_undef;
    }
}
