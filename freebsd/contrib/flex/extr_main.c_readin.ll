; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_main.c_readin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_main.c_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readin.yy_stdinit = internal global [37 x i8] c"FILE *yyin = stdin, *yyout = stdout;\00", align 16
@readin.yy_nostdinit = internal global [46 x i8] c"FILE *yyin = (FILE *) 0, *yyout = (FILE *) 0;\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@syntaxerror = common dso_local global i64 0, align 8
@posix_compat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@backing_up_report = common dso_local global i64 0, align 8
@backing_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@backing_up_file = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"could not create backing-up info file %s\00", align 1
@yymore_really_used = common dso_local global i32 0, align 4
@yymore_used = common dso_local global i32 0, align 4
@reject_really_used = common dso_local global i32 0, align 4
@reject = common dso_local global i32 0, align 4
@performance_report = common dso_local global i32 0, align 4
@lex_compat = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"-l AT&T lex compatibility option entails a large performance penalty\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c" and may be the actual source of other reported performance penalties\0A\00", align 1
@do_yylineno = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [97 x i8] c"%%option yylineno entails a performance penalty ONLY on rules that can match newline characters\0A\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"-I (interactive) entails a minor performance penalty\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"yymore() entails a minor performance penalty\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"REJECT entails a large performance penalty\0A\00", align 1
@variable_trailing_context_rules = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [68 x i8] c"Variable trailing context rules entail a large performance penalty\0A\00", align 1
@real_reject = common dso_local global i32 0, align 4
@fulltbl = common dso_local global i64 0, align 8
@fullspd = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"REJECT cannot be used with -f or -F\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%option yylineno cannot be used with REJECT\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"variable trailing context rules cannot be used with -f or -F\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"M4_YY_USES_REJECT\00", align 1
@do_yywrap = common dso_local global i32 0, align 4
@C_plus_plus = common dso_local global i64 0, align 8
@reentrant = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"\0A#define yywrap(yyscanner) 1\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\0A#define yywrap() 1\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"#define YY_SKIP_YYWRAP\00", align 1
@ddebug = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"\0A#define FLEX_DEBUG\00", align 1
@csize = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"typedef unsigned char YY_CHAR;\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"typedef char YY_CHAR;\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"#define yytext_ptr yytext\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"#define YY_INTERACTIVE\00", align 1
@do_stdinit = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"#ifdef VMS\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"#ifdef __VMS_POSIX\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"#define YY_STDINIT\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"#else\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"#ifndef __VMS_POSIX\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"typedef yyconst struct yy_trans_info *yy_state_type;\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"typedef int yy_state_type;\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"#define YY_FLEX_LEX_COMPAT\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"extern int yylineno;\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"int yylineno = 1;\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"\0A#include <FlexLexer.h>\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"\0Aint yyFlexLexer::yywrap() { return 1; }\00", align 1
@yyclass = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [25 x i8] c"int yyFlexLexer::yylex()\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.38 = private unnamed_addr constant [70 x i8] c"\09LexerError( \22yyFlexLexer::yylex invoked but %option yyclass used\22 );\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"\09return 0;\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\09}\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"\0A#define YY_DECL int %s::yylex()\0A\00", align 1
@yytext_is_array = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [23 x i8] c"extern char yytext[];\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"#define yytext_ptr yytext_r\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"extern char *yytext;\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"%option yyclass only meaningful for C++ scanners\00", align 1
@useecs = common dso_local global i64 0, align 8
@nextecm = common dso_local global i32 0, align 4
@ecgroup = common dso_local global i32* null, align 8
@numecs = common dso_local global i32 0, align 4
@NUL_ec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readin() #0 {
  %1 = call i32 @line_directive_out(i32* null, i32 1)
  %2 = call i64 (...) @yyparse()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @pinpoint_message(i8* %5)
  %7 = call i32 @flexend(i32 1)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @syntaxerror, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @flexend(i32 1)
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @posix_compat, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i64 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* @posix_compat, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i64, i64* @backing_up_report, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @backing_name, align 4
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** @backing_up_file, align 8
  %27 = load i32*, i32** @backing_up_file, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @backing_name, align 4
  %32 = call i32 @lerrsf(i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  br label %35

34:                                               ; preds = %21
  store i32* null, i32** @backing_up_file, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* @yymore_really_used, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* @yymore_used, align 4
  br label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @yymore_really_used, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* @yymore_used, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* @reject_really_used, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* @reject, align 4
  br label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @reject_really_used, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* @reject, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* @performance_report, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %107

56:                                               ; preds = %53
  %57 = load i64, i64* @lex_compat, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 @fprintf(i32 %60, i8* %61)
  %63 = load i32, i32* @stderr, align 4
  %64 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %65 = call i32 @fprintf(i32 %63, i8* %64)
  br label %74

66:                                               ; preds = %56
  %67 = load i64, i64* @do_yylineno, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i8* @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i32 @fprintf(i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* @performance_report, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i64, i64* @interactive, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %83 = call i32 @fprintf(i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* @yymore_used, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %90 = call i32 @fprintf(i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* @reject, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @stderr, align 4
  %97 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %98 = call i32 @fprintf(i32 %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i64, i64* @variable_trailing_context_rules, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  %105 = call i32 @fprintf(i32 %103, i8* %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %53
  %108 = load i32, i32* @reject, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 1, i32* @real_reject, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i64, i64* @variable_trailing_context_rules, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* @reject, align 4
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, i64* @fulltbl, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @fullspd, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %118, %115
  %122 = load i32, i32* @reject, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %121
  %125 = load i32, i32* @real_reject, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %129 = call i32 @flexerror(i8* %128)
  br label %140

130:                                              ; preds = %124
  %131 = load i64, i64* @do_yylineno, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %135 = call i32 @flexerror(i8* %134)
  br label %139

136:                                              ; preds = %130
  %137 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0))
  %138 = call i32 @flexerror(i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %127
  br label %141

141:                                              ; preds = %140, %121, %118
  %142 = load i32, i32* @reject, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @out_m4_define(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32* null)
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* @do_yywrap, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %146
  %150 = load i64, i64* @C_plus_plus, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* @reentrant, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 @outn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %159

157:                                              ; preds = %152
  %158 = call i32 @outn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %149
  %161 = call i32 @outn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %146
  %163 = load i64, i64* @ddebug, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 @outn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %162
  %168 = call i32 (...) @OUT_BEGIN_CODE()
  %169 = load i32, i32* @csize, align 4
  %170 = icmp eq i32 %169, 256
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 @outn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %175

173:                                              ; preds = %167
  %174 = call i32 @outn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %171
  %176 = call i32 (...) @OUT_END_CODE()
  %177 = load i64, i64* @C_plus_plus, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = call i32 @outn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %181 = load i64, i64* @interactive, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32 @outn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %179
  br label %219

186:                                              ; preds = %175
  %187 = call i32 (...) @OUT_BEGIN_CODE()
  %188 = load i64, i64* @do_stdinit, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = load i64, i64* @reentrant, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = call i32 @outn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %195 = call i32 @outn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %196 = call i32 @outn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %197 = call i32 @outn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %198 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %199 = call i32 @outn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %200 = call i32 @outn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %201

201:                                              ; preds = %193, %190
  %202 = call i32 @outn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %203 = call i32 @outn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %204 = call i32 @outn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @readin.yy_nostdinit, i64 0, i64 0))
  %205 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %206 = call i32 @outn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @readin.yy_stdinit, i64 0, i64 0))
  %207 = call i32 @outn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %208 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %209 = call i32 @outn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @readin.yy_stdinit, i64 0, i64 0))
  %210 = call i32 @outn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %217

