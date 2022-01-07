; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gentabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_gentabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.yytbl_data = type { i32, i32* }

@num_rules = common dso_local global i32 0, align 4
@current_max_dfas = common dso_local global i32 0, align 4
@nummt = common dso_local global i64 0, align 8
@num_backing_up = common dso_local global i32 0, align 4
@reject = common dso_local global i64 0, align 8
@accsiz = common dso_local global i32* null, align 8
@end_of_buffer_state = common dso_local global i64 0, align 8
@dfaacc = common dso_local global %struct.TYPE_2__* null, align 8
@long_align = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"yy_acclist\00", align 1
@numas = common dso_local global i32 0, align 4
@yydmap_buf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\09{YYTD_ID_ACCLIST, (void**)&yy_acclist, sizeof(%s)},\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"flex_int32_t\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"flex_int16_t\00", align 1
@YYTD_ID_ACCLIST = common dso_local global i32 0, align 4
@lastdfa = common dso_local global i32 0, align 4
@trace = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"state # %d accepts: \00", align 1
@variable_trailing_context_rules = common dso_local global i64 0, align 8
@YY_TRAILING_HEAD_MASK = common dso_local global i32 0, align 4
@rule_type = common dso_local global i64* null, align 8
@RULE_VARIABLE = common dso_local global i64 0, align 8
@YY_TRAILING_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@tablesext = common dso_local global i64 0, align 8
@tableswr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Could not write yyacclist_tbl\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"yy_accept\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"\09{YYTD_ID_ACCEPT, (void**)&yy_accept, sizeof(%s)},\0A\00", align 1
@YYTD_ID_ACCEPT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"state # %d accepts: [%d]\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Could not write yyacc_tbl\00", align 1
@useecs = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"Could not write ecstbl\00", align 1
@usemecs = common dso_local global i64 0, align 8
@YYTD_ID_META = common dso_local global i32 0, align 4
@numecs = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"\0A\0AMeta-Equivalence Classes:\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"yy_meta\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\09{YYTD_ID_META, (void**)&yy_meta, sizeof(%s)},\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%d = %d\0A\00", align 1
@tecbck = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [27 x i8] c"Could not write yymeta_tbl\00", align 1
@numtemps = common dso_local global i32 0, align 4
@tblend = common dso_local global i32 0, align 4
@INT16_MAX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"yy_base\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"\09{YYTD_ID_BASE, (void**)&yy_base, sizeof(%s)},\0A\00", align 1
@YYTD_ID_BASE = common dso_local global i32 0, align 4
@def = common dso_local global i32* null, align 8
@base = common dso_local global i32* null, align 8
@JAMSTATE = common dso_local global i32 0, align 4
@jambase = common dso_local global i32 0, align 4
@jamstate = common dso_local global i32 0, align 4
@tmpuses = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"Could not write yybase_tbl\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"yy_def\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"\09{YYTD_ID_DEF, (void**)&yy_def, sizeof(%s)},\0A\00", align 1
@YYTD_ID_DEF = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [26 x i8] c"Could not write yydef_tbl\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"yy_nxt\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"\09{YYTD_ID_NXT, (void**)&yy_nxt, sizeof(%s)},\0A\00", align 1
@YYTD_ID_NXT = common dso_local global i32 0, align 4
@chk = common dso_local global i32* null, align 8
@nxt = common dso_local global i32* null, align 8
@.str.26 = private unnamed_addr constant [26 x i8] c"Could not write yynxt_tbl\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"yy_chk\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"\09{YYTD_ID_CHK, (void**)&yy_chk, sizeof(%s)},\0A\00", align 1
@YYTD_ID_CHK = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [26 x i8] c"Could not write yychk_tbl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gentabs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.yytbl_data*, align 8
  %10 = alloca %struct.yytbl_data*, align 8
  %11 = alloca %struct.yytbl_data*, align 8
  %12 = alloca %struct.yytbl_data*, align 8
  %13 = alloca %struct.yytbl_data*, align 8
  %14 = alloca %struct.yytbl_data*, align 8
  %15 = alloca %struct.yytbl_data*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.yytbl_data*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = load i32, i32* @num_rules, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  store %struct.yytbl_data* null, %struct.yytbl_data** %9, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %10, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %11, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %12, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %13, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %14, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %32 = load i32, i32* @current_max_dfas, align 4
  %33 = call i32* @allocate_integer_array(i32 %32)
  store i32* %33, i32** %6, align 8
  store i64 0, i64* @nummt, align 8
  %34 = load i32, i32* @num_backing_up, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @num_backing_up, align 4
  %36 = load i64, i64* @reject, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %218

38:                                               ; preds = %0
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** @accsiz, align 8
  %43 = load i64, i64* @end_of_buffer_state, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %47 = load i64, i64* @end_of_buffer_state, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* %45, i32** %49, align 8
  %50 = load i64, i64* @long_align, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 (...) @get_int32_decl()
  br label %56

