; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_make_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_make_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_data = type { i32, i32*, i32 }

@yymore_used = common dso_local global i64 0, align 8
@yytext_is_array = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"YY_G(yytext_ptr) -= YY_G(yy_more_len); \\\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"yyleng = (size_t) (yy_cp - YY_G(yytext_ptr)); \\\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"yyleng = (size_t) (yy_cp - yy_bp); \\\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"if ( yyleng + YY_G(yy_more_offset) >= YYLMAX ) \\\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"if ( yyleng >= YYLMAX ) \\\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"YY_FATAL_ERROR( \22token too large, exceeds YYLMAX\22 ); \\\00", align 1
@.str.6 = private unnamed_addr constant [101 x i8] c"yy_flex_strncpy( &yytext[YY_G(yy_more_offset)], YY_G(yytext_ptr), yyleng + 1 M4_YY_CALL_LAST_ARG); \\\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"yyleng += YY_G(yy_more_offset); \\\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"YY_G(yy_prev_more_offset) = YY_G(yy_more_offset); \\\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"YY_G(yy_more_offset) = 0; \\\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"yy_flex_strncpy( yytext, YY_G(yytext_ptr), yyleng + 1 M4_YY_CALL_LAST_ARG); \\\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"#define YY_NUM_RULES %d\0A\00", align 1
@num_rules = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"#define YY_END_OF_BUFFER %d\0A\00", align 1
@fullspd = common dso_local global i64 0, align 8
@tblend = common dso_local global i32 0, align 4
@numecs = common dso_local global i32 0, align 4
@INT16_MAX = common dso_local global i32 0, align 4
@long_align = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"flex_int32_t\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"flex_int16_t\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"struct yy_trans_info\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"%s yy_verify;\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%s yy_nxt;\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"/* This struct is not used in this scanner,\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"   but its presence is necessary. */\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"flex_int32_t yy_verify;\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"flex_int32_t yy_nxt;\00", align 1
@tablesext = common dso_local global i64 0, align 8
@tableswr = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [21 x i8] c"Could not write ftbl\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Could not write ssltbl\00", align 1
@useecs = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [23 x i8] c"Could not write ecstbl\00", align 1
@fulltbl = common dso_local global i64 0, align 8
@do_yylineno = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [23 x i8] c"Could not write eoltbl\00", align 1
@num_backing_up = common dso_local global i64 0, align 8
@reject = common dso_local global i64 0, align 8
@C_plus_plus = common dso_local global i64 0, align 8
@reentrant = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [46 x i8] c"static yy_state_type yy_last_accepting_state;\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"static char *yy_last_accepting_cpos;\0A\00", align 1
@nultrans = common dso_local global i32* null, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"yy_NUL_trans\00", align 1
@lastdfa = common dso_local global i32 0, align 4
@yydmap_buf = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [58 x i8] c"\09{YYTD_ID_NUL_TRANS, (void**)&yy_NUL_trans, sizeof(%s)},\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"struct yy_trans_info*\00", align 1
@YYTD_ID_NUL_TRANS = common dso_local global i32 0, align 4
@YYTD_PTRANS = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [25 x i8] c"    &yy_transition[%d],\0A\00", align 1
@base = common dso_local global i32* null, align 8
@.str.34 = private unnamed_addr constant [31 x i8] c"Could not write yynultrans_tbl\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"extern int yy_flex_debug;\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"int yy_flex_debug = %s;\0A\00", align 1
@ddebug = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"yy_rule_linenum\00", align 1
@rule_linenum = common dso_local global i32* null, align 8
@.str.40 = private unnamed_addr constant [36 x i8] c"m4_ifdef( [[M4_YY_USES_REJECT]],\0A[[\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"static yy_state_type *yy_state_buf=0, *yy_state_ptr=0;\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"static char *yy_full_match;\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"static int yy_lp;\00", align 1
@variable_trailing_context_rules = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [43 x i8] c"static int yy_looking_for_trail_begin = 0;\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"static int yy_full_lp;\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"static int *yy_full_state;\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"#define YY_TRAILING_MASK 0x%x\0A\00", align 1
@YY_TRAILING_MASK = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [36 x i8] c"#define YY_TRAILING_HEAD_MASK 0x%x\0A\00", align 1
@YY_TRAILING_HEAD_MASK = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [17 x i8] c"#define REJECT \\\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"{ \\\00", align 1
@.str.51 = private unnamed_addr constant [71 x i8] c"*yy_cp = YY_G(yy_hold_char); /* undo effects of setting up yytext */ \\\00", align 1
@.str.52 = private unnamed_addr constant [68 x i8] c"yy_cp = YY_G(yy_full_match); /* restore poss. backed-over text */ \\\00", align 1
@.str.53 = private unnamed_addr constant [69 x i8] c"YY_G(yy_lp) = YY_G(yy_full_lp); /* restore orig. accepting pos. */ \\\00", align 1
@.str.54 = private unnamed_addr constant [70 x i8] c"YY_G(yy_state_ptr) = YY_G(yy_full_state); /* restore orig. state */ \\\00", align 1
@.str.55 = private unnamed_addr constant [68 x i8] c"yy_current_state = *YY_G(yy_state_ptr); /* restore curr. state */ \\\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"++YY_G(yy_lp); \\\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"goto find_rule; \\\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"]])\0A\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"/* The intent behind this definition is that it'll catch\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c" * any uses of REJECT which flex missed.\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"#define REJECT reject_used_but_not_detected\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"static int yy_more_offset = 0;\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"static int yy_prev_more_offset = 0;\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"static int yy_more_flag = 0;\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"static int yy_more_len = 0;\00", align 1
@.str.68 = private unnamed_addr constant [86 x i8] c"#define yymore() (YY_G(yy_more_offset) = yy_flex_strlen( yytext M4_YY_CALL_LAST_ARG))\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"#define YY_NEED_STRLEN\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"#define YY_MORE_ADJ 0\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"#define YY_RESTORE_YY_MORE_OFFSET \\\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"YY_G(yy_more_offset) = YY_G(yy_prev_more_offset); \\\00", align 1
@.str.73 = private unnamed_addr constant [34 x i8] c"yyleng -= YY_G(yy_more_offset); \\\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"#define yymore() (YY_G(yy_more_flag) = 1)\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"#define YY_MORE_ADJ YY_G(yy_more_len)\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"#define YY_RESTORE_YY_MORE_OFFSET\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"#define yymore() yymore_used_but_not_detected\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"#ifndef YYLMAX\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"#define YYLMAX 8192\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"char yytext[YYLMAX];\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"char *yytext_ptr;\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"char *yytext;\00", align 1
@action_array = common dso_local global i32* null, align 8
@defs1_offset = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@use_read = common dso_local global i64 0, align 8
@.str.84 = private unnamed_addr constant [12 x i8] c"\09errno=0; \\\00", align 1
@.str.85 = private unnamed_addr constant [73 x i8] c"\09while ( (result = read( fileno(yyin), (char *) buf, max_size )) < 0 ) \\\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"\09{ \\\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"\09\09if( errno != EINTR) \\\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"\09\09{ \\\00", align 1
@.str.89 = private unnamed_addr constant [55 x i8] c"\09\09\09YY_FATAL_ERROR( \22input in flex scanner failed\22 ); \\\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"\09\09\09break; \\\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"\09\09} \\\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"\09\09errno=0; \\\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"\09\09clearerr(yyin); \\\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"\09}\\\00", align 1
@.str.95 = private unnamed_addr constant [54 x i8] c"\09if ( YY_CURRENT_BUFFER_LVALUE->yy_is_interactive ) \\\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"\09\09int c = '*'; \\\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"\09\09size_t n; \\\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"\09\09for ( n = 0; n < max_size && \\\00", align 1
@.str.99 = private unnamed_addr constant [56 x i8] c"\09\09\09     (c = getc( yyin )) != EOF && c != '\\n'; ++n ) \\\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"\09\09\09buf[n] = (char) c; \\\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"\09\09if ( c == '\\n' ) \\\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"\09\09\09buf[n++] = (char) c; \\\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"\09\09if ( c == EOF && ferror( yyin ) ) \\\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"\09\09result = n; \\\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"\09else \\\00", align 1
@.str.106 = private unnamed_addr constant [73 x i8] c"\09\09while ( (result = fread(buf, 1, max_size, yyin))==0 && ferror(yyin)) \\\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"\09\09\09{ \\\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"\09\09\09if( errno != EINTR) \\\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"\09\09\09\09{ \\\00", align 1
@.str.110 = private unnamed_addr constant [56 x i8] c"\09\09\09\09YY_FATAL_ERROR( \22input in flex scanner failed\22 ); \\\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"\09\09\09\09break; \\\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"\09\09\09\09} \\\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"\09\09\09errno=0; \\\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"\09\09\09clearerr(yyin); \\\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"\09\09\09} \\\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"\09\09}\\\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"#define YY_RULE_SETUP \\\00", align 1
@bol_needed = common dso_local global i64 0, align 8
@.str.118 = private unnamed_addr constant [20 x i8] c"if ( yyleng > 0 ) \\\00", align 1
@.str.119 = private unnamed_addr constant [40 x i8] c"YY_CURRENT_BUFFER_LVALUE->yy_at_bol = \\\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"\09\09(yytext[yyleng - 1] == '\\n'); \\\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"YY_USER_ACTION\00", align 1
@prolog_offset = common dso_local global i64 0, align 8
@.str.122 = private unnamed_addr constant [23 x i8] c"YY_G(yy_more_len) = 0;\00", align 1
@.str.123 = private unnamed_addr constant [26 x i8] c"if ( YY_G(yy_more_flag) )\00", align 1
@.str.124 = private unnamed_addr constant [57 x i8] c"YY_G(yy_more_len) = YY_G(yy_c_buf_p) - YY_G(yytext_ptr);\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"YY_G(yy_more_flag) = 0;\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"yy_match:\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"m4_ifdef( [[M4_YY_USE_LINENO]],[[\00", align 1
@.str.128 = private unnamed_addr constant [67 x i8] c"if ( yy_act != YY_END_OF_BUFFER && yy_rule_can_match_eol[yy_act] )\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"yy_size_t yyl;\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"for ( yyl = %s; yyl < yyleng; ++yyl )\0A\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"YY_G(yy_prev_more_offset)\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"YY_G(yy_more_len)\00", align 1
@.str.133 = private unnamed_addr constant [27 x i8] c"if ( yytext[yyl] == '\\n' )\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"M4_YY_INCR_LINENO();\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"]])\00", align 1
@.str.136 = private unnamed_addr constant [21 x i8] c"if ( yy_flex_debug )\00", align 1
@.str.137 = private unnamed_addr constant [19 x i8] c"if ( yy_act == 0 )\00", align 1
@.str.138 = private unnamed_addr constant [39 x i8] c"std::cerr << \22--scanner backing up\\n\22;\00", align 1
@.str.139 = private unnamed_addr constant [45 x i8] c"fprintf( stderr, \22--scanner backing up\\n\22 );\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"else if ( yy_act < %d )\0A\00", align 1
@.str.141 = private unnamed_addr constant [71 x i8] c"std::cerr << \22--accepting rule at line \22 << yy_rule_linenum[yy_act] <<\00", align 1
@.str.142 = private unnamed_addr constant [37 x i8] c"         \22(\\\22\22 << yytext << \22\\\22)\\n\22;\00", align 1
@.str.143 = private unnamed_addr constant [60 x i8] c"fprintf( stderr, \22--accepting rule at line %ld (\\\22%s\\\22)\\n\22,\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"         (long)yy_rule_linenum[yy_act], yytext );\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"else if ( yy_act == %d )\0A\00", align 1
@.str.146 = private unnamed_addr constant [66 x i8] c"std::cerr << \22--accepting default rule (\\\22\22 << yytext << \22\\\22)\\n\22;\00", align 1
@.str.147 = private unnamed_addr constant [56 x i8] c"fprintf( stderr, \22--accepting default rule (\\\22%s\\\22)\\n\22,\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"         yytext );\00", align 1
@.str.149 = private unnamed_addr constant [45 x i8] c"std::cerr << \22--(end of buffer or a NUL)\\n\22;\00", align 1
@.str.150 = private unnamed_addr constant [51 x i8] c"fprintf( stderr, \22--(end of buffer or a NUL)\\n\22 );\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.152 = private unnamed_addr constant [61 x i8] c"std::cerr << \22--EOF (start condition \22 << YY_START << \22)\\n\22;\00", align 1
@.str.153 = private unnamed_addr constant [61 x i8] c"fprintf( stderr, \22--EOF (start condition %d)\\n\22, YY_START );\00", align 1
@action_offset = common dso_local global i64 0, align 8
@lastsc = common dso_local global i32 0, align 4
@sceof = common dso_local global i32* null, align 8
@.str.154 = private unnamed_addr constant [24 x i8] c"case YY_STATE_EOF(%s):\0A\00", align 1
@scname = common dso_local global i8** null, align 8
@.str.155 = private unnamed_addr constant [15 x i8] c"yyterminate();\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"yy_cp = YY_G(yy_c_buf_p);\00", align 1
@interactive = common dso_local global i32 0, align 4
@.str.157 = private unnamed_addr constant [38 x i8] c"yy_cp = YY_G(yy_last_accepting_cpos);\00", align 1
@.str.158 = private unnamed_addr constant [50 x i8] c"yy_current_state = YY_G(yy_last_accepting_state);\00", align 1
@.str.159 = private unnamed_addr constant [51 x i8] c"YY_CURRENT_BUFFER_LVALUE->yy_at_bol = (c == '\\n');\00", align 1
@.str.160 = private unnamed_addr constant [43 x i8] c"if ( YY_CURRENT_BUFFER_LVALUE->yy_at_bol )\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"if ( c == '\\n' )\00", align 1
@sectnum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.yytbl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.yytbl_data*, align 8
  %7 = alloca %struct.yytbl_data*, align 8
  %8 = alloca %struct.yytbl_data*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %10 = call i32 (...) @skelout()
  %11 = call i32 @set_indent(i32 1)
  %12 = load i64, i64* @yymore_used, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i64, i64* @yytext_is_array, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @indent_puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @indent_puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %22

20:                                               ; preds = %14, %0
  %21 = call i32 @indent_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 (...) @skelout()
  %24 = load i64, i64* @yytext_is_array, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i64, i64* @yymore_used, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @indent_puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %33

31:                                               ; preds = %26
  %32 = call i32 @indent_puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  %34 = call i32 (...) @indent_up()
  %35 = call i32 @indent_puts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 (...) @indent_down()
  %37 = load i64, i64* @yymore_used, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = call i32 @indent_puts(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.6, i64 0, i64 0))
  %41 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @indent_puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %43 = call i32 @indent_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %46

44:                                               ; preds = %33
  %45 = call i32 @indent_puts(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46, %22
  %48 = call i32 @set_indent(i32 0)
  %49 = call i32 (...) @skelout()
  %50 = load i32, i32* @num_rules, align 4
  %51 = call i32 @out_dec(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @num_rules, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @out_dec(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @fullspd, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %47
  %58 = load i32, i32* @tblend, align 4
  %59 = load i32, i32* @numecs, align 4
  %60 = add nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @INT16_MAX, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i64, i64* @long_align, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi i1 [ true, %57 ], [ %67, %65 ]
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)
  store i8* %71, i8** %5, align 8
  %72 = call i32 @set_indent(i32 0)
  %73 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %74 = call i32 (...) @indent_up()
  %75 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @indent_put2s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @indent_put2s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %78)
  %80 = call i32 @indent_puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %81 = call i32 (...) @indent_down()
  br label %92

82:                                               ; preds = %47
  %83 = call i32 @indent_puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %84 = call i32 @indent_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %85 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %86 = call i32 (...) @indent_up()
  %87 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %88 = call i32 @indent_puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %89 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %90 = call i32 @indent_puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %91 = call i32 (...) @indent_down()
  br label %92

92:                                               ; preds = %82, %68
  %93 = load i64, i64* @fullspd, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %92
  %96 = call i32 (...) @genctbl()
  %97 = load i64, i64* @tablesext, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %95
  %100 = call %struct.yytbl_data* (...) @mkctbl()
  store %struct.yytbl_data* %100, %struct.yytbl_data** %6, align 8
  %101 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %102 = call i32 @yytbl_data_compress(%struct.yytbl_data* %101)
  %103 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %104 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %108 = call i32 @flexerror(i32 %107)
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %111 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %110)
  %112 = call %struct.yytbl_data* (...) @mkssltbl()
  store %struct.yytbl_data* %112, %struct.yytbl_data** %6, align 8
  %113 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %114 = call i32 @yytbl_data_compress(%struct.yytbl_data* %113)
  %115 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %116 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %120 = call i32 @flexerror(i32 %119)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %123 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %122)
  store %struct.yytbl_data* null, %struct.yytbl_data** %6, align 8
  %124 = load i64, i64* @useecs, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = call %struct.yytbl_data* (...) @mkecstbl()
  store %struct.yytbl_data* %127, %struct.yytbl_data** %6, align 8
  %128 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %129 = call i32 @yytbl_data_compress(%struct.yytbl_data* %128)
  %130 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %131 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %135 = call i32 @flexerror(i32 %134)
  br label %136

136:                                              ; preds = %133, %126
  %137 = load %struct.yytbl_data*, %struct.yytbl_data** %6, align 8
  %138 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %137)
  store %struct.yytbl_data* null, %struct.yytbl_data** %6, align 8
  br label %139

139:                                              ; preds = %136, %121
  br label %140

140:                                              ; preds = %139, %95
  br label %181

141:                                              ; preds = %92
  %142 = load i64, i64* @fulltbl, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %141
  %145 = call i32 (...) @genftbl()
  %146 = load i64, i64* @tablesext, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %177

148:                                              ; preds = %144
  %149 = call %struct.yytbl_data* (...) @mkftbl()
  store %struct.yytbl_data* %149, %struct.yytbl_data** %7, align 8
  %150 = load %struct.yytbl_data*, %struct.yytbl_data** %7, align 8
  %151 = call i32 @yytbl_data_compress(%struct.yytbl_data* %150)
  %152 = load %struct.yytbl_data*, %struct.yytbl_data** %7, align 8
  %153 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %157 = call i32 @flexerror(i32 %156)
  br label %158

158:                                              ; preds = %155, %148
  %159 = load %struct.yytbl_data*, %struct.yytbl_data** %7, align 8
  %160 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %159)
  store %struct.yytbl_data* null, %struct.yytbl_data** %7, align 8
  %161 = load i64, i64* @useecs, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = call %struct.yytbl_data* (...) @mkecstbl()
  store %struct.yytbl_data* %164, %struct.yytbl_data** %7, align 8
  %165 = load %struct.yytbl_data*, %struct.yytbl_data** %7, align 8
  %166 = call i32 @yytbl_data_compress(%struct.yytbl_data* %165)
  %167 = load %struct.yytbl_data*, %struct.yytbl_data** %7, align 8
  %168 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %172 = call i32 @flexerror(i32 %171)
  br label %173