211:                                              ; preds = %186
  %212 = load i64, i64* @reentrant, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = call i32 @outn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @readin.yy_nostdinit, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %211
  br label %217

217:                                              ; preds = %216, %201
  %218 = call i32 (...) @OUT_END_CODE()
  br label %219

219:                                              ; preds = %217, %185
  %220 = call i32 (...) @OUT_BEGIN_CODE()
  %221 = load i64, i64* @fullspd, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 @outn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0))
  br label %231

225:                                              ; preds = %219
  %226 = load i64, i64* @C_plus_plus, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = call i32 @outn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %225
  br label %231

231:                                              ; preds = %230, %223
  %232 = call i32 (...) @OUT_END_CODE()
  %233 = load i64, i64* @lex_compat, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 @outn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %231
  %238 = load i64, i64* @C_plus_plus, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %237
  %241 = load i64, i64* @reentrant, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = call i32 @outn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  %245 = call i32 (...) @OUT_BEGIN_CODE()
  %246 = call i32 @outn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %247 = call i32 (...) @OUT_END_CODE()
  br label %248

248:                                              ; preds = %243, %240, %237
  %249 = load i64, i64* @C_plus_plus, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %248
  %252 = call i32 @outn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0))
  %253 = load i32, i32* @do_yywrap, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = call i32 @outn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %251
  %258 = load i64, i64* @yyclass, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %257
  %261 = call i32 @outn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0))
  %262 = call i32 @outn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  %263 = call i32 @outn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.38, i64 0, i64 0))
  %264 = call i32 @outn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0))
  %265 = call i32 @outn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %266 = load i64, i64* @yyclass, align 8
  %267 = call i32 @out_str(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i64 %266)
  br label %268

