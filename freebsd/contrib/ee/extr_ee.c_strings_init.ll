; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_strings_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_strings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_16__ = type { i8* }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@NL_CAT_LOCALE = common dso_local global i32 0, align 4
@catalog = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"modes menu\00", align 1
@modes_menu = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"tabs to spaces       \00", align 1
@mode_strings = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"case sensitive search\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"margins observed     \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"auto-paragraph format\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"eightbit characters  \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"info window          \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"right margin         \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"leave menu\00", align 1
@leave_menu = common dso_local global %struct.TYPE_14__* null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"save changes\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"no save\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"file menu\00", align 1
@file_menu = common dso_local global %struct.TYPE_15__* null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"read a file\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"write a file\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"save file\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"print editor contents\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"search menu\00", align 1
@search_menu = common dso_local global %struct.TYPE_10__* null, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"search for ...\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"spell menu\00", align 1
@spell_menu = common dso_local global %struct.TYPE_9__* null, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"use 'spell'\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"use 'ispell'\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"miscellaneous menu\00", align 1
@misc_menu = common dso_local global %struct.TYPE_12__* null, align 8
@.str.25 = private unnamed_addr constant [17 x i8] c"format paragraph\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"shell command\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"check spelling\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"main menu\00", align 1
@main_menu = common dso_local global %struct.TYPE_13__* null, align 8
@.str.29 = private unnamed_addr constant [13 x i8] c"leave editor\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"file operations\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"redraw screen\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"miscellaneous\00", align 1
@.str.35 = private unnamed_addr constant [76 x i8] c"Control keys:                                                              \00", align 1
@help_text = common dso_local global i8** null, align 8
@.str.36 = private unnamed_addr constant [76 x i8] c"^a ascii code           ^i tab                  ^r right                   \00", align 1
@.str.37 = private unnamed_addr constant [76 x i8] c"^b bottom of text       ^j newline              ^t top of text             \00", align 1
@.str.38 = private unnamed_addr constant [76 x i8] c"^c command              ^k delete char          ^u up                      \00", align 1
@.str.39 = private unnamed_addr constant [76 x i8] c"^d down                 ^l left                 ^v undelete word           \00", align 1
@.str.40 = private unnamed_addr constant [76 x i8] c"^e search prompt        ^m newline              ^w delete word             \00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"^f undelete char        ^n next page            ^x search                  \00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"^g begin of line        ^o end of line          ^y delete line             \00", align 1
@.str.43 = private unnamed_addr constant [76 x i8] c"^h backspace            ^p prev page            ^z undelete line           \00", align 1
@.str.44 = private unnamed_addr constant [76 x i8] c"^[ (escape) menu        ESC-Enter: exit ee                                 \00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c"                                                                           \00", align 1
@.str.46 = private unnamed_addr constant [76 x i8] c"Commands:                                                                  \00", align 1
@.str.47 = private unnamed_addr constant [76 x i8] c"help    : get this info                 file    : print file name          \00", align 1
@.str.48 = private unnamed_addr constant [76 x i8] c"read    : read a file                   char    : ascii code of char       \00", align 1
@.str.49 = private unnamed_addr constant [76 x i8] c"write   : write a file                  case    : case sensitive search    \00", align 1
@.str.50 = private unnamed_addr constant [76 x i8] c"exit    : leave and save                nocase  : case insensitive search  \00", align 1
@.str.51 = private unnamed_addr constant [76 x i8] c"quit    : leave, no save                !cmd    : execute \22cmd\22 in shell   \00", align 1
@.str.52 = private unnamed_addr constant [76 x i8] c"line    : display line #                0-9     : go to line \22#\22           \00", align 1
@.str.53 = private unnamed_addr constant [78 x i8] c"expand  : expand tabs                   noexpand: do not expand tabs         \00", align 1
@.str.54 = private unnamed_addr constant [78 x i8] c"                                                                             \00", align 1
@.str.55 = private unnamed_addr constant [79 x i8] c"  ee [+#] [-i] [-e] [-h] [file(s)]                                            \00", align 1
@.str.56 = private unnamed_addr constant [79 x i8] c"+# :go to line #  -i :no info window  -e : don't expand tabs  -h :no highlight\00", align 1
@.str.57 = private unnamed_addr constant [79 x i8] c"^[ (escape) menu  ^e search prompt  ^y delete line    ^u up     ^p prev page  \00", align 1
@control_keys = common dso_local global i8** null, align 8
@.str.58 = private unnamed_addr constant [79 x i8] c"^a ascii code     ^x search         ^z undelete line  ^d down   ^n next page  \00", align 1
@.str.59 = private unnamed_addr constant [79 x i8] c"^b bottom of text ^g begin of line  ^w delete word    ^l left                 \00", align 1
@.str.60 = private unnamed_addr constant [79 x i8] c"^t top of text    ^o end of line    ^v undelete word  ^r right                \00", align 1
@.str.61 = private unnamed_addr constant [79 x i8] c"^c command        ^k delete char    ^f undelete char      ESC-Enter: exit ee  \00", align 1
@.str.62 = private unnamed_addr constant [77 x i8] c"help : get help info  |file  : print file name         |line : print line # \00", align 1
@command_strings = common dso_local global i8** null, align 8
@.str.63 = private unnamed_addr constant [77 x i8] c"read : read a file    |char  : ascii code of char      |0-9 : go to line \22#\22\00", align 1
@.str.64 = private unnamed_addr constant [79 x i8] c"write: write a file   |case  : case sensitive search   |exit : leave and save \00", align 1
@.str.65 = private unnamed_addr constant [78 x i8] c"!cmd : shell \22cmd\22    |nocase: ignore case in search   |quit : leave, no save\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"expand: expand tabs   |noexpand: do not expand tabs                           \00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"    press Escape (^[) for menu\00", align 1
@com_win_message = common dso_local global i8* null, align 8
@.str.68 = private unnamed_addr constant [8 x i8] c"no file\00", align 1
@no_file_string = common dso_local global i8* null, align 8
@.str.69 = private unnamed_addr constant [13 x i8] c"ascii code: \00", align 1
@ascii_code_str = common dso_local global i8* null, align 8
@.str.70 = private unnamed_addr constant [36 x i8] c"sending contents of buffer to \22%s\22 \00", align 1
@printer_msg_str = common dso_local global i8* null, align 8
@.str.71 = private unnamed_addr constant [10 x i8] c"command: \00", align 1
@command_str = common dso_local global i8* null, align 8
@.str.72 = private unnamed_addr constant [24 x i8] c"name of file to write: \00", align 1
@file_write_prompt_str = common dso_local global i8* null, align 8
@.str.73 = private unnamed_addr constant [23 x i8] c"name of file to read: \00", align 1
@file_read_prompt_str = common dso_local global i8* null, align 8
@.str.74 = private unnamed_addr constant [15 x i8] c"character = %d\00", align 1
@char_str = common dso_local global i8* null, align 8
@.str.75 = private unnamed_addr constant [21 x i8] c"unknown command \22%s\22\00", align 1
@unkn_cmd_str = common dso_local global i8* null, align 8
@.str.76 = private unnamed_addr constant [30 x i8] c"entered command is not unique\00", align 1
@non_unique_cmd_msg = common dso_local global i8* null, align 8
@.str.77 = private unnamed_addr constant [10 x i8] c"line %d  \00", align 1
@line_num_str = common dso_local global i8* null, align 8
@.str.78 = private unnamed_addr constant [12 x i8] c"length = %d\00", align 1
@line_len_str = common dso_local global i8* null, align 8
@.str.79 = private unnamed_addr constant [22 x i8] c"current file is \22%s\22 \00", align 1
@current_file_str = common dso_local global i8* null, align 8
@.str.80 = private unnamed_addr constant [51 x i8] c"usage: %s [-i] [-e] [-h] [+line_number] [file(s)]\0A\00", align 1
@usage0 = common dso_local global i8* null, align 8
@.str.81 = private unnamed_addr constant [34 x i8] c"       -i   turn off info window\0A\00", align 1
@usage1 = common dso_local global i8* null, align 8
@.str.82 = private unnamed_addr constant [43 x i8] c"       -e   do not convert tabs to spaces\0A\00", align 1
@usage2 = common dso_local global i8* null, align 8
@.str.83 = private unnamed_addr constant [37 x i8] c"       -h   do not use highlighting\0A\00", align 1
@usage3 = common dso_local global i8* null, align 8
@.str.84 = private unnamed_addr constant [25 x i8] c"file \22%s\22 is a directory\00", align 1
@file_is_dir_msg = common dso_local global i8* null, align 8
@.str.85 = private unnamed_addr constant [14 x i8] c"new file \22%s\22\00", align 1
@new_file_msg = common dso_local global i8* null, align 8
@.str.86 = private unnamed_addr constant [16 x i8] c"can't open \22%s\22\00", align 1
@cant_open_msg = common dso_local global i8* null, align 8
@.str.87 = private unnamed_addr constant [20 x i8] c"file \22%s\22, %d lines\00", align 1
@open_file_msg = common dso_local global i8* null, align 8
@.str.88 = private unnamed_addr constant [27 x i8] c"finished reading file \22%s\22\00", align 1
@file_read_fin_msg = common dso_local global i8* null, align 8
@.str.89 = private unnamed_addr constant [18 x i8] c"reading file \22%s\22\00", align 1
@reading_file_msg = common dso_local global i8* null, align 8
@.str.90 = private unnamed_addr constant [12 x i8] c", read only\00", align 1
@read_only_msg = common dso_local global i8* null, align 8
@file_read_lines_msg = common dso_local global i8* null, align 8
@.str.91 = private unnamed_addr constant [21 x i8] c"enter name of file: \00", align 1
@save_file_name_prompt = common dso_local global i8* null, align 8
@.str.92 = private unnamed_addr constant [36 x i8] c"no filename entered: file not saved\00", align 1
@file_not_saved_msg = common dso_local global i8* null, align 8
@.str.93 = private unnamed_addr constant [49 x i8] c"changes have been made, are you sure? (y/n [n]) \00", align 1
@changes_made_prompt = common dso_local global i8* null, align 8
@.str.94 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@yes_char = common dso_local global i8* null, align 8
@.str.95 = private unnamed_addr constant [43 x i8] c"file already exists, overwrite? (y/n) [n] \00", align 1
@file_exists_prompt = common dso_local global i8* null, align 8
@.str.96 = private unnamed_addr constant [27 x i8] c"unable to create file \22%s\22\00", align 1
@create_file_fail_msg = common dso_local global i8* null, align 8
@.str.97 = private unnamed_addr constant [18 x i8] c"writing file \22%s\22\00", align 1
@writing_file_msg = common dso_local global i8* null, align 8
@.str.98 = private unnamed_addr constant [29 x i8] c"\22%s\22 %d lines, %d characters\00", align 1
@file_written_msg = common dso_local global i8* null, align 8
@.str.99 = private unnamed_addr constant [24 x i8] c"           ...searching\00", align 1
@searching_msg = common dso_local global i8* null, align 8
@.str.100 = private unnamed_addr constant [22 x i8] c"string \22%s\22 not found\00", align 1
@str_not_found_msg = common dso_local global i8* null, align 8
@.str.101 = private unnamed_addr constant [13 x i8] c"search for: \00", align 1
@search_prompt_str = common dso_local global i8* null, align 8
@.str.102 = private unnamed_addr constant [19 x i8] c"could not exec %s\0A\00", align 1
@exec_err_msg = common dso_local global i8* null, align 8
@.str.103 = private unnamed_addr constant [26 x i8] c"press return to continue \00", align 1
@continue_msg = common dso_local global i8* null, align 8
@.str.104 = private unnamed_addr constant [20 x i8] c"press Esc to cancel\00", align 1
@menu_cancel_msg = common dso_local global i8* null, align 8
@.str.105 = private unnamed_addr constant [26 x i8] c"menu too large for window\00", align 1
@menu_size_err_msg = common dso_local global i8* null, align 8
@.str.106 = private unnamed_addr constant [27 x i8] c"press any key to continue \00", align 1
@press_any_key_msg = common dso_local global i8* null, align 8
@.str.107 = private unnamed_addr constant [16 x i8] c"shell command: \00", align 1
@shell_prompt = common dso_local global i8* null, align 8
@.str.108 = private unnamed_addr constant [27 x i8] c"...formatting paragraph...\00", align 1
@formatting_msg = common dso_local global i8* null, align 8
@.str.109 = private unnamed_addr constant [54 x i8] c"<!echo 'list of unrecognized words'; echo -=-=-=-=-=-\00", align 1
@shell_echo_msg = common dso_local global i8* null, align 8
@.str.110 = private unnamed_addr constant [43 x i8] c"sending contents of edit buffer to 'spell'\00", align 1
@spell_in_prog_msg = common dso_local global i8* null, align 8
@.str.111 = private unnamed_addr constant [18 x i8] c"right margin is: \00", align 1
@margin_prompt = common dso_local global i8* null, align 8
@.str.112 = private unnamed_addr constant [55 x i8] c"restricted mode: unable to perform requested operation\00", align 1
@restricted_msg = common dso_local global i8* null, align 8
@.str.113 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@ON = common dso_local global i8* null, align 8
@.str.114 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@OFF = common dso_local global i8* null, align 8
@.str.115 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@HELP = common dso_local global i8* null, align 8
@.str.116 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@WRITE = common dso_local global i8* null, align 8
@.str.117 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@READ = common dso_local global i8* null, align 8
@.str.118 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@LINE = common dso_local global i8* null, align 8
@.str.119 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@FILE_str = common dso_local global i8* null, align 8
@.str.120 = private unnamed_addr constant [10 x i8] c"CHARACTER\00", align 1
@CHARACTER = common dso_local global i8* null, align 8
@.str.121 = private unnamed_addr constant [7 x i8] c"REDRAW\00", align 1
@REDRAW = common dso_local global i8* null, align 8
@.str.122 = private unnamed_addr constant [11 x i8] c"RESEQUENCE\00", align 1
@RESEQUENCE = common dso_local global i8* null, align 8
@.str.123 = private unnamed_addr constant [7 x i8] c"AUTHOR\00", align 1
@AUTHOR = common dso_local global i8* null, align 8
@.str.124 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.125 = private unnamed_addr constant [5 x i8] c"CASE\00", align 1
@CASE = common dso_local global i8* null, align 8
@.str.126 = private unnamed_addr constant [7 x i8] c"NOCASE\00", align 1
@NOCASE = common dso_local global i8* null, align 8
@.str.127 = private unnamed_addr constant [7 x i8] c"EXPAND\00", align 1
@EXPAND = common dso_local global i8* null, align 8
@.str.128 = private unnamed_addr constant [9 x i8] c"NOEXPAND\00", align 1
@NOEXPAND = common dso_local global i8* null, align 8
@.str.129 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@Exit_string = common dso_local global i8* null, align 8
@.str.130 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@QUIT_string = common dso_local global i8* null, align 8
@.str.131 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@INFO = common dso_local global i32* null, align 8
@.str.132 = private unnamed_addr constant [7 x i8] c"NOINFO\00", align 1
@NOINFO = common dso_local global i32* null, align 8
@.str.133 = private unnamed_addr constant [8 x i8] c"MARGINS\00", align 1
@MARGINS = common dso_local global i32* null, align 8
@.str.134 = private unnamed_addr constant [10 x i8] c"NOMARGINS\00", align 1
@NOMARGINS = common dso_local global i32* null, align 8
@.str.135 = private unnamed_addr constant [11 x i8] c"AUTOFORMAT\00", align 1
@AUTOFORMAT = common dso_local global i32* null, align 8
@.str.136 = private unnamed_addr constant [13 x i8] c"NOAUTOFORMAT\00", align 1
@NOAUTOFORMAT = common dso_local global i32* null, align 8
@.str.137 = private unnamed_addr constant [5 x i8] c"ECHO\00", align 1
@Echo = common dso_local global i32* null, align 8
@.str.138 = private unnamed_addr constant [13 x i8] c"PRINTCOMMAND\00", align 1
@PRINTCOMMAND = common dso_local global i32* null, align 8
@.str.139 = private unnamed_addr constant [12 x i8] c"RIGHTMARGIN\00", align 1
@RIGHTMARGIN = common dso_local global i32* null, align 8
@.str.140 = private unnamed_addr constant [10 x i8] c"HIGHLIGHT\00", align 1
@HIGHLIGHT = common dso_local global i32* null, align 8
@.str.141 = private unnamed_addr constant [12 x i8] c"NOHIGHLIGHT\00", align 1
@NOHIGHLIGHT = common dso_local global i32* null, align 8
@.str.142 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1
@EIGHTBIT = common dso_local global i32* null, align 8
@.str.143 = private unnamed_addr constant [11 x i8] c"NOEIGHTBIT\00", align 1
@NOEIGHTBIT = common dso_local global i32* null, align 8
@.str.144 = private unnamed_addr constant [22 x i8] c"emacs key bindings   \00", align 1
@emacs_help_text = common dso_local global i8** null, align 8
@.str.145 = private unnamed_addr constant [76 x i8] c"^a beginning of line    ^i tab                  ^r restore word            \00", align 1
@.str.146 = private unnamed_addr constant [76 x i8] c"^b back 1 char          ^j undel char           ^t top of text             \00", align 1
@.str.147 = private unnamed_addr constant [76 x i8] c"^c command              ^k delete line          ^u bottom of text          \00", align 1
@.str.148 = private unnamed_addr constant [76 x i8] c"^d delete char          ^l undelete line        ^v next page               \00", align 1
@.str.149 = private unnamed_addr constant [76 x i8] c"^e end of line          ^m newline              ^w delete word             \00", align 1
@.str.150 = private unnamed_addr constant [76 x i8] c"^f forward 1 char       ^n next line            ^x search                  \00", align 1
@.str.151 = private unnamed_addr constant [76 x i8] c"^g go back 1 page       ^o ascii char insert    ^y search prompt           \00", align 1
@.str.152 = private unnamed_addr constant [76 x i8] c"^h backspace            ^p prev line            ^z next word               \00", align 1
@.str.153 = private unnamed_addr constant [79 x i8] c"^[ (escape) menu ^y search prompt ^k delete line   ^p prev li     ^g prev page\00", align 1
@emacs_control_keys = common dso_local global i8** null, align 8
@.str.154 = private unnamed_addr constant [79 x i8] c"^o ascii code    ^x search        ^l undelete line ^n next li     ^v next page\00", align 1
@.str.155 = private unnamed_addr constant [79 x i8] c"^u end of file   ^a begin of line ^w delete word   ^b back 1 char ^z next word\00", align 1
@.str.156 = private unnamed_addr constant [79 x i8] c"^t top of text   ^e end of line   ^r restore word  ^f forward char            \00", align 1
@.str.157 = private unnamed_addr constant [80 x i8] c"^c command       ^d delete char   ^j undelete char              ESC-Enter: exit\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"EMACS\00", align 1
@EMACS_string = common dso_local global i32* null, align 8
@.str.159 = private unnamed_addr constant [8 x i8] c"NOEMACS\00", align 1
@NOEMACS_string = common dso_local global i32* null, align 8
@.str.160 = private unnamed_addr constant [34 x i8] c"       +#   put cursor at line #\0A\00", align 1
@usage4 = common dso_local global i8* null, align 8
@.str.161 = private unnamed_addr constant [61 x i8] c"unable to open .init.ee for writing, no configuration saved!\00", align 1
@conf_dump_err_msg = common dso_local global i8* null, align 8
@.str.162 = private unnamed_addr constant [34 x i8] c"ee configuration saved in file %s\00", align 1
@conf_dump_success_msg = common dso_local global i8* null, align 8
@.str.163 = private unnamed_addr constant [26 x i8] c"save editor configuration\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"save ee configuration\00", align 1
@config_dump_menu = common dso_local global %struct.TYPE_16__* null, align 8
@.str.165 = private unnamed_addr constant [26 x i8] c"save in current directory\00", align 1
@.str.166 = private unnamed_addr constant [23 x i8] c"save in home directory\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"ee configuration not saved\00", align 1
@conf_not_saved_msg = common dso_local global i8* null, align 8
@.str.168 = private unnamed_addr constant [38 x i8] c"must specify a file when invoking ree\00", align 1
@ree_no_file_msg = common dso_local global i8* null, align 8
@menu_too_lrg_msg = common dso_local global i8* null, align 8
@.str.169 = private unnamed_addr constant [9 x i8] c"^^more^^\00", align 1
@more_above_str = common dso_local global i8* null, align 8
@.str.170 = private unnamed_addr constant [9 x i8] c"VVmoreVV\00", align 1
@more_below_str = common dso_local global i8* null, align 8
@.str.171 = private unnamed_addr constant [22 x i8] c"16 bit characters    \00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"16BIT\00", align 1
@chinese_cmd = common dso_local global i8* null, align 8
@.str.173 = private unnamed_addr constant [8 x i8] c"NO16BIT\00", align 1
@nochinese_cmd = common dso_local global i8* null, align 8
@commands = common dso_local global i8** null, align 8
@.str.174 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.183 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@init_strings = common dso_local global i32** null, align 8
@NUM_MODES_ITEMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strings_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LC_ALL, align 4
  %3 = call i32 @setlocale(i32 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @NL_CAT_LOCALE, align 4
  %5 = call i32 @catopen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  store i32 %5, i32* @catalog, align 4
  %6 = call i8* @catgetlocal(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @modes_menu, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = call i8* @catgetlocal(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i8**, i8*** @mode_strings, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* %10, i8** %12, align 8
  %13 = call i8* @catgetlocal(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i8**, i8*** @mode_strings, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 2
  store i8* %13, i8** %15, align 8
  %16 = call i8* @catgetlocal(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %17 = load i8**, i8*** @mode_strings, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 3
  store i8* %16, i8** %18, align 8
  %19 = call i8* @catgetlocal(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i8**, i8*** @mode_strings, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 4
  store i8* %19, i8** %21, align 8
  %22 = call i8* @catgetlocal(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i8**, i8*** @mode_strings, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 5
  store i8* %22, i8** %24, align 8
  %25 = call i8* @catgetlocal(i32 7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %26 = load i8**, i8*** @mode_strings, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 6
  store i8* %25, i8** %27, align 8
  %28 = call i8* @catgetlocal(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %29 = load i8**, i8*** @mode_strings, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 8
  store i8* %28, i8** %30, align 8
  %31 = call i8* @catgetlocal(i32 9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leave_menu, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = call i8* @catgetlocal(i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leave_menu, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = call i8* @catgetlocal(i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leave_menu, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = call i8* @catgetlocal(i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @file_menu, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = call i8* @catgetlocal(i32 13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @file_menu, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = call i8* @catgetlocal(i32 14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @file_menu, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 2
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = call i8* @catgetlocal(i32 15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** @file_menu, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 3
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = call i8* @catgetlocal(i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @file_menu, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = call i8* @catgetlocal(i32 17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @search_menu, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = call i8* @catgetlocal(i32 18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @search_menu, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = call i8* @catgetlocal(i32 19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @search_menu, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = call i8* @catgetlocal(i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @spell_menu, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = call i8* @catgetlocal(i32 21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @spell_menu, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = call i8* @catgetlocal(i32 22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @spell_menu, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = call i8* @catgetlocal(i32 23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @misc_menu, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = call i8* @catgetlocal(i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @misc_menu, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = call i8* @catgetlocal(i32 25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @misc_menu, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  %99 = call i8* @catgetlocal(i32 26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @misc_menu, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 3
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  %103 = call i8* @catgetlocal(i32 27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = call i8* @catgetlocal(i32 28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = call i8* @catgetlocal(i32 29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 2
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = call i8* @catgetlocal(i32 30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  %119 = call i8* @catgetlocal(i32 31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 4
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  %123 = call i8* @catgetlocal(i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 5
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = call i8* @catgetlocal(i32 33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 6
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  %131 = call i8* @catgetlocal(i32 34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** @main_menu, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 7
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  %135 = call i8* @catgetlocal(i32 35, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.35, i64 0, i64 0))
  %136 = load i8**, i8*** @help_text, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  store i8* %135, i8** %137, align 8
  %138 = call i8* @catgetlocal(i32 36, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.36, i64 0, i64 0))
  %139 = load i8**, i8*** @help_text, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  store i8* %138, i8** %140, align 8
  %141 = call i8* @catgetlocal(i32 37, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.37, i64 0, i64 0))
  %142 = load i8**, i8*** @help_text, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 2
  store i8* %141, i8** %143, align 8
  %144 = call i8* @catgetlocal(i32 38, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.38, i64 0, i64 0))
  %145 = load i8**, i8*** @help_text, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 3
  store i8* %144, i8** %146, align 8
  %147 = call i8* @catgetlocal(i32 39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.39, i64 0, i64 0))
  %148 = load i8**, i8*** @help_text, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 4
  store i8* %147, i8** %149, align 8
  %150 = call i8* @catgetlocal(i32 40, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.40, i64 0, i64 0))
  %151 = load i8**, i8*** @help_text, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 5
  store i8* %150, i8** %152, align 8
  %153 = call i8* @catgetlocal(i32 41, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.41, i64 0, i64 0))
  %154 = load i8**, i8*** @help_text, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 6
  store i8* %153, i8** %155, align 8
  %156 = call i8* @catgetlocal(i32 42, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.42, i64 0, i64 0))
  %157 = load i8**, i8*** @help_text, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 7
  store i8* %156, i8** %158, align 8
  %159 = call i8* @catgetlocal(i32 43, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.43, i64 0, i64 0))
  %160 = load i8**, i8*** @help_text, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 8
  store i8* %159, i8** %161, align 8
  %162 = call i8* @catgetlocal(i32 44, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.44, i64 0, i64 0))
  %163 = load i8**, i8*** @help_text, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 9
  store i8* %162, i8** %164, align 8
  %165 = call i8* @catgetlocal(i32 45, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.45, i64 0, i64 0))
  %166 = load i8**, i8*** @help_text, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 10
  store i8* %165, i8** %167, align 8
  %168 = call i8* @catgetlocal(i32 46, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.46, i64 0, i64 0))
  %169 = load i8**, i8*** @help_text, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 11
  store i8* %168, i8** %170, align 8
  %171 = call i8* @catgetlocal(i32 47, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.47, i64 0, i64 0))
  %172 = load i8**, i8*** @help_text, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 12
  store i8* %171, i8** %173, align 8
  %174 = call i8* @catgetlocal(i32 48, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.48, i64 0, i64 0))
  %175 = load i8**, i8*** @help_text, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 13
  store i8* %174, i8** %176, align 8
  %177 = call i8* @catgetlocal(i32 49, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.49, i64 0, i64 0))
  %178 = load i8**, i8*** @help_text, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 14
  store i8* %177, i8** %179, align 8
  %180 = call i8* @catgetlocal(i32 50, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.50, i64 0, i64 0))
  %181 = load i8**, i8*** @help_text, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 15
  store i8* %180, i8** %182, align 8
  %183 = call i8* @catgetlocal(i32 51, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.51, i64 0, i64 0))
  %184 = load i8**, i8*** @help_text, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 16
  store i8* %183, i8** %185, align 8
  %186 = call i8* @catgetlocal(i32 52, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.52, i64 0, i64 0))
  %187 = load i8**, i8*** @help_text, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 17
  store i8* %186, i8** %188, align 8
  %189 = call i8* @catgetlocal(i32 53, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.53, i64 0, i64 0))
  %190 = load i8**, i8*** @help_text, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 18
  store i8* %189, i8** %191, align 8
  %192 = call i8* @catgetlocal(i32 54, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.54, i64 0, i64 0))
  %193 = load i8**, i8*** @help_text, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 19
  store i8* %192, i8** %194, align 8
  %195 = call i8* @catgetlocal(i32 55, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.55, i64 0, i64 0))
  %196 = load i8**, i8*** @help_text, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 20
  store i8* %195, i8** %197, align 8
  %198 = call i8* @catgetlocal(i32 56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.56, i64 0, i64 0))
  %199 = load i8**, i8*** @help_text, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 21
  store i8* %198, i8** %200, align 8
  %201 = call i8* @catgetlocal(i32 57, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.57, i64 0, i64 0))
  %202 = load i8**, i8*** @control_keys, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 0
  store i8* %201, i8** %203, align 8
  %204 = call i8* @catgetlocal(i32 58, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.58, i64 0, i64 0))
  %205 = load i8**, i8*** @control_keys, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 1
  store i8* %204, i8** %206, align 8
  %207 = call i8* @catgetlocal(i32 59, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.59, i64 0, i64 0))
  %208 = load i8**, i8*** @control_keys, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 2
  store i8* %207, i8** %209, align 8
  %210 = call i8* @catgetlocal(i32 60, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.60, i64 0, i64 0))
  %211 = load i8**, i8*** @control_keys, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 3
  store i8* %210, i8** %212, align 8
  %213 = call i8* @catgetlocal(i32 61, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.61, i64 0, i64 0))
  %214 = load i8**, i8*** @control_keys, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 4
  store i8* %213, i8** %215, align 8
  %216 = call i8* @catgetlocal(i32 62, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.62, i64 0, i64 0))
  %217 = load i8**, i8*** @command_strings, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  store i8* %216, i8** %218, align 8
  %219 = call i8* @catgetlocal(i32 63, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.63, i64 0, i64 0))
  %220 = load i8**, i8*** @command_strings, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 1
  store i8* %219, i8** %221, align 8
  %222 = call i8* @catgetlocal(i32 64, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.64, i64 0, i64 0))
  %223 = load i8**, i8*** @command_strings, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 2
  store i8* %222, i8** %224, align 8
  %225 = call i8* @catgetlocal(i32 65, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.65, i64 0, i64 0))
  %226 = load i8**, i8*** @command_strings, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 3
  store i8* %225, i8** %227, align 8
  %228 = call i8* @catgetlocal(i32 66, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.66, i64 0, i64 0))
  %229 = load i8**, i8*** @command_strings, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 4
  store i8* %228, i8** %230, align 8
  %231 = call i8* @catgetlocal(i32 67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i64 0, i64 0))
  store i8* %231, i8** @com_win_message, align 8
  %232 = call i8* @catgetlocal(i32 68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0))
  store i8* %232, i8** @no_file_string, align 8
  %233 = call i8* @catgetlocal(i32 69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0))
  store i8* %233, i8** @ascii_code_str, align 8
  %234 = call i8* @catgetlocal(i32 70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i64 0, i64 0))
  store i8* %234, i8** @printer_msg_str, align 8
  %235 = call i8* @catgetlocal(i32 71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0))
  store i8* %235, i8** @command_str, align 8
  %236 = call i8* @catgetlocal(i32 72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i64 0, i64 0))
  store i8* %236, i8** @file_write_prompt_str, align 8
  %237 = call i8* @catgetlocal(i32 73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i64 0, i64 0))
  store i8* %237, i8** @file_read_prompt_str, align 8
  %238 = call i8* @catgetlocal(i32 74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0))
  store i8* %238, i8** @char_str, align 8
  %239 = call i8* @catgetlocal(i32 75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i64 0, i64 0))
  store i8* %239, i8** @unkn_cmd_str, align 8
  %240 = call i8* @catgetlocal(i32 76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0))
  store i8* %240, i8** @non_unique_cmd_msg, align 8
  %241 = call i8* @catgetlocal(i32 77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0))
  store i8* %241, i8** @line_num_str, align 8
  %242 = call i8* @catgetlocal(i32 78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0))
  store i8* %242, i8** @line_len_str, align 8
  %243 = call i8* @catgetlocal(i32 79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i64 0, i64 0))
  store i8* %243, i8** @current_file_str, align 8
  %244 = call i8* @catgetlocal(i32 80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.80, i64 0, i64 0))
  store i8* %244, i8** @usage0, align 8
  %245 = call i8* @catgetlocal(i32 81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i64 0, i64 0))
  store i8* %245, i8** @usage1, align 8
  %246 = call i8* @catgetlocal(i32 82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i64 0, i64 0))
  store i8* %246, i8** @usage2, align 8
  %247 = call i8* @catgetlocal(i32 83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.83, i64 0, i64 0))
  store i8* %247, i8** @usage3, align 8
  %248 = call i8* @catgetlocal(i32 84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i64 0, i64 0))
  store i8* %248, i8** @file_is_dir_msg, align 8
  %249 = call i8* @catgetlocal(i32 85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0))
  store i8* %249, i8** @new_file_msg, align 8
  %250 = call i8* @catgetlocal(i32 86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i64 0, i64 0))
  store i8* %250, i8** @cant_open_msg, align 8
  %251 = call i8* @catgetlocal(i32 87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i64 0, i64 0))
  store i8* %251, i8** @open_file_msg, align 8
  %252 = call i8* @catgetlocal(i32 88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0))
  store i8* %252, i8** @file_read_fin_msg, align 8
  %253 = call i8* @catgetlocal(i32 89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i64 0, i64 0))
  store i8* %253, i8** @reading_file_msg, align 8
  %254 = call i8* @catgetlocal(i32 90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0))
  store i8* %254, i8** @read_only_msg, align 8
  %255 = call i8* @catgetlocal(i32 91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i64 0, i64 0))
  store i8* %255, i8** @file_read_lines_msg, align 8
  %256 = call i8* @catgetlocal(i32 92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i64 0, i64 0))
  store i8* %256, i8** @save_file_name_prompt, align 8
  %257 = call i8* @catgetlocal(i32 93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i64 0, i64 0))
  store i8* %257, i8** @file_not_saved_msg, align 8
  %258 = call i8* @catgetlocal(i32 94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.93, i64 0, i64 0))
  store i8* %258, i8** @changes_made_prompt, align 8
  %259 = call i8* @catgetlocal(i32 95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0))
  store i8* %259, i8** @yes_char, align 8
  %260 = call i8* @catgetlocal(i32 96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0))
  store i8* %260, i8** @file_exists_prompt, align 8
  %261 = call i8* @catgetlocal(i32 97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0))
  store i8* %261, i8** @create_file_fail_msg, align 8
  %262 = call i8* @catgetlocal(i32 98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i64 0, i64 0))
  store i8* %262, i8** @writing_file_msg, align 8
  %263 = call i8* @catgetlocal(i32 99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i64 0, i64 0))
  store i8* %263, i8** @file_written_msg, align 8
  %264 = call i8* @catgetlocal(i32 100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i64 0, i64 0))
  store i8* %264, i8** @searching_msg, align 8
  %265 = call i8* @catgetlocal(i32 101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i64 0, i64 0))
  store i8* %265, i8** @str_not_found_msg, align 8
  %266 = call i8* @catgetlocal(i32 102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i64 0, i64 0))
  store i8* %266, i8** @search_prompt_str, align 8
  %267 = call i8* @catgetlocal(i32 103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i64 0, i64 0))
  store i8* %267, i8** @exec_err_msg, align 8
  %268 = call i8* @catgetlocal(i32 104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i64 0, i64 0))
  store i8* %268, i8** @continue_msg, align 8
  %269 = call i8* @catgetlocal(i32 105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0))
  store i8* %269, i8** @menu_cancel_msg, align 8
  %270 = call i8* @catgetlocal(i32 106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.105, i64 0, i64 0))
  store i8* %270, i8** @menu_size_err_msg, align 8
  %271 = call i8* @catgetlocal(i32 107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0))
  store i8* %271, i8** @press_any_key_msg, align 8
  %272 = call i8* @catgetlocal(i32 108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i64 0, i64 0))
  store i8* %272, i8** @shell_prompt, align 8
  %273 = call i8* @catgetlocal(i32 109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i64 0, i64 0))
  store i8* %273, i8** @formatting_msg, align 8
  %274 = call i8* @catgetlocal(i32 110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.109, i64 0, i64 0))
  store i8* %274, i8** @shell_echo_msg, align 8
  %275 = call i8* @catgetlocal(i32 111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.110, i64 0, i64 0))
  store i8* %275, i8** @spell_in_prog_msg, align 8
  %276 = call i8* @catgetlocal(i32 112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i64 0, i64 0))
  store i8* %276, i8** @margin_prompt, align 8
  %277 = call i8* @catgetlocal(i32 113, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.112, i64 0, i64 0))
  store i8* %277, i8** @restricted_msg, align 8
  %278 = call i8* @catgetlocal(i32 114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0))
  store i8* %278, i8** @ON, align 8
  %279 = call i8* @catgetlocal(i32 115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0))
  store i8* %279, i8** @OFF, align 8
  %280 = call i8* @catgetlocal(i32 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0))
  store i8* %280, i8** @HELP, align 8
  %281 = call i8* @catgetlocal(i32 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i64 0, i64 0))
  store i8* %281, i8** @WRITE, align 8
  %282 = call i8* @catgetlocal(i32 118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0))
  store i8* %282, i8** @READ, align 8
  %283 = call i8* @catgetlocal(i32 119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0))
  store i8* %283, i8** @LINE, align 8
  %284 = call i8* @catgetlocal(i32 120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0))
  store i8* %284, i8** @FILE_str, align 8
  %285 = call i8* @catgetlocal(i32 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i64 0, i64 0))
  store i8* %285, i8** @CHARACTER, align 8
  %286 = call i8* @catgetlocal(i32 122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i64 0, i64 0))
  store i8* %286, i8** @REDRAW, align 8
  %287 = call i8* @catgetlocal(i32 123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i64 0, i64 0))
  store i8* %287, i8** @RESEQUENCE, align 8
  %288 = call i8* @catgetlocal(i32 124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i64 0, i64 0))
  store i8* %288, i8** @AUTHOR, align 8
  %289 = call i8* @catgetlocal(i32 125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0))
  store i8* %289, i8** @VERSION, align 8
  %290 = call i8* @catgetlocal(i32 126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0))
  store i8* %290, i8** @CASE, align 8
  %291 = call i8* @catgetlocal(i32 127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i64 0, i64 0))
  store i8* %291, i8** @NOCASE, align 8
  %292 = call i8* @catgetlocal(i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0))
  store i8* %292, i8** @EXPAND, align 8
  %293 = call i8* @catgetlocal(i32 129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i64 0, i64 0))
  store i8* %293, i8** @NOEXPAND, align 8
  %294 = call i8* @catgetlocal(i32 130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0))
  store i8* %294, i8** @Exit_string, align 8
  %295 = call i8* @catgetlocal(i32 131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0))
  store i8* %295, i8** @QUIT_string, align 8
  %296 = call i8* @catgetlocal(i32 132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0))
  %297 = bitcast i8* %296 to i32*
  store i32* %297, i32** @INFO, align 8
  %298 = call i8* @catgetlocal(i32 133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i64 0, i64 0))
  %299 = bitcast i8* %298 to i32*
  store i32* %299, i32** @NOINFO, align 8
  %300 = call i8* @catgetlocal(i32 134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i64 0, i64 0))
  %301 = bitcast i8* %300 to i32*
  store i32* %301, i32** @MARGINS, align 8
  %302 = call i8* @catgetlocal(i32 135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0))
  %303 = bitcast i8* %302 to i32*
  store i32* %303, i32** @NOMARGINS, align 8
  %304 = call i8* @catgetlocal(i32 136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i64 0, i64 0))
  %305 = bitcast i8* %304 to i32*
  store i32* %305, i32** @AUTOFORMAT, align 8
  %306 = call i8* @catgetlocal(i32 137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i64 0, i64 0))
  %307 = bitcast i8* %306 to i32*
  store i32* %307, i32** @NOAUTOFORMAT, align 8
  %308 = call i8* @catgetlocal(i32 138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0))
  %309 = bitcast i8* %308 to i32*
  store i32* %309, i32** @Echo, align 8
  %310 = call i8* @catgetlocal(i32 139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i64 0, i64 0))
  %311 = bitcast i8* %310 to i32*
  store i32* %311, i32** @PRINTCOMMAND, align 8
  %312 = call i8* @catgetlocal(i32 140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0))
  %313 = bitcast i8* %312 to i32*
  store i32* %313, i32** @RIGHTMARGIN, align 8
  %314 = call i8* @catgetlocal(i32 141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i64 0, i64 0))
  %315 = bitcast i8* %314 to i32*
  store i32* %315, i32** @HIGHLIGHT, align 8
  %316 = call i8* @catgetlocal(i32 142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i64 0, i64 0))
  %317 = bitcast i8* %316 to i32*
  store i32* %317, i32** @NOHIGHLIGHT, align 8
  %318 = call i8* @catgetlocal(i32 143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i64 0, i64 0))
  %319 = bitcast i8* %318 to i32*
  store i32* %319, i32** @EIGHTBIT, align 8
  %320 = call i8* @catgetlocal(i32 144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i64 0, i64 0))
  %321 = bitcast i8* %320 to i32*
  store i32* %321, i32** @NOEIGHTBIT, align 8
  %322 = call i8* @catgetlocal(i32 145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i64 0, i64 0))
  %323 = load i8**, i8*** @mode_strings, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 7
  store i8* %322, i8** %324, align 8
  %325 = load i8**, i8*** @help_text, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 0
  %327 = load i8*, i8** %326, align 8
  %328 = load i8**, i8*** @emacs_help_text, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 0
  store i8* %327, i8** %329, align 8
  %330 = call i8* @catgetlocal(i32 146, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.145, i64 0, i64 0))
  %331 = load i8**, i8*** @emacs_help_text, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 1
  store i8* %330, i8** %332, align 8
  %333 = call i8* @catgetlocal(i32 147, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.146, i64 0, i64 0))
  %334 = load i8**, i8*** @emacs_help_text, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i64 2
  store i8* %333, i8** %335, align 8
  %336 = call i8* @catgetlocal(i32 148, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.147, i64 0, i64 0))
  %337 = load i8**, i8*** @emacs_help_text, align 8
  %338 = getelementptr inbounds i8*, i8** %337, i64 3
  store i8* %336, i8** %338, align 8
  %339 = call i8* @catgetlocal(i32 149, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.148, i64 0, i64 0))
  %340 = load i8**, i8*** @emacs_help_text, align 8
  %341 = getelementptr inbounds i8*, i8** %340, i64 4
  store i8* %339, i8** %341, align 8
  %342 = call i8* @catgetlocal(i32 150, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.149, i64 0, i64 0))
  %343 = load i8**, i8*** @emacs_help_text, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 5
  store i8* %342, i8** %344, align 8
  %345 = call i8* @catgetlocal(i32 151, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.150, i64 0, i64 0))
  %346 = load i8**, i8*** @emacs_help_text, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 6
  store i8* %345, i8** %347, align 8
  %348 = call i8* @catgetlocal(i32 152, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.151, i64 0, i64 0))
  %349 = load i8**, i8*** @emacs_help_text, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 7
  store i8* %348, i8** %350, align 8
  %351 = call i8* @catgetlocal(i32 153, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.152, i64 0, i64 0))
  %352 = load i8**, i8*** @emacs_help_text, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 8
  store i8* %351, i8** %353, align 8
  %354 = load i8**, i8*** @help_text, align 8
  %355 = getelementptr inbounds i8*, i8** %354, i64 9
  %356 = load i8*, i8** %355, align 8
  %357 = load i8**, i8*** @emacs_help_text, align 8
  %358 = getelementptr inbounds i8*, i8** %357, i64 9
  store i8* %356, i8** %358, align 8
  %359 = load i8**, i8*** @help_text, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i64 10
  %361 = load i8*, i8** %360, align 8
  %362 = load i8**, i8*** @emacs_help_text, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 10
  store i8* %361, i8** %363, align 8
  %364 = load i8**, i8*** @help_text, align 8
  %365 = getelementptr inbounds i8*, i8** %364, i64 11
  %366 = load i8*, i8** %365, align 8
  %367 = load i8**, i8*** @emacs_help_text, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 11
  store i8* %366, i8** %368, align 8
  %369 = load i8**, i8*** @help_text, align 8
  %370 = getelementptr inbounds i8*, i8** %369, i64 12
  %371 = load i8*, i8** %370, align 8
  %372 = load i8**, i8*** @emacs_help_text, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i64 12
  store i8* %371, i8** %373, align 8
  %374 = load i8**, i8*** @help_text, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 13
  %376 = load i8*, i8** %375, align 8
  %377 = load i8**, i8*** @emacs_help_text, align 8
  %378 = getelementptr inbounds i8*, i8** %377, i64 13
  store i8* %376, i8** %378, align 8
  %379 = load i8**, i8*** @help_text, align 8
  %380 = getelementptr inbounds i8*, i8** %379, i64 14
  %381 = load i8*, i8** %380, align 8
  %382 = load i8**, i8*** @emacs_help_text, align 8
  %383 = getelementptr inbounds i8*, i8** %382, i64 14
  store i8* %381, i8** %383, align 8
  %384 = load i8**, i8*** @help_text, align 8
  %385 = getelementptr inbounds i8*, i8** %384, i64 15
  %386 = load i8*, i8** %385, align 8
  %387 = load i8**, i8*** @emacs_help_text, align 8
  %388 = getelementptr inbounds i8*, i8** %387, i64 15
  store i8* %386, i8** %388, align 8
  %389 = load i8**, i8*** @help_text, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 16
  %391 = load i8*, i8** %390, align 8
  %392 = load i8**, i8*** @emacs_help_text, align 8
  %393 = getelementptr inbounds i8*, i8** %392, i64 16
  store i8* %391, i8** %393, align 8
  %394 = load i8**, i8*** @help_text, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 17
  %396 = load i8*, i8** %395, align 8
  %397 = load i8**, i8*** @emacs_help_text, align 8
  %398 = getelementptr inbounds i8*, i8** %397, i64 17
  store i8* %396, i8** %398, align 8
  %399 = load i8**, i8*** @help_text, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 18
  %401 = load i8*, i8** %400, align 8
  %402 = load i8**, i8*** @emacs_help_text, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 18
  store i8* %401, i8** %403, align 8
  %404 = load i8**, i8*** @help_text, align 8
  %405 = getelementptr inbounds i8*, i8** %404, i64 19
  %406 = load i8*, i8** %405, align 8
  %407 = load i8**, i8*** @emacs_help_text, align 8
  %408 = getelementptr inbounds i8*, i8** %407, i64 19
  store i8* %406, i8** %408, align 8
  %409 = load i8**, i8*** @help_text, align 8
  %410 = getelementptr inbounds i8*, i8** %409, i64 20
  %411 = load i8*, i8** %410, align 8
  %412 = load i8**, i8*** @emacs_help_text, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i64 20
  store i8* %411, i8** %413, align 8
  %414 = load i8**, i8*** @help_text, align 8
  %415 = getelementptr inbounds i8*, i8** %414, i64 21
  %416 = load i8*, i8** %415, align 8
  %417 = load i8**, i8*** @emacs_help_text, align 8
  %418 = getelementptr inbounds i8*, i8** %417, i64 21
  store i8* %416, i8** %418, align 8
  %419 = call i8* @catgetlocal(i32 154, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.153, i64 0, i64 0))
  %420 = load i8**, i8*** @emacs_control_keys, align 8
  %421 = getelementptr inbounds i8*, i8** %420, i64 0
  store i8* %419, i8** %421, align 8
  %422 = call i8* @catgetlocal(i32 155, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.154, i64 0, i64 0))
  %423 = load i8**, i8*** @emacs_control_keys, align 8
  %424 = getelementptr inbounds i8*, i8** %423, i64 1
  store i8* %422, i8** %424, align 8
  %425 = call i8* @catgetlocal(i32 156, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.155, i64 0, i64 0))
  %426 = load i8**, i8*** @emacs_control_keys, align 8
  %427 = getelementptr inbounds i8*, i8** %426, i64 2
  store i8* %425, i8** %427, align 8
  %428 = call i8* @catgetlocal(i32 157, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.156, i64 0, i64 0))
  %429 = load i8**, i8*** @emacs_control_keys, align 8
  %430 = getelementptr inbounds i8*, i8** %429, i64 3
  store i8* %428, i8** %430, align 8
  %431 = call i8* @catgetlocal(i32 158, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.157, i64 0, i64 0))
  %432 = load i8**, i8*** @emacs_control_keys, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 4
  store i8* %431, i8** %433, align 8
  %434 = call i8* @catgetlocal(i32 159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0))
  %435 = bitcast i8* %434 to i32*
  store i32* %435, i32** @EMACS_string, align 8
  %436 = call i8* @catgetlocal(i32 160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0))
  %437 = bitcast i8* %436 to i32*
  store i32* %437, i32** @NOEMACS_string, align 8
  %438 = call i8* @catgetlocal(i32 161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.160, i64 0, i64 0))
  store i8* %438, i8** @usage4, align 8
  %439 = call i8* @catgetlocal(i32 162, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.161, i64 0, i64 0))
  store i8* %439, i8** @conf_dump_err_msg, align 8
  %440 = call i8* @catgetlocal(i32 163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.162, i64 0, i64 0))
  store i8* %440, i8** @conf_dump_success_msg, align 8
  %441 = call i8* @catgetlocal(i32 164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.163, i64 0, i64 0))
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** @modes_menu, align 8
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i64 10
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 0
  store i8* %441, i8** %444, align 8
  %445 = call i8* @catgetlocal(i32 165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i64 0, i64 0))
  %446 = load %struct.TYPE_16__*, %struct.TYPE_16__** @config_dump_menu, align 8
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i64 0
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 0
  store i8* %445, i8** %448, align 8
  %449 = call i8* @catgetlocal(i32 166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.165, i64 0, i64 0))
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** @config_dump_menu, align 8
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i64 1
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  store i8* %449, i8** %452, align 8
  %453 = call i8* @catgetlocal(i32 167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.166, i64 0, i64 0))
  %454 = load %struct.TYPE_16__*, %struct.TYPE_16__** @config_dump_menu, align 8
  %455 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %454, i64 2
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  store i8* %453, i8** %456, align 8
  %457 = call i8* @catgetlocal(i32 168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i64 0, i64 0))
  store i8* %457, i8** @conf_not_saved_msg, align 8
  %458 = call i8* @catgetlocal(i32 169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.168, i64 0, i64 0))
  store i8* %458, i8** @ree_no_file_msg, align 8
  %459 = call i8* @catgetlocal(i32 180, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.105, i64 0, i64 0))
  store i8* %459, i8** @menu_too_lrg_msg, align 8
  %460 = call i8* @catgetlocal(i32 181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i64 0, i64 0))
  store i8* %460, i8** @more_above_str, align 8
  %461 = call i8* @catgetlocal(i32 182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i64 0, i64 0))
  store i8* %461, i8** @more_below_str, align 8
  %462 = call i8* @catgetlocal(i32 183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.171, i64 0, i64 0))
  %463 = load i8**, i8*** @mode_strings, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i64 9
  store i8* %462, i8** %464, align 8
  %465 = call i8* @catgetlocal(i32 184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i64 0, i64 0))
  store i8* %465, i8** @chinese_cmd, align 8
  %466 = call i8* @catgetlocal(i32 185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0))
  store i8* %466, i8** @nochinese_cmd, align 8
  %467 = load i8*, i8** @HELP, align 8
  %468 = load i8**, i8*** @commands, align 8
  %469 = getelementptr inbounds i8*, i8** %468, i64 0
  store i8* %467, i8** %469, align 8
  %470 = load i8*, i8** @WRITE, align 8
  %471 = load i8**, i8*** @commands, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 1
  store i8* %470, i8** %472, align 8
  %473 = load i8*, i8** @READ, align 8
  %474 = load i8**, i8*** @commands, align 8
  %475 = getelementptr inbounds i8*, i8** %474, i64 2
  store i8* %473, i8** %475, align 8
  %476 = load i8*, i8** @LINE, align 8
  %477 = load i8**, i8*** @commands, align 8
  %478 = getelementptr inbounds i8*, i8** %477, i64 3
  store i8* %476, i8** %478, align 8
  %479 = load i8*, i8** @FILE_str, align 8
  %480 = load i8**, i8*** @commands, align 8
  %481 = getelementptr inbounds i8*, i8** %480, i64 4
  store i8* %479, i8** %481, align 8
  %482 = load i8*, i8** @REDRAW, align 8
  %483 = load i8**, i8*** @commands, align 8
  %484 = getelementptr inbounds i8*, i8** %483, i64 5
  store i8* %482, i8** %484, align 8
  %485 = load i8*, i8** @RESEQUENCE, align 8
  %486 = load i8**, i8*** @commands, align 8
  %487 = getelementptr inbounds i8*, i8** %486, i64 6
  store i8* %485, i8** %487, align 8
  %488 = load i8*, i8** @AUTHOR, align 8
  %489 = load i8**, i8*** @commands, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 7
  store i8* %488, i8** %490, align 8
  %491 = load i8*, i8** @VERSION, align 8
  %492 = load i8**, i8*** @commands, align 8
  %493 = getelementptr inbounds i8*, i8** %492, i64 8
  store i8* %491, i8** %493, align 8
  %494 = load i8*, i8** @CASE, align 8
  %495 = load i8**, i8*** @commands, align 8
  %496 = getelementptr inbounds i8*, i8** %495, i64 9
  store i8* %494, i8** %496, align 8
  %497 = load i8*, i8** @NOCASE, align 8
  %498 = load i8**, i8*** @commands, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 10
  store i8* %497, i8** %499, align 8
  %500 = load i8*, i8** @EXPAND, align 8
  %501 = load i8**, i8*** @commands, align 8
  %502 = getelementptr inbounds i8*, i8** %501, i64 11
  store i8* %500, i8** %502, align 8
  %503 = load i8*, i8** @NOEXPAND, align 8
  %504 = load i8**, i8*** @commands, align 8
  %505 = getelementptr inbounds i8*, i8** %504, i64 12
  store i8* %503, i8** %505, align 8
  %506 = load i8*, i8** @Exit_string, align 8
  %507 = load i8**, i8*** @commands, align 8
  %508 = getelementptr inbounds i8*, i8** %507, i64 13
  store i8* %506, i8** %508, align 8
  %509 = load i8*, i8** @QUIT_string, align 8
  %510 = load i8**, i8*** @commands, align 8
  %511 = getelementptr inbounds i8*, i8** %510, i64 14
  store i8* %509, i8** %511, align 8
  %512 = load i8**, i8*** @commands, align 8
  %513 = getelementptr inbounds i8*, i8** %512, i64 15
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i64 0, i64 0), i8** %513, align 8
  %514 = load i8**, i8*** @commands, align 8
  %515 = getelementptr inbounds i8*, i8** %514, i64 16
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i64 0, i64 0), i8** %515, align 8
  %516 = load i8**, i8*** @commands, align 8
  %517 = getelementptr inbounds i8*, i8** %516, i64 17
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i64 0, i64 0), i8** %517, align 8
  %518 = load i8**, i8*** @commands, align 8
  %519 = getelementptr inbounds i8*, i8** %518, i64 18
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0), i8** %519, align 8
  %520 = load i8**, i8*** @commands, align 8
  %521 = getelementptr inbounds i8*, i8** %520, i64 19
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i8** %521, align 8
  %522 = load i8**, i8*** @commands, align 8
  %523 = getelementptr inbounds i8*, i8** %522, i64 20
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i64 0, i64 0), i8** %523, align 8
  %524 = load i8**, i8*** @commands, align 8
  %525 = getelementptr inbounds i8*, i8** %524, i64 21
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i64 0, i64 0), i8** %525, align 8
  %526 = load i8**, i8*** @commands, align 8
  %527 = getelementptr inbounds i8*, i8** %526, i64 22
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), i8** %527, align 8
  %528 = load i8**, i8*** @commands, align 8
  %529 = getelementptr inbounds i8*, i8** %528, i64 23
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i64 0, i64 0), i8** %529, align 8
  %530 = load i8**, i8*** @commands, align 8
  %531 = getelementptr inbounds i8*, i8** %530, i64 24
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.183, i64 0, i64 0), i8** %531, align 8
  %532 = load i8**, i8*** @commands, align 8
  %533 = getelementptr inbounds i8*, i8** %532, i64 25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i64 0, i64 0), i8** %533, align 8
  %534 = load i8**, i8*** @commands, align 8
  %535 = getelementptr inbounds i8*, i8** %534, i64 26
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i64 0, i64 0), i8** %535, align 8
  %536 = load i8**, i8*** @commands, align 8
  %537 = getelementptr inbounds i8*, i8** %536, i64 27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i8** %537, align 8
  %538 = load i8*, i8** @CHARACTER, align 8
  %539 = load i8**, i8*** @commands, align 8
  %540 = getelementptr inbounds i8*, i8** %539, i64 28
  store i8* %538, i8** %540, align 8
  %541 = load i8*, i8** @chinese_cmd, align 8
  %542 = load i8**, i8*** @commands, align 8
  %543 = getelementptr inbounds i8*, i8** %542, i64 29
  store i8* %541, i8** %543, align 8
  %544 = load i8*, i8** @nochinese_cmd, align 8
  %545 = load i8**, i8*** @commands, align 8
  %546 = getelementptr inbounds i8*, i8** %545, i64 30
  store i8* %544, i8** %546, align 8
  %547 = load i8**, i8*** @commands, align 8
  %548 = getelementptr inbounds i8*, i8** %547, i64 31
  store i8* null, i8** %548, align 8
  %549 = load i8*, i8** @CASE, align 8
  %550 = bitcast i8* %549 to i32*
  %551 = load i32**, i32*** @init_strings, align 8
  %552 = getelementptr inbounds i32*, i32** %551, i64 0
  store i32* %550, i32** %552, align 8
  %553 = load i8*, i8** @NOCASE, align 8
  %554 = bitcast i8* %553 to i32*
  %555 = load i32**, i32*** @init_strings, align 8
  %556 = getelementptr inbounds i32*, i32** %555, i64 1
  store i32* %554, i32** %556, align 8
  %557 = load i8*, i8** @EXPAND, align 8
  %558 = bitcast i8* %557 to i32*
  %559 = load i32**, i32*** @init_strings, align 8
  %560 = getelementptr inbounds i32*, i32** %559, i64 2
  store i32* %558, i32** %560, align 8
  %561 = load i8*, i8** @NOEXPAND, align 8
  %562 = bitcast i8* %561 to i32*
  %563 = load i32**, i32*** @init_strings, align 8
  %564 = getelementptr inbounds i32*, i32** %563, i64 3
  store i32* %562, i32** %564, align 8
  %565 = load i32*, i32** @INFO, align 8
  %566 = load i32**, i32*** @init_strings, align 8
  %567 = getelementptr inbounds i32*, i32** %566, i64 4
  store i32* %565, i32** %567, align 8
  %568 = load i32*, i32** @NOINFO, align 8
  %569 = load i32**, i32*** @init_strings, align 8
  %570 = getelementptr inbounds i32*, i32** %569, i64 5
  store i32* %568, i32** %570, align 8
  %571 = load i32*, i32** @MARGINS, align 8
  %572 = load i32**, i32*** @init_strings, align 8
  %573 = getelementptr inbounds i32*, i32** %572, i64 6
  store i32* %571, i32** %573, align 8
  %574 = load i32*, i32** @NOMARGINS, align 8
  %575 = load i32**, i32*** @init_strings, align 8
  %576 = getelementptr inbounds i32*, i32** %575, i64 7
  store i32* %574, i32** %576, align 8
  %577 = load i32*, i32** @AUTOFORMAT, align 8
  %578 = load i32**, i32*** @init_strings, align 8
  %579 = getelementptr inbounds i32*, i32** %578, i64 8
  store i32* %577, i32** %579, align 8
  %580 = load i32*, i32** @NOAUTOFORMAT, align 8
  %581 = load i32**, i32*** @init_strings, align 8
  %582 = getelementptr inbounds i32*, i32** %581, i64 9
  store i32* %580, i32** %582, align 8
  %583 = load i32*, i32** @Echo, align 8
  %584 = load i32**, i32*** @init_strings, align 8
  %585 = getelementptr inbounds i32*, i32** %584, i64 10
  store i32* %583, i32** %585, align 8
  %586 = load i32*, i32** @PRINTCOMMAND, align 8
  %587 = load i32**, i32*** @init_strings, align 8
  %588 = getelementptr inbounds i32*, i32** %587, i64 11
  store i32* %586, i32** %588, align 8
  %589 = load i32*, i32** @RIGHTMARGIN, align 8
  %590 = load i32**, i32*** @init_strings, align 8
  %591 = getelementptr inbounds i32*, i32** %590, i64 12
  store i32* %589, i32** %591, align 8
  %592 = load i32*, i32** @HIGHLIGHT, align 8
  %593 = load i32**, i32*** @init_strings, align 8
  %594 = getelementptr inbounds i32*, i32** %593, i64 13
  store i32* %592, i32** %594, align 8
  %595 = load i32*, i32** @NOHIGHLIGHT, align 8
  %596 = load i32**, i32*** @init_strings, align 8
  %597 = getelementptr inbounds i32*, i32** %596, i64 14
  store i32* %595, i32** %597, align 8
  %598 = load i32*, i32** @EIGHTBIT, align 8
  %599 = load i32**, i32*** @init_strings, align 8
  %600 = getelementptr inbounds i32*, i32** %599, i64 15
  store i32* %598, i32** %600, align 8
  %601 = load i32*, i32** @NOEIGHTBIT, align 8
  %602 = load i32**, i32*** @init_strings, align 8
  %603 = getelementptr inbounds i32*, i32** %602, i64 16
  store i32* %601, i32** %603, align 8
  %604 = load i32*, i32** @EMACS_string, align 8
  %605 = load i32**, i32*** @init_strings, align 8
  %606 = getelementptr inbounds i32*, i32** %605, i64 17
  store i32* %604, i32** %606, align 8
  %607 = load i32*, i32** @NOEMACS_string, align 8
  %608 = load i32**, i32*** @init_strings, align 8
  %609 = getelementptr inbounds i32*, i32** %608, i64 18
  store i32* %607, i32** %609, align 8
  %610 = load i8*, i8** @chinese_cmd, align 8
  %611 = bitcast i8* %610 to i32*
  %612 = load i32**, i32*** @init_strings, align 8
  %613 = getelementptr inbounds i32*, i32** %612, i64 19
  store i32* %611, i32** %613, align 8
  %614 = load i8*, i8** @nochinese_cmd, align 8
  %615 = bitcast i8* %614 to i32*
  %616 = load i32**, i32*** @init_strings, align 8
  %617 = getelementptr inbounds i32*, i32** %616, i64 20
  store i32* %615, i32** %617, align 8
  %618 = load i32**, i32*** @init_strings, align 8
  %619 = getelementptr inbounds i32*, i32** %618, i64 21
  store i32* null, i32** %619, align 8
  store i32 1, i32* %1, align 4
  br label %620

620:                                              ; preds = %631, %0
  %621 = load i32, i32* %1, align 4
  %622 = load i32, i32* @NUM_MODES_ITEMS, align 4
  %623 = icmp slt i32 %621, %622
  br i1 %623, label %624, label %634

624:                                              ; preds = %620
  %625 = call i8* @malloc(i32 80)
  %626 = load %struct.TYPE_11__*, %struct.TYPE_11__** @modes_menu, align 8
  %627 = load i32, i32* %1, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %626, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %629, i32 0, i32 0
  store i8* %625, i8** %630, align 8
  br label %631

631:                                              ; preds = %624
  %632 = load i32, i32* %1, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %1, align 4
  br label %620

634:                                              ; preds = %620
  %635 = load i32, i32* @catalog, align 4
  %636 = call i32 @catclose(i32 %635)
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @catopen(i8*, i32) #1

declare dso_local i8* @catgetlocal(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @catclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