54:                                               ; preds = %38
  %55 = call i32 (...) @get_int16_decl()
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* @numas, align 4
  %59 = call i32 @MAX(i32 %58, i32 1)
  %60 = add nsw i32 %59, 1
  %61 = call i32 @out_str_dec(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* @long_align, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %66 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = call i64 @calloc(i32 1, i32 16)
  %68 = inttoptr i64 %67 to %struct.yytbl_data*
  store %struct.yytbl_data* %68, %struct.yytbl_data** %15, align 8
  %69 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %70 = load i32, i32* @YYTD_ID_ACCLIST, align 4
  %71 = call i32 @yytbl_data_init(%struct.yytbl_data* %69, i32 %70)
  %72 = load i32, i32* @numas, align 4
  %73 = call i32 @MAX(i32 %72, i32 1)
  %74 = add nsw i32 %73, 1
  %75 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %76 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %78 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @calloc(i32 %79, i32 4)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %21, align 8
  %82 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %83 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  store i32 1, i32* %23, align 4
  store i32 1, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %84

84:                                               ; preds = %193, %56
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @lastdfa, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %196

88:                                               ; preds = %84
  %89 = load i32, i32* %2, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32*, i32** @accsiz, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %192

100:                                              ; preds = %88
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %4, align 8
  %107 = load i32*, i32** @accsiz, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %5, align 4
  %112 = load i64, i64* @trace, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = load i32, i32* @stderr, align 4
  %116 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* %1, align 4
  %118 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %115, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %100
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %188, %119
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %191

124:                                              ; preds = %120
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %2, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %2, align 4
  %132 = load i64, i64* @variable_trailing_context_rules, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %124
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* @YY_TRAILING_HEAD_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %26, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* @num_rules, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i64*, i64** @rule_type, align 8
  %148 = load i32, i32* %26, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @RULE_VARIABLE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* @YY_TRAILING_MASK, align 4
  %156 = load i32, i32* %26, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %26, align 4
  br label %158

158:                                              ; preds = %154, %146, %142, %139, %134, %124
  %159 = load i32, i32* %26, align 4
  %160 = call i32 @mkdata(i32 %159)
  %161 = load i32, i32* %26, align 4
  %162 = load i32*, i32** %21, align 8
  %163 = load i32, i32* %23, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %23, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load i64, i64* @trace, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %158
  %170 = load i32, i32* @stderr, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %169
  %181 = load i32, i32* @stderr, align 4
  %182 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  br label %186

183:                                              ; preds = %169
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 @putc(i8 signext 10, i32 %184)
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %158
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %120

191:                                              ; preds = %120
  br label %192

192:                                              ; preds = %191, %88
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %1, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %1, align 4
  br label %84

196:                                              ; preds = %84
  %197 = load i32, i32* %2, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %1, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  %202 = call i32 (...) @dataend()
  %203 = load i64, i64* @tablesext, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %196
  %206 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %207 = call i32 @yytbl_data_compress(%struct.yytbl_data* %206)
  %208 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %209 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %213 = call i32 @flexerror(i8* %212)
  br label %214

214:                                              ; preds = %211, %205
  %215 = load %struct.yytbl_data*, %struct.yytbl_data** %15, align 8
  %216 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %215)
  store %struct.yytbl_data* null, %struct.yytbl_data** %15, align 8
  br label %217

217:                                              ; preds = %214, %196
  br label %247

218:                                              ; preds = %0
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %221 = load i64, i64* @end_of_buffer_state, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  store i32 %219, i32* %223, align 8
  store i32 1, i32* %1, align 4
  br label %224

224:                                              ; preds = %239, %218
  %225 = load i32, i32* %1, align 4
  %226 = load i32, i32* @lastdfa, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %230 = load i32, i32* %1, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %234, i32* %238, align 4
  br label %239

239:                                              ; preds = %228
  %240 = load i32, i32* %1, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %1, align 4
  br label %224

242:                                              ; preds = %224
  %243 = load i32*, i32** %6, align 8
  %244 = load i32, i32* %1, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 0, i32* %246, align 4
  br label %247

247:                                              ; preds = %242, %217
  %248 = load i32, i32* @lastdfa, align 4
  %249 = add nsw i32 %248, 2
  store i32 %249, i32* %3, align 4
  %250 = load i64, i64* @reject, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %252, %247
  %256 = load i64, i64* @long_align, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 (...) @get_int32_decl()
  br label %262

260:                                              ; preds = %255
  %261 = call i32 (...) @get_int16_decl()
  br label %262

262:                                              ; preds = %260, %258
  %263 = phi i32 [ %259, %258 ], [ %261, %260 ]
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @out_str_dec(i32 %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %264)
  %266 = load i64, i64* @long_align, align 8
  %267 = icmp ne i64 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %270 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %269)
  %271 = call i64 @calloc(i32 1, i32 16)
  %272 = inttoptr i64 %271 to %struct.yytbl_data*
  store %struct.yytbl_data* %272, %struct.yytbl_data** %9, align 8
  %273 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %274 = load i32, i32* @YYTD_ID_ACCEPT, align 4
  %275 = call i32 @yytbl_data_init(%struct.yytbl_data* %273, i32 %274)
  %276 = load i32, i32* %3, align 4
  %277 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %278 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %280 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i64 @calloc(i32 %281, i32 4)
  %283 = inttoptr i64 %282 to i32*
  store i32* %283, i32** %16, align 8
  %284 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %285 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %284, i32 0, i32 1
  store i32* %283, i32** %285, align 8
  store i32 1, i32* %24, align 4
  store i32 1, i32* %1, align 4
  br label %286