173:                                              ; preds = %170, %163
  %174 = load %struct.yytbl_data*, %struct.yytbl_data** %7, align 8
  %175 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %174)
  store %struct.yytbl_data* null, %struct.yytbl_data** %7, align 8
  br label %176

176:                                              ; preds = %173, %158
  br label %177

177:                                              ; preds = %176, %144
  br label %180

178:                                              ; preds = %141
  %179 = call i32 (...) @gentabs()
  br label %180

180:                                              ; preds = %178, %177
  br label %181

181:                                              ; preds = %180, %140
  %182 = load i64, i64* @do_yylineno, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = call i32 (...) @geneoltbl()
  %186 = load i64, i64* @tablesext, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = call %struct.yytbl_data* (...) @mkeoltbl()
  store %struct.yytbl_data* %189, %struct.yytbl_data** %8, align 8
  %190 = load %struct.yytbl_data*, %struct.yytbl_data** %8, align 8
  %191 = call i32 @yytbl_data_compress(%struct.yytbl_data* %190)
  %192 = load %struct.yytbl_data*, %struct.yytbl_data** %8, align 8
  %193 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %197 = call i32 @flexerror(i32 %196)
  br label %198

198:                                              ; preds = %195, %188
  %199 = load %struct.yytbl_data*, %struct.yytbl_data** %8, align 8
  %200 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %199)
  store %struct.yytbl_data* null, %struct.yytbl_data** %8, align 8
  br label %201