268:                                              ; preds = %260, %257
  br label %294

269:                                              ; preds = %248
  %270 = load i64, i64* @yytext_is_array, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %269
  %273 = load i64, i64* @reentrant, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = call i32 @outn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %272
  br label %287

278:                                              ; preds = %269
  %279 = load i64, i64* @reentrant, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = call i32 @outn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  br label %286

283:                                              ; preds = %278
  %284 = call i32 @outn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0))
  %285 = call i32 @outn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %281
  br label %287

287:                                              ; preds = %286, %277
  %288 = load i64, i64* @yyclass, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i64 0, i64 0))
  %292 = call i32 @flexerror(i8* %291)
  br label %293

293:                                              ; preds = %290, %287
  br label %294

294:                                              ; preds = %293, %268
  %295 = load i64, i64* @useecs, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load i32, i32* @nextecm, align 4
  %299 = load i32*, i32** @ecgroup, align 8
  %300 = load i32, i32* @csize, align 4
  %301 = call i32 @cre8ecs(i32 %298, i32* %299, i32 %300)
  store i32 %301, i32* @numecs, align 4
  br label %304

302:                                              ; preds = %294
  %303 = load i32, i32* @csize, align 4
  store i32 %303, i32* @numecs, align 4
  br label %304

304:                                              ; preds = %302, %297
  %305 = load i32*, i32** @ecgroup, align 8
  %306 = load i32, i32* @csize, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** @ecgroup, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  store i32 %309, i32* %311, align 4
  %312 = load i32*, i32** @ecgroup, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @ABS(i32 %314)
  store i32 %315, i32* @NUL_ec, align 4
  %316 = load i64, i64* @useecs, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %304
  %319 = call i32 (...) @ccl2ecl()
  br label %320

320:                                              ; preds = %318, %304
  ret void
}

declare dso_local i32 @line_directive_out(i32*, i32) #1

declare dso_local i64 @yyparse(...) #1

declare dso_local i32 @pinpoint_message(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @flexend(i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @lerrsf(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @flexerror(i8*) #1

declare dso_local i32 @out_m4_define(i8*, i32*) #1

declare dso_local i32 @outn(i8*) #1

declare dso_local i32 @OUT_BEGIN_CODE(...) #1

declare dso_local i32 @OUT_END_CODE(...) #1

declare dso_local i32 @out_str(i8*, i64) #1

declare dso_local i32 @cre8ecs(i32, i32*, i32) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @ccl2ecl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