286:                                              ; preds = %330, %262
  %287 = load i32, i32* %1, align 4
  %288 = load i32, i32* @lastdfa, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %333

290:                                              ; preds = %286
  %291 = load i32*, i32** %6, align 8
  %292 = load i32, i32* %1, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @mkdata(i32 %295)
  %297 = load i32*, i32** %6, align 8
  %298 = load i32, i32* %1, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %16, align 8
  %303 = load i32, i32* %24, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %24, align 4
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  store i32 %301, i32* %306, align 4
  %307 = load i64, i64* @reject, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %329, label %309

309:                                              ; preds = %290
  %310 = load i64, i64* @trace, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %329

312:                                              ; preds = %309
  %313 = load i32*, i32** %6, align 8
  %314 = load i32, i32* %1, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %312
  %320 = load i32, i32* @stderr, align 4
  %321 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %322 = load i32, i32* %1, align 4
  %323 = load i32*, i32** %6, align 8
  %324 = load i32, i32* %1, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %320, i8* %321, i32 %322, i32 %327)
  br label %329

329:                                              ; preds = %319, %312, %309, %290
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %1, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %1, align 4
  br label %286

333:                                              ; preds = %286
  %334 = load i32*, i32** %6, align 8
  %335 = load i32, i32* %1, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @mkdata(i32 %338)
  %340 = load i32*, i32** %6, align 8
  %341 = load i32, i32* %1, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %16, align 8
  %346 = load i32, i32* %24, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %24, align 4
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  store i32 %344, i32* %349, align 4
  %350 = load i64, i64* @reject, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %369

352:                                              ; preds = %333
  %353 = load i32*, i32** %6, align 8
  %354 = load i32, i32* %1, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @mkdata(i32 %357)
  %359 = load i32*, i32** %6, align 8
  %360 = load i32, i32* %1, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %16, align 8
  %365 = load i32, i32* %24, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %24, align 4
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i32, i32* %364, i64 %367
  store i32 %363, i32* %368, align 4
  br label %369

369:                                              ; preds = %352, %333
  %370 = call i32 (...) @dataend()
  %371 = load i64, i64* @tablesext, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %385

373:                                              ; preds = %369
  %374 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %375 = call i32 @yytbl_data_compress(%struct.yytbl_data* %374)
  %376 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %377 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %376)
  %378 = icmp slt i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %381 = call i32 @flexerror(i8* %380)
  br label %382

382:                                              ; preds = %379, %373
  %383 = load %struct.yytbl_data*, %struct.yytbl_data** %9, align 8
  %384 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %383)
  store %struct.yytbl_data* null, %struct.yytbl_data** %9, align 8
  br label %385

385:                                              ; preds = %382, %369
  %386 = load i64, i64* @useecs, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %406

388:                                              ; preds = %385
  %389 = call i32 (...) @genecs()
  %390 = load i64, i64* @tablesext, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %405

392:                                              ; preds = %388
  %393 = call %struct.yytbl_data* (...) @mkecstbl()
  store %struct.yytbl_data* %393, %struct.yytbl_data** %27, align 8
  %394 = load %struct.yytbl_data*, %struct.yytbl_data** %27, align 8
  %395 = call i32 @yytbl_data_compress(%struct.yytbl_data* %394)
  %396 = load %struct.yytbl_data*, %struct.yytbl_data** %27, align 8
  %397 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %396)
  %398 = icmp slt i64 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %392
  %400 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %401 = call i32 @flexerror(i8* %400)
  br label %402

402:                                              ; preds = %399, %392
  %403 = load %struct.yytbl_data*, %struct.yytbl_data** %27, align 8
  %404 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %403)
  store %struct.yytbl_data* null, %struct.yytbl_data** %27, align 8
  br label %405

405:                                              ; preds = %402, %388
  br label %406

406:                                              ; preds = %405, %385
  %407 = load i64, i64* @usemecs, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %493

409:                                              ; preds = %406
  store i32* null, i32** %28, align 8
  %410 = call i64 @calloc(i32 1, i32 16)
  %411 = inttoptr i64 %410 to %struct.yytbl_data*
  store %struct.yytbl_data* %411, %struct.yytbl_data** %10, align 8
  %412 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %413 = load i32, i32* @YYTD_ID_META, align 4
  %414 = call i32 @yytbl_data_init(%struct.yytbl_data* %412, i32 %413)
  %415 = load i32, i32* @numecs, align 4
  %416 = add nsw i32 %415, 1
  %417 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %418 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %417, i32 0, i32 0
  store i32 %416, i32* %418, align 8
  %419 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %420 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i64 @calloc(i32 %421, i32 4)
  %423 = inttoptr i64 %422 to i32*
  store i32* %423, i32** %28, align 8
  %424 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %425 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %424, i32 0, i32 1
  store i32* %423, i32** %425, align 8
  %426 = load i64, i64* @trace, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %409
  %429 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %430 = load i32, i32* @stderr, align 4
  %431 = call i32 @fputs(i8* %429, i32 %430)
  br label %432