201:                                              ; preds = %198, %184
  br label %202

202:                                              ; preds = %201, %181
  %203 = load i64, i64* @num_backing_up, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load i64, i64* @reject, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* @C_plus_plus, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* @reentrant, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = call i32 @indent_puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0))
  %216 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211, %208
  br label %218

218:                                              ; preds = %217, %205, %202
  %219 = load i32*, i32** @nultrans, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %316

221:                                              ; preds = %218
  store i32* null, i32** %9, align 8
  %222 = call i32 (...) @get_state_decl()
  %223 = load i32, i32* @lastdfa, align 4
  %224 = add nsw i32 %223, 1
  %225 = call i32 @out_str_dec(i32 %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %224)
  %226 = load i64, i64* @fullspd, align 8
  %227 = icmp ne i64 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)
  %230 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i64 0, i64 0), i8* %229)
  %231 = call i64 @calloc(i32 1, i32 24)
  %232 = inttoptr i64 %231 to %struct.yytbl_data*
  store %struct.yytbl_data* %232, %struct.yytbl_data** %3, align 8
  %233 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %234 = load i32, i32* @YYTD_ID_NUL_TRANS, align 4
  %235 = call i32 @yytbl_data_init(%struct.yytbl_data* %233, i32 %234)
  %236 = load i64, i64* @fullspd, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %221
  %239 = load i32, i32* @YYTD_PTRANS, align 4
  %240 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %241 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %221
  %245 = load i32, i32* @lastdfa, align 4
  %246 = add nsw i32 %245, 1
  %247 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %248 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %250 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @calloc(i32 %251, i32 4)
  %253 = inttoptr i64 %252 to i32*
  store i32* %253, i32** %9, align 8
  %254 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %255 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %254, i32 0, i32 1
  store i32* %253, i32** %255, align 8
  store i32 1, i32* %1, align 4
  br label %256