432:                                              ; preds = %428, %409
  %433 = call i32 (...) @get_int32_decl()
  %434 = load i32, i32* @numecs, align 4
  %435 = add nsw i32 %434, 1
  %436 = call i32 @out_str_dec(i32 %433, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %435)
  %437 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %438

438:                                              ; preds = %473, %432
  %439 = load i32, i32* %1, align 4
  %440 = load i32, i32* @numecs, align 4
  %441 = icmp sle i32 %439, %440
  br i1 %441, label %442, label %476

442:                                              ; preds = %438
  %443 = load i64, i64* @trace, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %455

445:                                              ; preds = %442
  %446 = load i32, i32* @stderr, align 4
  %447 = load i32, i32* %1, align 4
  %448 = load i32*, i32** @tecbck, align 8
  %449 = load i32, i32* %1, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @ABS(i32 %452)
  %454 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %446, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %447, i32 %453)
  br label %455

455:                                              ; preds = %445, %442
  %456 = load i32*, i32** @tecbck, align 8
  %457 = load i32, i32* %1, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @ABS(i32 %460)
  %462 = call i32 @mkdata(i32 %461)
  %463 = load i32*, i32** @tecbck, align 8
  %464 = load i32, i32* %1, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @ABS(i32 %467)
  %469 = load i32*, i32** %28, align 8
  %470 = load i32, i32* %1, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  store i32 %468, i32* %472, align 4
  br label %473

473:                                              ; preds = %455
  %474 = load i32, i32* %1, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %1, align 4
  br label %438

476:                                              ; preds = %438
  %477 = call i32 (...) @dataend()
  %478 = load i64, i64* @tablesext, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %492

480:                                              ; preds = %476
  %481 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %482 = call i32 @yytbl_data_compress(%struct.yytbl_data* %481)
  %483 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %484 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %483)
  %485 = icmp slt i64 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %480
  %487 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %488 = call i32 @flexerror(i8* %487)
  br label %489

489:                                              ; preds = %486, %480
  %490 = load %struct.yytbl_data*, %struct.yytbl_data** %10, align 8
  %491 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %490)
  store %struct.yytbl_data* null, %struct.yytbl_data** %10, align 8
  br label %492

492:                                              ; preds = %489, %476
  br label %493

493:                                              ; preds = %492, %406
  %494 = load i32, i32* @lastdfa, align 4
  %495 = load i32, i32* @numtemps, align 4
  %496 = add nsw i32 %494, %495
  store i32 %496, i32* %7, align 4
  %497 = load i32, i32* @tblend, align 4
  %498 = load i32, i32* @INT16_MAX, align 4
  %499 = icmp sge i32 %497, %498
  br i1 %499, label %503, label %500

500:                                              ; preds = %493
  %501 = load i64, i64* @long_align, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %500, %493
  %504 = call i32 (...) @get_int32_decl()
  br label %507

505:                                              ; preds = %500
  %506 = call i32 (...) @get_int16_decl()
  br label %507

507:                                              ; preds = %505, %503
  %508 = phi i32 [ %504, %503 ], [ %506, %505 ]
  %509 = load i32, i32* %7, align 4
  %510 = add nsw i32 %509, 1
  %511 = call i32 @out_str_dec(i32 %508, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %510)
  %512 = load i32, i32* @tblend, align 4
  %513 = load i32, i32* @INT16_MAX, align 4
  %514 = icmp sge i32 %512, %513
  br i1 %514, label %518, label %515

515:                                              ; preds = %507
  %516 = load i64, i64* @long_align, align 8
  %517 = icmp ne i64 %516, 0
  br label %518

518:                                              ; preds = %515, %507
  %519 = phi i1 [ true, %507 ], [ %517, %515 ]
  %520 = zext i1 %519 to i64
  %521 = select i1 %519, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %522 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8* %521)
  %523 = call i64 @calloc(i32 1, i32 16)
  %524 = inttoptr i64 %523 to %struct.yytbl_data*
  store %struct.yytbl_data* %524, %struct.yytbl_data** %11, align 8
  %525 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %526 = load i32, i32* @YYTD_ID_BASE, align 4
  %527 = call i32 @yytbl_data_init(%struct.yytbl_data* %525, i32 %526)
  %528 = load i32, i32* %7, align 4
  %529 = add nsw i32 %528, 1
  %530 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %531 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %530, i32 0, i32 0
  store i32 %529, i32* %531, align 8
  %532 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %533 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = call i64 @calloc(i32 %534, i32 4)
  %536 = inttoptr i64 %535 to i32*
  store i32* %536, i32** %17, align 8
  %537 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %538 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %537, i32 0, i32 1
  store i32* %536, i32** %538, align 8
  store i32 1, i32* %22, align 4
  store i32 1, i32* %1, align 4
  br label %539

539:                                              ; preds = %604, %518
  %540 = load i32, i32* %1, align 4
  %541 = load i32, i32* @lastdfa, align 4
  %542 = icmp sle i32 %540, %541
  br i1 %542, label %543, label %607

543:                                              ; preds = %539
  %544 = load i32*, i32** @def, align 8
  %545 = load i32, i32* %1, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  store i32 %548, i32* %29, align 4
  %549 = load i32*, i32** @base, align 8
  %550 = load i32, i32* %1, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* @JAMSTATE, align 4
  %555 = icmp eq i32 %553, %554
  br i1 %555, label %556, label %562

556:                                              ; preds = %543
  %557 = load i32, i32* @jambase, align 4
  %558 = load i32*, i32** @base, align 8
  %559 = load i32, i32* %1, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  store i32 %557, i32* %561, align 4
  br label %562

562:                                              ; preds = %556, %543
  %563 = load i32, i32* %29, align 4
  %564 = load i32, i32* @JAMSTATE, align 4
  %565 = icmp eq i32 %563, %564
  br i1 %565, label %566, label %572

566:                                              ; preds = %562
  %567 = load i32, i32* @jamstate, align 4
  %568 = load i32*, i32** @def, align 8
  %569 = load i32, i32* %1, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %568, i64 %570
  store i32 %567, i32* %571, align 4
  br label %587

572:                                              ; preds = %562
  %573 = load i32, i32* %29, align 4
  %574 = icmp slt i32 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %572
  %576 = load i32, i32* @tmpuses, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* @tmpuses, align 4
  %578 = load i32, i32* @lastdfa, align 4
  %579 = load i32, i32* %29, align 4
  %580 = sub nsw i32 %578, %579
  %581 = add nsw i32 %580, 1
  %582 = load i32*, i32** @def, align 8
  %583 = load i32, i32* %1, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %582, i64 %584
  store i32 %581, i32* %585, align 4
  br label %586

586:                                              ; preds = %575, %572
  br label %587

587:                                              ; preds = %586, %566
  %588 = load i32*, i32** @base, align 8
  %589 = load i32, i32* %1, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32, i32* %588, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @mkdata(i32 %592)
  %594 = load i32*, i32** @base, align 8
  %595 = load i32, i32* %1, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load i32*, i32** %17, align 8
  %600 = load i32, i32* %22, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %22, align 4
  %602 = sext i32 %600 to i64
  %603 = getelementptr inbounds i32, i32* %599, i64 %602
  store i32 %598, i32* %603, align 4
  br label %604

604:                                              ; preds = %587
  %605 = load i32, i32* %1, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %1, align 4
  br label %539

607:                                              ; preds = %539
  %608 = load i32*, i32** @base, align 8
  %609 = load i32, i32* %1, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %608, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = call i32 @mkdata(i32 %612)
  %614 = load i32*, i32** @base, align 8
  %615 = load i32, i32* %1, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32, i32* %614, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = load i32*, i32** %17, align 8
  %620 = load i32, i32* %22, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %22, align 4
  %622 = sext i32 %620 to i64
  %623 = getelementptr inbounds i32, i32* %619, i64 %622
  store i32 %618, i32* %623, align 4
  %624 = load i32, i32* %1, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %1, align 4
  br label %626

626:                                              ; preds = %652, %607
  %627 = load i32, i32* %1, align 4
  %628 = load i32, i32* %7, align 4
  %629 = icmp sle i32 %627, %628
  br i1 %629, label %630, label %655

630:                                              ; preds = %626
  %631 = load i32*, i32** @base, align 8
  %632 = load i32, i32* %1, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, i32* %631, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @mkdata(i32 %635)
  %637 = load i32*, i32** @base, align 8
  %638 = load i32, i32* %1, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32, i32* %637, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = load i32*, i32** %17, align 8
  %643 = load i32, i32* %22, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %22, align 4
  %645 = sext i32 %643 to i64
  %646 = getelementptr inbounds i32, i32* %642, i64 %645
  store i32 %641, i32* %646, align 4
  %647 = load i32, i32* @jamstate, align 4
  %648 = load i32*, i32** @def, align 8
  %649 = load i32, i32* %1, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %648, i64 %650
  store i32 %647, i32* %651, align 4
  br label %652

652:                                              ; preds = %630
  %653 = load i32, i32* %1, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %1, align 4
  br label %626

655:                                              ; preds = %626
  %656 = call i32 (...) @dataend()
  %657 = load i64, i64* @tablesext, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %671

659:                                              ; preds = %655
  %660 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %661 = call i32 @yytbl_data_compress(%struct.yytbl_data* %660)
  %662 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %663 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %662)
  %664 = icmp slt i64 %663, 0
  br i1 %664, label %665, label %668