256:                                              ; preds = %296, %244
  %257 = load i32, i32* %1, align 4
  %258 = load i32, i32* @lastdfa, align 4
  %259 = icmp sle i32 %257, %258
  br i1 %259, label %260, label %299

260:                                              ; preds = %256
  %261 = load i64, i64* @fullspd, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %260
  %264 = load i32*, i32** @base, align 8
  %265 = load i32, i32* %1, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @out_dec(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i32 %268)
  %270 = load i32*, i32** @base, align 8
  %271 = load i32, i32* %1, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %1, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %274, i32* %278, align 4
  br label %295

279:                                              ; preds = %260
  %280 = load i32*, i32** @nultrans, align 8
  %281 = load i32, i32* %1, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @mkdata(i32 %284)
  %286 = load i32*, i32** @nultrans, align 8
  %287 = load i32, i32* %1, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %9, align 8
  %292 = load i32, i32* %1, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %290, i32* %294, align 4
  br label %295

295:                                              ; preds = %279, %263
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %1, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %1, align 4
  br label %256

299:                                              ; preds = %256
  %300 = call i32 (...) @dataend()
  %301 = load i64, i64* @tablesext, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %299
  %304 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %305 = call i32 @yytbl_data_compress(%struct.yytbl_data* %304)
  %306 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %307 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %306)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0))
  %311 = call i32 @flexerror(i32 %310)
  br label %312

312:                                              ; preds = %309, %303
  %313 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %314 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %313)
  store %struct.yytbl_data* null, %struct.yytbl_data** %3, align 8
  br label %315

315:                                              ; preds = %312, %299
  br label %316

316:                                              ; preds = %315, %218
  %317 = load i64, i64* @C_plus_plus, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %329, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* @reentrant, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %319
  %323 = call i32 @indent_puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0))
  %324 = load i64, i64* @ddebug, align 8
  %325 = icmp ne i64 %324, 0
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)
  %328 = call i32 @indent_put2s(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* %327)
  br label %329

329:                                              ; preds = %322, %319, %316
  %330 = load i64, i64* @ddebug, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %359

332:                                              ; preds = %329
  %333 = load i64, i64* @long_align, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = call i32 (...) @get_int32_decl()
  br label %339

337:                                              ; preds = %332
  %338 = call i32 (...) @get_int16_decl()
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi i32 [ %336, %335 ], [ %338, %337 ]
  %341 = load i32, i32* @num_rules, align 4
  %342 = call i32 @out_str_dec(i32 %340, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i32 %341)
  store i32 1, i32* %1, align 4
  br label %343

343:                                              ; preds = %354, %339
  %344 = load i32, i32* %1, align 4
  %345 = load i32, i32* @num_rules, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %357

347:                                              ; preds = %343
  %348 = load i32*, i32** @rule_linenum, align 8
  %349 = load i32, i32* %1, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @mkdata(i32 %352)
  br label %354

354:                                              ; preds = %347
  %355 = load i32, i32* %1, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %1, align 4
  br label %343

357:                                              ; preds = %343
  %358 = call i32 (...) @dataend()
  br label %359

359:                                              ; preds = %357, %329
  %360 = load i64, i64* @reject, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %409

362:                                              ; preds = %359
  %363 = call i32 @outn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0))
  %364 = load i64, i64* @C_plus_plus, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %373, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* @reentrant, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %366
  %370 = call i32 @outn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.41, i64 0, i64 0))
  %371 = call i32 @outn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0))
  %372 = call i32 @outn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  br label %373

373:                                              ; preds = %369, %366, %362
  %374 = load i64, i64* @variable_trailing_context_rules, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %393

376:                                              ; preds = %373
  %377 = load i64, i64* @C_plus_plus, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = load i32, i32* @reentrant, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %379
  %383 = call i32 @outn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44, i64 0, i64 0))
  %384 = call i32 @outn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0))
  %385 = call i32 @outn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0))
  br label %386

386:                                              ; preds = %382, %379, %376
  %387 = load i64, i64* @YY_TRAILING_MASK, align 8
  %388 = trunc i64 %387 to i32
  %389 = call i32 @out_hex(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 %388)
  %390 = load i64, i64* @YY_TRAILING_HEAD_MASK, align 8
  %391 = trunc i64 %390 to i32
  %392 = call i32 @out_hex(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i32 %391)
  br label %393

393:                                              ; preds = %386, %373
  %394 = call i32 @outn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0))
  %395 = call i32 @outn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0))
  %396 = call i32 @outn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.51, i64 0, i64 0))
  %397 = call i32 @outn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.52, i64 0, i64 0))
  %398 = load i64, i64* @variable_trailing_context_rules, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %393
  %401 = call i32 @outn(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.53, i64 0, i64 0))
  %402 = call i32 @outn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.54, i64 0, i64 0))
  %403 = call i32 @outn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i64 0, i64 0))
  br label %404

404:                                              ; preds = %400, %393
  %405 = call i32 @outn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0))
  %406 = call i32 @outn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0))
  %407 = call i32 @outn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %408 = call i32 @outn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0))
  br label %414

409:                                              ; preds = %359
  %410 = call i32 @outn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.60, i64 0, i64 0))
  %411 = call i32 @outn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i64 0, i64 0))
  %412 = call i32 @outn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0))
  %413 = call i32 @outn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.63, i64 0, i64 0))
  br label %414

414:                                              ; preds = %409, %404
  %415 = load i64, i64* @yymore_used, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %457

417:                                              ; preds = %414
  %418 = load i64, i64* @C_plus_plus, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %438, label %420

420:                                              ; preds = %417
  %421 = load i64, i64* @yytext_is_array, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %430

423:                                              ; preds = %420
  %424 = load i32, i32* @reentrant, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %429, label %426

426:                                              ; preds = %423
  %427 = call i32 @indent_puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0))
  %428 = call i32 @indent_puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i64 0, i64 0))
  br label %429

429:                                              ; preds = %426, %423
  br label %437

430:                                              ; preds = %420
  %431 = load i32, i32* @reentrant, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %430
  %434 = call i32 @indent_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0))
  %435 = call i32 @indent_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0))
  br label %436

436:                                              ; preds = %433, %430
  br label %437

437:                                              ; preds = %436, %429
  br label %438

438:                                              ; preds = %437, %417
  %439 = load i64, i64* @yytext_is_array, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %438
  %442 = call i32 @indent_puts(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i64 0, i64 0))
  %443 = call i32 @indent_puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0))
  %444 = call i32 @indent_puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0))
  %445 = call i32 @indent_puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i64 0, i64 0))
  %446 = call i32 (...) @indent_up()
  %447 = call i32 @indent_puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0))
  %448 = call i32 @indent_puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.72, i64 0, i64 0))
  %449 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.73, i64 0, i64 0))
  %450 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %451 = call i32 (...) @indent_down()
  br label %456

452:                                              ; preds = %438
  %453 = call i32 @indent_puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0))
  %454 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.75, i64 0, i64 0))
  %455 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0))
  br label %456

456:                                              ; preds = %452, %441
  br label %461

457:                                              ; preds = %414
  %458 = call i32 @indent_puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.77, i64 0, i64 0))
  %459 = call i32 @indent_puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0))
  %460 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0))
  br label %461

461:                                              ; preds = %457, %456
  %462 = load i64, i64* @C_plus_plus, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %484, label %464

464:                                              ; preds = %461
  %465 = load i64, i64* @yytext_is_array, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %477