665:                                              ; preds = %659
  %666 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %667 = call i32 @flexerror(i8* %666)
  br label %668

668:                                              ; preds = %665, %659
  %669 = load %struct.yytbl_data*, %struct.yytbl_data** %11, align 8
  %670 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %669)
  store %struct.yytbl_data* null, %struct.yytbl_data** %11, align 8
  br label %671

671:                                              ; preds = %668, %655
  %672 = load i32, i32* %7, align 4
  %673 = load i32, i32* @INT16_MAX, align 4
  %674 = icmp sge i32 %672, %673
  br i1 %674, label %678, label %675

675:                                              ; preds = %671
  %676 = load i64, i64* @long_align, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %680

678:                                              ; preds = %675, %671
  %679 = call i32 (...) @get_int32_decl()
  br label %682

680:                                              ; preds = %675
  %681 = call i32 (...) @get_int16_decl()
  br label %682

682:                                              ; preds = %680, %678
  %683 = phi i32 [ %679, %678 ], [ %681, %680 ]
  %684 = load i32, i32* %7, align 4
  %685 = add nsw i32 %684, 1
  %686 = call i32 @out_str_dec(i32 %683, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %685)
  %687 = load i32, i32* %7, align 4
  %688 = load i32, i32* @INT16_MAX, align 4
  %689 = icmp sge i32 %687, %688
  br i1 %689, label %693, label %690

690:                                              ; preds = %682
  %691 = load i64, i64* @long_align, align 8
  %692 = icmp ne i64 %691, 0
  br label %693

693:                                              ; preds = %690, %682
  %694 = phi i1 [ true, %682 ], [ %692, %690 ]
  %695 = zext i1 %694 to i64
  %696 = select i1 %694, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %697 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i8* %696)
  %698 = call i64 @calloc(i32 1, i32 16)
  %699 = inttoptr i64 %698 to %struct.yytbl_data*
  store %struct.yytbl_data* %699, %struct.yytbl_data** %12, align 8
  %700 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %701 = load i32, i32* @YYTD_ID_DEF, align 4
  %702 = call i32 @yytbl_data_init(%struct.yytbl_data* %700, i32 %701)
  %703 = load i32, i32* %7, align 4
  %704 = add nsw i32 %703, 1
  %705 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %706 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %705, i32 0, i32 0
  store i32 %704, i32* %706, align 8
  %707 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %708 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  %710 = call i64 @calloc(i32 %709, i32 4)
  %711 = inttoptr i64 %710 to i32*
  store i32* %711, i32** %18, align 8
  %712 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %713 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %712, i32 0, i32 1
  store i32* %711, i32** %713, align 8
  store i32 1, i32* %1, align 4
  br label %714

714:                                              ; preds = %734, %693
  %715 = load i32, i32* %1, align 4
  %716 = load i32, i32* %7, align 4
  %717 = icmp sle i32 %715, %716
  br i1 %717, label %718, label %737

718:                                              ; preds = %714
  %719 = load i32*, i32** @def, align 8
  %720 = load i32, i32* %1, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, i32* %719, i64 %721
  %723 = load i32, i32* %722, align 4
  %724 = call i32 @mkdata(i32 %723)
  %725 = load i32*, i32** @def, align 8
  %726 = load i32, i32* %1, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32, i32* %725, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = load i32*, i32** %18, align 8
  %731 = load i32, i32* %1, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i32, i32* %730, i64 %732
  store i32 %729, i32* %733, align 4
  br label %734

734:                                              ; preds = %718
  %735 = load i32, i32* %1, align 4
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* %1, align 4
  br label %714

737:                                              ; preds = %714
  %738 = call i32 (...) @dataend()
  %739 = load i64, i64* @tablesext, align 8
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %753

741:                                              ; preds = %737
  %742 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %743 = call i32 @yytbl_data_compress(%struct.yytbl_data* %742)
  %744 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %745 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %744)
  %746 = icmp slt i64 %745, 0
  br i1 %746, label %747, label %750

747:                                              ; preds = %741
  %748 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %749 = call i32 @flexerror(i8* %748)
  br label %750

750:                                              ; preds = %747, %741
  %751 = load %struct.yytbl_data*, %struct.yytbl_data** %12, align 8
  %752 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %751)
  store %struct.yytbl_data* null, %struct.yytbl_data** %12, align 8
  br label %753

753:                                              ; preds = %750, %737
  %754 = load i32, i32* %7, align 4
  %755 = load i32, i32* @INT16_MAX, align 4
  %756 = icmp sge i32 %754, %755
  br i1 %756, label %760, label %757

757:                                              ; preds = %753
  %758 = load i64, i64* @long_align, align 8
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %757, %753
  %761 = call i32 (...) @get_int32_decl()
  br label %764

762:                                              ; preds = %757
  %763 = call i32 (...) @get_int16_decl()
  br label %764