467:                                              ; preds = %464
  %468 = call i32 @outn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i64 0, i64 0))
  %469 = call i32 @outn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i64 0, i64 0))
  %470 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0))
  %471 = load i32, i32* @reentrant, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %467
  %474 = call i32 @outn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i64 0, i64 0))
  %475 = call i32 @outn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0))
  br label %476

476:                                              ; preds = %473, %467
  br label %483

477:                                              ; preds = %464
  %478 = load i32, i32* @reentrant, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %482, label %480

480:                                              ; preds = %477
  %481 = call i32 @outn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0))
  br label %482

482:                                              ; preds = %480, %477
  br label %483

483:                                              ; preds = %482, %476
  br label %484

484:                                              ; preds = %483, %461
  %485 = load i32*, i32** @action_array, align 8
  %486 = load i64, i64* @defs1_offset, align 8
  %487 = getelementptr inbounds i32, i32* %485, i64 %486
  %488 = call i32 @out(i32* %487)
  %489 = load i32, i32* @stdout, align 4
  %490 = call i32 @line_directive_out(i32 %489, i32 0)
  %491 = call i32 (...) @skelout()
  %492 = load i64, i64* @C_plus_plus, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %538, label %494

494:                                              ; preds = %484
  %495 = load i64, i64* @use_read, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %509

497:                                              ; preds = %494
  %498 = call i32 @outn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0))
  %499 = call i32 @outn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.85, i64 0, i64 0))
  %500 = call i32 @outn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0))
  %501 = call i32 @outn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0))
  %502 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0))
  %503 = call i32 @outn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i64 0, i64 0))
  %504 = call i32 @outn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0))
  %505 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0))
  %506 = call i32 @outn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i64 0, i64 0))
  %507 = call i32 @outn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i64 0, i64 0))
  %508 = call i32 @outn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0))
  br label %537

509:                                              ; preds = %494
  %510 = call i32 @outn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.95, i64 0, i64 0))
  %511 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0))
  %512 = call i32 @outn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i64 0, i64 0))
  %513 = call i32 @outn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i64 0, i64 0))
  %514 = call i32 @outn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.98, i64 0, i64 0))
  %515 = call i32 @outn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.99, i64 0, i64 0))
  %516 = call i32 @outn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i64 0, i64 0))
  %517 = call i32 @outn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i64 0, i64 0))
  %518 = call i32 @outn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.102, i64 0, i64 0))
  %519 = call i32 @outn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.103, i64 0, i64 0))
  %520 = call i32 @outn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.89, i64 0, i64 0))
  %521 = call i32 @outn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i64 0, i64 0))
  %522 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0))
  %523 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i64 0, i64 0))
  %524 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0))
  %525 = call i32 @outn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i64 0, i64 0))
  %526 = call i32 @outn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.106, i64 0, i64 0))
  %527 = call i32 @outn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i64 0, i64 0))
  %528 = call i32 @outn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i64 0, i64 0))
  %529 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0))
  %530 = call i32 @outn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.110, i64 0, i64 0))
  %531 = call i32 @outn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i64 0, i64 0))
  %532 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0))
  %533 = call i32 @outn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i64 0, i64 0))
  %534 = call i32 @outn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i64 0, i64 0))
  %535 = call i32 @outn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0))
  %536 = call i32 @outn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0))
  br label %537

537:                                              ; preds = %509, %497
  br label %538

538:                                              ; preds = %537, %484
  %539 = call i32 (...) @skelout()
  %540 = call i32 @indent_puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i64 0, i64 0))
  %541 = call i32 (...) @indent_up()
  %542 = load i64, i64* @bol_needed, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %550

544:                                              ; preds = %538
  %545 = call i32 @indent_puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i64 0, i64 0))
  %546 = call i32 (...) @indent_up()
  %547 = call i32 @indent_puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.119, i64 0, i64 0))
  %548 = call i32 @indent_puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.120, i64 0, i64 0))
  %549 = call i32 (...) @indent_down()
  br label %550

550:                                              ; preds = %544, %538
  %551 = call i32 @indent_puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i64 0, i64 0))
  %552 = call i32 (...) @indent_down()
  %553 = call i32 (...) @skelout()
  %554 = load i32*, i32** @action_array, align 8
  %555 = load i64, i64* @prolog_offset, align 8
  %556 = getelementptr inbounds i32, i32* %554, i64 %555
  %557 = call i32 @out(i32* %556)
  %558 = load i32, i32* @stdout, align 4
  %559 = call i32 @line_directive_out(i32 %558, i32 0)
  %560 = call i32 (...) @skelout()
  %561 = call i32 @set_indent(i32 2)
  %562 = load i64, i64* @yymore_used, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %576

564:                                              ; preds = %550
  %565 = load i64, i64* @yytext_is_array, align 8
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %576, label %567

567:                                              ; preds = %564
  %568 = call i32 @indent_puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.122, i64 0, i64 0))
  %569 = call i32 @indent_puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.123, i64 0, i64 0))
  %570 = call i32 (...) @indent_up()
  %571 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %572 = call i32 @indent_puts(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.124, i64 0, i64 0))
  %573 = call i32 @indent_puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.125, i64 0, i64 0))
  %574 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %575 = call i32 (...) @indent_down()
  br label %576

576:                                              ; preds = %567, %564, %550
  %577 = call i32 (...) @skelout()
  %578 = call i32 (...) @gen_start_state()
  %579 = call i32 @outn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i64 0, i64 0))
  %580 = call i32 (...) @gen_next_match()
  %581 = call i32 (...) @skelout()
  %582 = call i32 @set_indent(i32 2)
  %583 = call i32 (...) @gen_find_action()
  %584 = call i32 (...) @skelout()
  %585 = call i32 @outn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.127, i64 0, i64 0))
  %586 = call i32 @indent_puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.128, i64 0, i64 0))
  %587 = call i32 (...) @indent_up()
  %588 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %589 = call i32 @indent_puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i64 0, i64 0))
  %590 = call i32 (...) @do_indent()
  %591 = load i64, i64* @yymore_used, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %576
  %594 = load i64, i64* @yytext_is_array, align 8
  %595 = icmp ne i64 %594, 0
  %596 = zext i1 %595 to i64
  %597 = select i1 %595, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i64 0, i64 0)
  br label %599

598:                                              ; preds = %576
  br label %599

599:                                              ; preds = %598, %593
  %600 = phi i8* [ %597, %593 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %598 ]
  %601 = call i32 @out_str(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.130, i64 0, i64 0), i8* %600)
  %602 = call i32 (...) @indent_up()
  %603 = call i32 @indent_puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.133, i64 0, i64 0))
  %604 = call i32 (...) @indent_up()
  %605 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.134, i64 0, i64 0))
  %606 = call i32 (...) @indent_down()
  %607 = call i32 (...) @indent_down()
  %608 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %609 = call i32 (...) @indent_down()
  %610 = call i32 @outn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0))
  %611 = call i32 (...) @skelout()
  %612 = load i64, i64* @ddebug, align 8
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %677

614:                                              ; preds = %599
  %615 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.136, i64 0, i64 0))
  %616 = call i32 (...) @indent_up()
  %617 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %618 = call i32 @indent_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.137, i64 0, i64 0))
  %619 = call i32 (...) @indent_up()
  %620 = load i64, i64* @C_plus_plus, align 8
  %621 = icmp ne i64 %620, 0
  %622 = zext i1 %621 to i64
  %623 = select i1 %621, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.138, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.139, i64 0, i64 0)
  %624 = call i32 @indent_puts(i8* %623)
  %625 = call i32 (...) @indent_down()
  %626 = call i32 (...) @do_indent()
  %627 = load i32, i32* @num_rules, align 4
  %628 = call i32 @out_dec(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i64 0, i64 0), i32 %627)
  %629 = call i32 (...) @indent_up()
  %630 = load i64, i64* @C_plus_plus, align 8
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %635

632:                                              ; preds = %614
  %633 = call i32 @indent_puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.141, i64 0, i64 0))
  %634 = call i32 @indent_puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.142, i64 0, i64 0))
  br label %638

635:                                              ; preds = %614
  %636 = call i32 @indent_puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.143, i64 0, i64 0))
  %637 = call i32 @indent_puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.144, i64 0, i64 0))
  br label %638

638:                                              ; preds = %635, %632
  %639 = call i32 (...) @indent_down()
  %640 = call i32 (...) @do_indent()
  %641 = load i32, i32* @num_rules, align 4
  %642 = call i32 @out_dec(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i64 0, i64 0), i32 %641)
  %643 = call i32 (...) @indent_up()
  %644 = load i64, i64* @C_plus_plus, align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %648

646:                                              ; preds = %638
  %647 = call i32 @indent_puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.146, i64 0, i64 0))
  br label %651

648:                                              ; preds = %638
  %649 = call i32 @indent_puts(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.147, i64 0, i64 0))
  %650 = call i32 @indent_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.148, i64 0, i64 0))
  br label %651

651:                                              ; preds = %648, %646
  %652 = call i32 (...) @indent_down()
  %653 = call i32 (...) @do_indent()
  %654 = load i32, i32* @num_rules, align 4
  %655 = add nsw i32 %654, 1
  %656 = call i32 @out_dec(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i64 0, i64 0), i32 %655)
  %657 = call i32 (...) @indent_up()
  %658 = load i64, i64* @C_plus_plus, align 8
  %659 = icmp ne i64 %658, 0
  %660 = zext i1 %659 to i64
  %661 = select i1 %659, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.149, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.150, i64 0, i64 0)
  %662 = call i32 @indent_puts(i8* %661)
  %663 = call i32 (...) @indent_down()
  %664 = call i32 (...) @do_indent()
  %665 = call i32 @outn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0))
  %666 = call i32 (...) @indent_up()
  %667 = load i64, i64* @C_plus_plus, align 8
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %671

669:                                              ; preds = %651
  %670 = call i32 @indent_puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.152, i64 0, i64 0))
  br label %673

671:                                              ; preds = %651
  %672 = call i32 @indent_puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.153, i64 0, i64 0))
  br label %673

673:                                              ; preds = %671, %669
  %674 = call i32 (...) @indent_down()
  %675 = call i32 @indent_puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %676 = call i32 (...) @indent_down()
  br label %677

677:                                              ; preds = %673, %599
  %678 = call i32 (...) @skelout()
  %679 = call i32 (...) @indent_up()
  %680 = call i32 (...) @gen_bu_action()
  %681 = load i32*, i32** @action_array, align 8
  %682 = load i64, i64* @action_offset, align 8
  %683 = getelementptr inbounds i32, i32* %681, i64 %682
  %684 = call i32 @out(i32* %683)
  %685 = load i32, i32* @stdout, align 4
  %686 = call i32 @line_directive_out(i32 %685, i32 0)
  store i32 1, i32* %1, align 4
  br label %687

687:                                              ; preds = %707, %677
  %688 = load i32, i32* %1, align 4
  %689 = load i32, i32* @lastsc, align 4
  %690 = icmp sle i32 %688, %689
  br i1 %690, label %691, label %710

691:                                              ; preds = %687
  %692 = load i32*, i32** @sceof, align 8
  %693 = load i32, i32* %1, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, i32* %692, i64 %694
  %696 = load i32, i32* %695, align 4
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %706, label %698

698:                                              ; preds = %691
  %699 = call i32 (...) @do_indent()
  %700 = load i8**, i8*** @scname, align 8
  %701 = load i32, i32* %1, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8*, i8** %700, i64 %702
  %704 = load i8*, i8** %703, align 8
  %705 = call i32 @out_str(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i64 0, i64 0), i8* %704)
  store i32 1, i32* %2, align 4
  br label %706

706:                                              ; preds = %698, %691
  br label %707

707:                                              ; preds = %706
  %708 = load i32, i32* %1, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %1, align 4
  br label %687

710:                                              ; preds = %687
  %711 = load i32, i32* %2, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %717

713:                                              ; preds = %710
  %714 = call i32 (...) @indent_up()
  %715 = call i32 @indent_puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i64 0, i64 0))
  %716 = call i32 (...) @indent_down()
  br label %717