764:                                              ; preds = %762, %760
  %765 = phi i32 [ %761, %760 ], [ %763, %762 ]
  %766 = load i32, i32* @tblend, align 4
  %767 = add nsw i32 %766, 1
  %768 = call i32 @out_str_dec(i32 %765, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %767)
  %769 = load i32, i32* %7, align 4
  %770 = load i32, i32* @INT16_MAX, align 4
  %771 = icmp sge i32 %769, %770
  br i1 %771, label %775, label %772

772:                                              ; preds = %764
  %773 = load i64, i64* @long_align, align 8
  %774 = icmp ne i64 %773, 0
  br label %775

775:                                              ; preds = %772, %764
  %776 = phi i1 [ true, %764 ], [ %774, %772 ]
  %777 = zext i1 %776 to i64
  %778 = select i1 %776, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %779 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i8* %778)
  %780 = call i64 @calloc(i32 1, i32 16)
  %781 = inttoptr i64 %780 to %struct.yytbl_data*
  store %struct.yytbl_data* %781, %struct.yytbl_data** %13, align 8
  %782 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %783 = load i32, i32* @YYTD_ID_NXT, align 4
  %784 = call i32 @yytbl_data_init(%struct.yytbl_data* %782, i32 %783)
  %785 = load i32, i32* @tblend, align 4
  %786 = add nsw i32 %785, 1
  %787 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %788 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %787, i32 0, i32 0
  store i32 %786, i32* %788, align 8
  %789 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %790 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  %792 = call i64 @calloc(i32 %791, i32 4)
  %793 = inttoptr i64 %792 to i32*
  store i32* %793, i32** %19, align 8
  %794 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %795 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %794, i32 0, i32 1
  store i32* %793, i32** %795, align 8
  store i32 1, i32* %1, align 4
  br label %796

796:                                              ; preds = %836, %775
  %797 = load i32, i32* %1, align 4
  %798 = load i32, i32* @tblend, align 4
  %799 = icmp sle i32 %797, %798
  br i1 %799, label %800, label %839

800:                                              ; preds = %796
  %801 = load i32*, i32** @chk, align 8
  %802 = load i32, i32* %1, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i32, i32* %801, i64 %803
  %805 = load i32, i32* %804, align 4
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %814, label %807

807:                                              ; preds = %800
  %808 = load i32*, i32** @nxt, align 8
  %809 = load i32, i32* %1, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i32, i32* %808, i64 %810
  %812 = load i32, i32* %811, align 4
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %820

814:                                              ; preds = %807, %800
  %815 = load i32, i32* @jamstate, align 4
  %816 = load i32*, i32** @nxt, align 8
  %817 = load i32, i32* %1, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds i32, i32* %816, i64 %818
  store i32 %815, i32* %819, align 4
  br label %820

820:                                              ; preds = %814, %807
  %821 = load i32*, i32** @nxt, align 8
  %822 = load i32, i32* %1, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i32, i32* %821, i64 %823
  %825 = load i32, i32* %824, align 4
  %826 = call i32 @mkdata(i32 %825)
  %827 = load i32*, i32** @nxt, align 8
  %828 = load i32, i32* %1, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i32, i32* %827, i64 %829
  %831 = load i32, i32* %830, align 4
  %832 = load i32*, i32** %19, align 8
  %833 = load i32, i32* %1, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i32, i32* %832, i64 %834
  store i32 %831, i32* %835, align 4
  br label %836

836:                                              ; preds = %820
  %837 = load i32, i32* %1, align 4
  %838 = add nsw i32 %837, 1
  store i32 %838, i32* %1, align 4
  br label %796

839:                                              ; preds = %796
  %840 = call i32 (...) @dataend()
  %841 = load i64, i64* @tablesext, align 8
  %842 = icmp ne i64 %841, 0
  br i1 %842, label %843, label %855

843:                                              ; preds = %839
  %844 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %845 = call i32 @yytbl_data_compress(%struct.yytbl_data* %844)
  %846 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %847 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %846)
  %848 = icmp slt i64 %847, 0
  br i1 %848, label %849, label %852

849:                                              ; preds = %843
  %850 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  %851 = call i32 @flexerror(i8* %850)
  br label %852

852:                                              ; preds = %849, %843
  %853 = load %struct.yytbl_data*, %struct.yytbl_data** %13, align 8
  %854 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %853)
  store %struct.yytbl_data* null, %struct.yytbl_data** %13, align 8
  br label %855

855:                                              ; preds = %852, %839
  %856 = load i32, i32* %7, align 4
  %857 = load i32, i32* @INT16_MAX, align 4
  %858 = icmp sge i32 %856, %857
  br i1 %858, label %862, label %859

859:                                              ; preds = %855
  %860 = load i64, i64* @long_align, align 8
  %861 = icmp ne i64 %860, 0
  br i1 %861, label %862, label %864

862:                                              ; preds = %859, %855
  %863 = call i32 (...) @get_int32_decl()
  br label %866

864:                                              ; preds = %859
  %865 = call i32 (...) @get_int16_decl()
  br label %866