717:                                              ; preds = %713, %710
  %718 = call i32 (...) @skelout()
  %719 = call i32 @set_indent(i32 4)
  %720 = load i64, i64* @fullspd, align 8
  %721 = icmp ne i64 %720, 0
  br i1 %721, label %725, label %722

722:                                              ; preds = %717
  %723 = load i64, i64* @fulltbl, align 8
  %724 = icmp ne i64 %723, 0
  br i1 %724, label %725, label %727

725:                                              ; preds = %722, %717
  %726 = call i32 @indent_puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i64 0, i64 0))
  br label %739

727:                                              ; preds = %722
  %728 = load i64, i64* @reject, align 8
  %729 = icmp ne i64 %728, 0
  br i1 %729, label %736, label %730

730:                                              ; preds = %727
  %731 = load i32, i32* @interactive, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %736, label %733

733:                                              ; preds = %730
  %734 = call i32 @indent_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.157, i64 0, i64 0))
  %735 = call i32 @indent_puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.158, i64 0, i64 0))
  br label %738

736:                                              ; preds = %730, %727
  %737 = call i32 @indent_puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i64 0, i64 0))
  br label %738

738:                                              ; preds = %736, %733
  br label %739

739:                                              ; preds = %738, %725
  %740 = call i32 @set_indent(i32 1)
  %741 = call i32 (...) @skelout()
  %742 = call i32 (...) @gen_start_state()
  %743 = call i32 @set_indent(i32 2)
  %744 = call i32 (...) @skelout()
  %745 = call i32 @gen_next_state(i32 1)
  %746 = call i32 @set_indent(i32 1)
  %747 = call i32 (...) @skelout()
  %748 = call i32 (...) @gen_NUL_trans()
  %749 = call i32 (...) @skelout()
  %750 = call i32 (...) @skelout()
  %751 = load i64, i64* @bol_needed, align 8
  %752 = icmp ne i64 %751, 0
  br i1 %752, label %753, label %763

753:                                              ; preds = %739
  %754 = call i32 @indent_puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.159, i64 0, i64 0))
  %755 = load i64, i64* @do_yylineno, align 8
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %762

757:                                              ; preds = %753
  %758 = call i32 @indent_puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.160, i64 0, i64 0))
  %759 = call i32 (...) @indent_up()
  %760 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.134, i64 0, i64 0))
  %761 = call i32 (...) @indent_down()
  br label %762

762:                                              ; preds = %757, %753
  br label %772

763:                                              ; preds = %739
  %764 = load i64, i64* @do_yylineno, align 8
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %766, label %771

766:                                              ; preds = %763
  %767 = call i32 @indent_puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i64 0, i64 0))
  %768 = call i32 (...) @indent_up()
  %769 = call i32 @indent_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.134, i64 0, i64 0))
  %770 = call i32 (...) @indent_down()
  br label %771

771:                                              ; preds = %766, %763
  br label %772

772:                                              ; preds = %771, %762
  %773 = call i32 (...) @skelout()
  %774 = load i32, i32* @stdout, align 4
  %775 = call i32 @line_directive_out(i32 %774, i32 1)
  %776 = load i32, i32* @sectnum, align 4
  %777 = icmp eq i32 %776, 3
  br i1 %777, label %778, label %782

778:                                              ; preds = %772
  %779 = call i32 (...) @OUT_BEGIN_CODE()
  %780 = call i32 (...) @flexscan()
  %781 = call i32 (...) @OUT_END_CODE()
  br label %782

782:                                              ; preds = %778, %772
  ret void
}

declare dso_local i32 @skelout(...) #1

declare dso_local i32 @set_indent(i32) #1

declare dso_local i32 @indent_puts(i8*) #1

declare dso_local i32 @indent_up(...) #1

declare dso_local i32 @indent_down(...) #1

declare dso_local i32 @out_dec(i8*, i32) #1

declare dso_local i32 @indent_put2s(i8*, i8*) #1

declare dso_local i32 @genctbl(...) #1

declare dso_local %struct.yytbl_data* @mkctbl(...) #1

declare dso_local i32 @yytbl_data_compress(%struct.yytbl_data*) #1

declare dso_local i64 @yytbl_data_fwrite(i32*, %struct.yytbl_data*) #1

declare dso_local i32 @flexerror(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @yytbl_data_destroy(%struct.yytbl_data*) #1

declare dso_local %struct.yytbl_data* @mkssltbl(...) #1

declare dso_local %struct.yytbl_data* @mkecstbl(...) #1

declare dso_local i32 @genftbl(...) #1

declare dso_local %struct.yytbl_data* @mkftbl(...) #1

declare dso_local i32 @gentabs(...) #1

declare dso_local i32 @geneoltbl(...) #1

declare dso_local %struct.yytbl_data* @mkeoltbl(...) #1

declare dso_local i32 @out_str_dec(i32, i8*, i32) #1

declare dso_local i32 @get_state_decl(...) #1

declare dso_local i32 @buf_prints(i32*, i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #1

declare dso_local i32 @mkdata(i32) #1

declare dso_local i32 @dataend(...) #1

declare dso_local i32 @get_int32_decl(...) #1

declare dso_local i32 @get_int16_decl(...) #1

declare dso_local i32 @outn(i8*) #1

declare dso_local i32 @out_hex(i8*, i32) #1

declare dso_local i32 @out(i32*) #1

declare dso_local i32 @line_directive_out(i32, i32) #1

declare dso_local i32 @gen_start_state(...) #1

declare dso_local i32 @gen_next_match(...) #1

declare dso_local i32 @gen_find_action(...) #1

declare dso_local i32 @do_indent(...) #1

declare dso_local i32 @out_str(i8*, i8*) #1

declare dso_local i32 @gen_bu_action(...) #1

declare dso_local i32 @gen_next_state(i32) #1

declare dso_local i32 @gen_NUL_trans(...) #1

declare dso_local i32 @OUT_BEGIN_CODE(...) #1

declare dso_local i32 @flexscan(...) #1

declare dso_local i32 @OUT_END_CODE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