866:                                              ; preds = %864, %862
  %867 = phi i32 [ %863, %862 ], [ %865, %864 ]
  %868 = load i32, i32* @tblend, align 4
  %869 = add nsw i32 %868, 1
  %870 = call i32 @out_str_dec(i32 %867, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %869)
  %871 = load i32, i32* %7, align 4
  %872 = load i32, i32* @INT16_MAX, align 4
  %873 = icmp sge i32 %871, %872
  br i1 %873, label %877, label %874

874:                                              ; preds = %866
  %875 = load i64, i64* @long_align, align 8
  %876 = icmp ne i64 %875, 0
  br label %877

877:                                              ; preds = %874, %866
  %878 = phi i1 [ true, %866 ], [ %876, %874 ]
  %879 = zext i1 %878 to i64
  %880 = select i1 %878, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %881 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i8* %880)
  %882 = call i64 @calloc(i32 1, i32 16)
  %883 = inttoptr i64 %882 to %struct.yytbl_data*
  store %struct.yytbl_data* %883, %struct.yytbl_data** %14, align 8
  %884 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %885 = load i32, i32* @YYTD_ID_CHK, align 4
  %886 = call i32 @yytbl_data_init(%struct.yytbl_data* %884, i32 %885)
  %887 = load i32, i32* @tblend, align 4
  %888 = add nsw i32 %887, 1
  %889 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %890 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %889, i32 0, i32 0
  store i32 %888, i32* %890, align 8
  %891 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %892 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %891, i32 0, i32 0
  %893 = load i32, i32* %892, align 8
  %894 = call i64 @calloc(i32 %893, i32 4)
  %895 = inttoptr i64 %894 to i32*
  store i32* %895, i32** %20, align 8
  %896 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %897 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %896, i32 0, i32 1
  store i32* %895, i32** %897, align 8
  store i32 1, i32* %1, align 4
  br label %898

898:                                              ; preds = %928, %877
  %899 = load i32, i32* %1, align 4
  %900 = load i32, i32* @tblend, align 4
  %901 = icmp sle i32 %899, %900
  br i1 %901, label %902, label %931

902:                                              ; preds = %898
  %903 = load i32*, i32** @chk, align 8
  %904 = load i32, i32* %1, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i32, i32* %903, i64 %905
  %907 = load i32, i32* %906, align 4
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %912

909:                                              ; preds = %902
  %910 = load i64, i64* @nummt, align 8
  %911 = add nsw i64 %910, 1
  store i64 %911, i64* @nummt, align 8
  br label %912

912:                                              ; preds = %909, %902
  %913 = load i32*, i32** @chk, align 8
  %914 = load i32, i32* %1, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds i32, i32* %913, i64 %915
  %917 = load i32, i32* %916, align 4
  %918 = call i32 @mkdata(i32 %917)
  %919 = load i32*, i32** @chk, align 8
  %920 = load i32, i32* %1, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32, i32* %919, i64 %921
  %923 = load i32, i32* %922, align 4
  %924 = load i32*, i32** %20, align 8
  %925 = load i32, i32* %1, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds i32, i32* %924, i64 %926
  store i32 %923, i32* %927, align 4
  br label %928

928:                                              ; preds = %912
  %929 = load i32, i32* %1, align 4
  %930 = add nsw i32 %929, 1
  store i32 %930, i32* %1, align 4
  br label %898

931:                                              ; preds = %898
  %932 = call i32 (...) @dataend()
  %933 = load i64, i64* @tablesext, align 8
  %934 = icmp ne i64 %933, 0
  br i1 %934, label %935, label %947

935:                                              ; preds = %931
  %936 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %937 = call i32 @yytbl_data_compress(%struct.yytbl_data* %936)
  %938 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %939 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %938)
  %940 = icmp slt i64 %939, 0
  br i1 %940, label %941, label %944

941:                                              ; preds = %935
  %942 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %943 = call i32 @flexerror(i8* %942)
  br label %944

944:                                              ; preds = %941, %935
  %945 = load %struct.yytbl_data*, %struct.yytbl_data** %14, align 8
  %946 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %945)
  store %struct.yytbl_data* null, %struct.yytbl_data** %14, align 8
  br label %947

947:                                              ; preds = %944, %931
  %948 = load i32*, i32** %6, align 8
  %949 = bitcast i32* %948 to i8*
  %950 = call i32 @flex_free(i8* %949)
  ret void
}

declare dso_local i32* @allocate_integer_array(i32) #1

declare dso_local i32 @out_str_dec(i32, i8*, i32) #1

declare dso_local i32 @get_int32_decl(...) #1

declare dso_local i32 @get_int16_decl(...) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @buf_prints(i32*, i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @mkdata(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @dataend(...) #1

declare dso_local i32 @yytbl_data_compress(%struct.yytbl_data*) #1

declare dso_local i64 @yytbl_data_fwrite(i32*, %struct.yytbl_data*) #1

declare dso_local i32 @flexerror(i8*) #1

declare dso_local i32 @yytbl_data_destroy(%struct.yytbl_data*) #1

declare dso_local i32 @genecs(...) #1

declare dso_local %struct.yytbl_data* @mkecstbl(...) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @flex_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
