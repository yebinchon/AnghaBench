; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_dfa.c_ntod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_dfa.c_ntod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.yytbl_data = type { i32, i32, i32* }

@CSIZE = common dso_local global i32 0, align 4
@num_rules = common dso_local global i32 0, align 4
@current_max_dfa_size = common dso_local global i32 0, align 4
@csize = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@trace = common dso_local global i64 0, align 8
@scset = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"\0A\0ADFA Dump:\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@fullspd = common dso_local global i64 0, align 8
@ecgroup = common dso_local global i32* null, align 8
@numecs = common dso_local global i32 0, align 4
@fulltbl = common dso_local global i64 0, align 8
@current_max_dfas = common dso_local global i32 0, align 4
@nultrans = common dso_local global i32* null, align 8
@dfaacc = common dso_local global %struct.TYPE_2__* null, align 8
@YYTD_ID_NXT = common dso_local global i32 0, align 4
@yydmap_buf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\09{YYTD_ID_NXT, (void**)&yy_nxt, sizeof(%s)},\0A\00", align 1
@long_align = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"flex_int32_t\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"flex_int16_t\00", align 1
@gentables = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"static yyconst %s yy_nxt[][%d] =\0A    {\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"#undef YY_NXT_LOLEN\0A#define YY_NXT_LOLEN (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"static yyconst %s *yy_nxt =0;\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"    },\0A\00", align 1
@lastsc = common dso_local global i32 0, align 4
@scbol = common dso_local global i32* null, align 8
@numas = common dso_local global i64 0, align 8
@totnst = common dso_local global i64 0, align 8
@variable_trailing_context_rules = common dso_local global i64 0, align 8
@end_of_buffer_state = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"could not create unique end-of-buffer state\00", align 1
@dss = common dso_local global i32** null, align 8
@dfasiz = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"state # %d:\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\09%d\09%d\0A\00", align 1
@numuniq = common dso_local global i32 0, align 4
@numdup = common dso_local global i32 0, align 4
@numsnpairs = common dso_local global i32 0, align 4
@NUL_ec = common dso_local global i64 0, align 8
@JAMSTATE = common dso_local global i32 0, align 4
@tablesext = common dso_local global i64 0, align 8
@tableswr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Could not write yynxt_tbl[][]\00", align 1
@onesp = common dso_local global i64 0, align 8
@onestate = common dso_local global i32* null, align 8
@onesym = common dso_local global i32* null, align 8
@onenext = common dso_local global i32* null, align 8
@onedef = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntod() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.yytbl_data*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 0, i32* %9, align 4
  %32 = load i32, i32* @CSIZE, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %18, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  store %struct.yytbl_data* null, %struct.yytbl_data** %23, align 8
  store i32* null, i32** %24, align 8
  store i32 0, i32* %25, align 4
  %37 = load i32, i32* @CSIZE, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %26, align 8
  %41 = load i32, i32* @CSIZE, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %27, align 8
  %45 = load i32, i32* @CSIZE, align 4
  %46 = add nsw i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %28, align 8
  %49 = load i32, i32* @CSIZE, align 4
  %50 = add nsw i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %29, align 8
  %53 = load i32, i32* @num_rules, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %54, 2
  %56 = call i8* @allocate_integer_array(i32 %55)
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %1, align 8
  %58 = load i32, i32* @current_max_dfa_size, align 4
  %59 = call i8* @allocate_integer_array(i32 %58)
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %10, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %73, %0
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @csize, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32, i32* @NIL, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %40, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %36, i64 %71
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %61

76:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @num_rules, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* @NIL, align 4
  %83 = load i32*, i32** %1, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %77

90:                                               ; preds = %77
  %91 = load i64, i64* @trace, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32*, i32** @scset, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dumpnfa(i32 %96)
  %98 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fputs(i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %90
  %102 = call i32 (...) @inittbl()
  %103 = load i64, i64* @fullspd, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %144, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** @ecgroup, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @numecs, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %144

111:                                              ; preds = %105
  %112 = load i32, i32* @numecs, align 4
  %113 = load i32, i32* @csize, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %30, align 4
  %116 = load i64, i64* @fulltbl, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %111
  %119 = load i32, i32* %30, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %118
  store i32 1, i32* %31, align 4
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, i32* %31, align 4
  %124 = load i32, i32* @csize, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i32, i32* @numecs, align 4
  %128 = load i32, i32* %31, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 1, i32* %30, align 4
  br label %135

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %31, align 4
  %134 = mul nsw i32 %133, 2
  store i32 %134, i32* %31, align 4
  br label %122

135:                                              ; preds = %130, %122
  br label %136

136:                                              ; preds = %135, %118, %111
  %137 = load i32, i32* %30, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @current_max_dfas, align 4
  %141 = call i8* @allocate_integer_array(i32 %140)
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** @nultrans, align 8
  br label %143

143:                                              ; preds = %139, %136
  br label %144

144:                                              ; preds = %143, %105, %101
  %145 = load i64, i64* @fullspd, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %156, %147
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @numecs, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %44, i64 %154
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %148

159:                                              ; preds = %148
  %160 = call i32 @place_state(i32* %44, i32 0, i32 0)
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %247

164:                                              ; preds = %144
  %165 = load i64, i64* @fulltbl, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %246

167:                                              ; preds = %164
  %168 = load i32*, i32** @nultrans, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @numecs, align 4
  store i32 %171, i32* %9, align 4
  br label %175

172:                                              ; preds = %167
  %173 = load i32, i32* @numecs, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %172, %170
  %176 = call i64 @calloc(i32 1, i32 16)
  %177 = inttoptr i64 %176 to %struct.yytbl_data*
  store %struct.yytbl_data* %177, %struct.yytbl_data** %23, align 8
  %178 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %179 = load i32, i32* @YYTD_ID_NXT, align 4
  %180 = call i32 @yytbl_data_init(%struct.yytbl_data* %178, i32 %179)
  %181 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %182 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %185 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %187 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %190 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = call i64 @calloc(i32 %192, i32 4)
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %24, align 8
  %195 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %196 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %195, i32 0, i32 2
  store i32* %194, i32** %196, align 8
  store i32 0, i32* %25, align 4
  %197 = load i64, i64* @long_align, align 8
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %201 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %200)
  %202 = load i64, i64* @gentables, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %175
  %205 = load i64, i64* @long_align, align 8
  %206 = icmp ne i64 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @out_str_dec(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %208, i32 %209)
  br label %219

211:                                              ; preds = %175
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @out_dec(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  %214 = load i64, i64* @long_align, align 8
  %215 = icmp ne i64 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %218 = call i32 @out_str(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %211, %204
  %220 = load i64, i64* @gentables, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %219
  store i32 0, i32* %14, align 4
  br label %225

225:                                              ; preds = %236, %224
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %225
  %230 = call i32 @mk2data(i32 0)
  %231 = load i32*, i32** %24, align 8
  %232 = load i32, i32* %25, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %25, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %225

239:                                              ; preds = %225
  %240 = call i32 (...) @dataflush()
  %241 = load i64, i64* @gentables, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %239
  br label %246

246:                                              ; preds = %245, %164
  br label %247

247:                                              ; preds = %246, %159
  %248 = load i32, i32* @lastsc, align 4
  %249 = mul nsw i32 %248, 2
  store i32 %249, i32* %20, align 4
  store i32 1, i32* %14, align 4
  br label %250

250:                                              ; preds = %323, %247
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %20, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %326

254:                                              ; preds = %250
  store i32 1, i32* %7, align 4
  %255 = load i32, i32* %14, align 4
  %256 = srem i32 %255, 2
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %270

258:                                              ; preds = %254
  %259 = load i32*, i32** @scset, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sdiv i32 %260, 2
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %259, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %10, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %265, i32* %269, align 4
  br label %288

270:                                              ; preds = %254
  %271 = load i32*, i32** @scbol, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sdiv i32 %272, 2
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** @scset, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sdiv i32 %278, 2
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @mkbranch(i32 %276, i32 %282)
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  store i32 %283, i32* %287, align 4
  br label %288

288:                                              ; preds = %270, %258
  %289 = load i32*, i32** %10, align 8
  %290 = load i32*, i32** %1, align 8
  %291 = call i32* @epsclosure(i32* %289, i32* %7, i32* %290, i32* %3, i32* %6)
  store i32* %291, i32** %10, align 8
  %292 = load i32*, i32** %10, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load i32*, i32** %1, align 8
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %6, align 4
  %297 = call i64 @snstods(i32* %292, i32 %293, i32* %294, i32 %295, i32 %296, i32* %2)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %322

299:                                              ; preds = %288
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = load i64, i64* @numas, align 8
  %303 = add nsw i64 %302, %301
  store i64 %303, i64* @numas, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* @totnst, align 8
  %307 = add nsw i64 %306, %305
  store i64 %307, i64* @totnst, align 8
  %308 = load i32, i32* %22, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %22, align 4
  %310 = load i64, i64* @variable_trailing_context_rules, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %299
  %313 = load i32, i32* %3, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load i32*, i32** %10, align 8
  %317 = load i32, i32* %7, align 4
  %318 = load i32*, i32** %1, align 8
  %319 = load i32, i32* %3, align 4
  %320 = call i32 @check_trailing_context(i32* %316, i32 %317, i32* %318, i32 %319)
  br label %321

321:                                              ; preds = %315, %312, %299
  br label %322

322:                                              ; preds = %321, %288
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %14, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %14, align 4
  br label %250

326:                                              ; preds = %250
  %327 = load i64, i64* @fullspd, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %344, label %329

329:                                              ; preds = %326
  %330 = load i32*, i32** %10, align 8
  %331 = load i32*, i32** %1, align 8
  %332 = call i64 @snstods(i32* %330, i32 0, i32* %331, i32 0, i32 0, i32* @end_of_buffer_state)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %336 = call i32 @flexfatal(i8* %335)
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i64, i64* @numas, align 8
  %339 = add nsw i64 %338, 1
  store i64 %339, i64* @numas, align 8
  %340 = load i32, i32* %20, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %20, align 4
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %22, align 4
  br label %344

344:                                              ; preds = %337, %326
  br label %345

345:                                              ; preds = %689, %344
  %346 = load i32, i32* %21, align 4
  %347 = load i32, i32* %22, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %690

349:                                              ; preds = %345
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %350

350:                                              ; preds = %358, %349
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* @numecs, align 4
  %353 = icmp sle i32 %351, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %350
  %355 = load i32, i32* %14, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %44, i64 %356
  store i32 0, i32* %357, align 4
  br label %358

358:                                              ; preds = %354
  %359 = load i32, i32* %14, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %14, align 4
  br label %350

361:                                              ; preds = %350
  %362 = load i32, i32* %21, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %21, align 4
  store i32 %363, i32* %2, align 4
  %364 = load i32**, i32*** @dss, align 8
  %365 = load i32, i32* %2, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32*, i32** %364, i64 %366
  %368 = load i32*, i32** %367, align 8
  store i32* %368, i32** %11, align 8
  %369 = load i32*, i32** @dfasiz, align 8
  %370 = load i32, i32* %2, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %8, align 4
  %374 = load i64, i64* @trace, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %381

376:                                              ; preds = %361
  %377 = load i32, i32* @stderr, align 4
  %378 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %379 = load i32, i32* %2, align 4
  %380 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %377, i8* %378, i32 %379)
  br label %381

381:                                              ; preds = %376, %361
  %382 = load i32*, i32** %11, align 8
  %383 = load i32, i32* %8, align 4
  %384 = call i32 @sympartition(i32* %382, i32 %383, i32* %36, i32* %40)
  store i32 1, i32* %5, align 4
  br label %385

385:                                              ; preds = %512, %381
  %386 = load i32, i32* %5, align 4
  %387 = load i32, i32* @numecs, align 4
  %388 = icmp sle i32 %386, %387
  br i1 %388, label %389, label %515

389:                                              ; preds = %385
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %36, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %511

395:                                              ; preds = %389
  %396 = load i32, i32* %5, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %36, i64 %397
  store i32 0, i32* %398, align 4
  %399 = load i32, i32* %5, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %40, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @NIL, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %467

405:                                              ; preds = %395
  %406 = load i32*, i32** %11, align 8
  %407 = load i32, i32* %8, align 4
  %408 = load i32, i32* %5, align 4
  %409 = load i32*, i32** %10, align 8
  %410 = call i32 @symfollowset(i32* %406, i32 %407, i32 %408, i32* %409)
  store i32 %410, i32* %7, align 4
  %411 = load i32*, i32** %10, align 8
  %412 = load i32*, i32** %1, align 8
  %413 = call i32* @epsclosure(i32* %411, i32* %7, i32* %412, i32* %3, i32* %6)
  store i32* %413, i32** %10, align 8
  %414 = load i32*, i32** %10, align 8
  %415 = load i32, i32* %7, align 4
  %416 = load i32*, i32** %1, align 8
  %417 = load i32, i32* %3, align 4
  %418 = load i32, i32* %6, align 4
  %419 = call i64 @snstods(i32* %414, i32 %415, i32* %416, i32 %417, i32 %418, i32* %4)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %444

421:                                              ; preds = %405
  %422 = load i64, i64* @totnst, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = add nsw i64 %422, %424
  store i64 %425, i64* @totnst, align 8
  %426 = load i32, i32* %22, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %22, align 4
  %428 = load i32, i32* %3, align 4
  %429 = sext i32 %428 to i64
  %430 = load i64, i64* @numas, align 8
  %431 = add nsw i64 %430, %429
  store i64 %431, i64* @numas, align 8
  %432 = load i64, i64* @variable_trailing_context_rules, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %443

434:                                              ; preds = %421
  %435 = load i32, i32* %3, align 4
  %436 = icmp sgt i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %434
  %438 = load i32*, i32** %10, align 8
  %439 = load i32, i32* %7, align 4
  %440 = load i32*, i32** %1, align 8
  %441 = load i32, i32* %3, align 4
  %442 = call i32 @check_trailing_context(i32* %438, i32 %439, i32* %440, i32 %441)
  br label %443

443:                                              ; preds = %437, %434, %421
  br label %444

444:                                              ; preds = %443, %405
  %445 = load i32, i32* %4, align 4
  %446 = load i32, i32* %5, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %44, i64 %447
  store i32 %445, i32* %448, align 4
  %449 = load i64, i64* @trace, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %444
  %452 = load i32, i32* @stderr, align 4
  %453 = load i32, i32* %5, align 4
  %454 = load i32, i32* %4, align 4
  %455 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %452, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %453, i32 %454)
  br label %456

456:                                              ; preds = %451, %444
  %457 = load i32, i32* %12, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %48, i64 %459
  store i32 1, i32* %460, align 4
  %461 = load i32, i32* %4, align 4
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %52, i64 %463
  store i32 %461, i32* %464, align 4
  %465 = load i32, i32* @numuniq, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* @numuniq, align 4
  br label %504

467:                                              ; preds = %395
  %468 = load i32, i32* %5, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %40, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %44, i64 %472
  %474 = load i32, i32* %473, align 4
  store i32 %474, i32* %17, align 4
  %475 = load i32, i32* %17, align 4
  %476 = load i32, i32* %5, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %44, i64 %477
  store i32 %475, i32* %478, align 4
  %479 = load i64, i64* @trace, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %486

481:                                              ; preds = %467
  %482 = load i32, i32* @stderr, align 4
  %483 = load i32, i32* %5, align 4
  %484 = load i32, i32* %17, align 4
  %485 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %482, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %483, i32 %484)
  br label %486

486:                                              ; preds = %481, %467
  store i32 0, i32* %14, align 4
  br label %487

487:                                              ; preds = %495, %486
  %488 = load i32, i32* %14, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %14, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %52, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %17, align 4
  %494 = icmp ne i32 %492, %493
  br i1 %494, label %495, label %496

495:                                              ; preds = %487
  br label %487

496:                                              ; preds = %487
  %497 = load i32, i32* %14, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %48, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %499, align 4
  %502 = load i32, i32* @numdup, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* @numdup, align 4
  br label %504

504:                                              ; preds = %496, %456
  %505 = load i32, i32* %13, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %13, align 4
  %507 = load i32, i32* @NIL, align 4
  %508 = load i32, i32* %5, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %40, i64 %509
  store i32 %507, i32* %510, align 4
  br label %511

511:                                              ; preds = %504, %389
  br label %512

512:                                              ; preds = %511
  %513 = load i32, i32* %5, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %5, align 4
  br label %385

515:                                              ; preds = %385
  %516 = load i32, i32* %13, align 4
  %517 = load i32, i32* @numsnpairs, align 4
  %518 = add nsw i32 %517, %516
  store i32 %518, i32* @numsnpairs, align 4
  %519 = load i32, i32* %2, align 4
  %520 = load i32, i32* %20, align 4
  %521 = icmp sgt i32 %519, %520
  br i1 %521, label %522, label %525

522:                                              ; preds = %515
  %523 = load i32, i32* %2, align 4
  %524 = call i32 @check_for_backing_up(i32 %523, i32* %44)
  br label %525

525:                                              ; preds = %522, %515
  %526 = load i32*, i32** @nultrans, align 8
  %527 = icmp ne i32* %526, null
  br i1 %527, label %528, label %538

528:                                              ; preds = %525
  %529 = load i64, i64* @NUL_ec, align 8
  %530 = getelementptr inbounds i32, i32* %44, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = load i32*, i32** @nultrans, align 8
  %533 = load i32, i32* %2, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 %531, i32* %535, align 4
  %536 = load i64, i64* @NUL_ec, align 8
  %537 = getelementptr inbounds i32, i32* %44, i64 %536
  store i32 0, i32* %537, align 4
  br label %538

538:                                              ; preds = %528, %525
  %539 = load i64, i64* @fulltbl, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %641

541:                                              ; preds = %538
  %542 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %543 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %543, align 8
  %546 = load i32*, i32** %24, align 8
  %547 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %548 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %551 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = mul nsw i32 %549, %552
  %554 = sext i32 %553 to i64
  %555 = mul i64 %554, 4
  %556 = trunc i64 %555 to i32
  %557 = call i64 @realloc(i32* %546, i32 %556)
  %558 = inttoptr i64 %557 to i32*
  store i32* %558, i32** %24, align 8
  %559 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %560 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %559, i32 0, i32 2
  store i32* %558, i32** %560, align 8
  %561 = load i64, i64* @gentables, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %565

563:                                              ; preds = %541
  %564 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %565

565:                                              ; preds = %563, %541
  %566 = load i32, i32* %2, align 4
  %567 = load i32, i32* @end_of_buffer_state, align 4
  %568 = icmp eq i32 %566, %567
  br i1 %568, label %569, label %580

569:                                              ; preds = %565
  %570 = load i32, i32* @end_of_buffer_state, align 4
  %571 = sub nsw i32 0, %570
  %572 = call i32 @mk2data(i32 %571)
  %573 = load i32, i32* @end_of_buffer_state, align 4
  %574 = sub nsw i32 0, %573
  %575 = load i32*, i32** %24, align 8
  %576 = load i32, i32* %25, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %25, align 4
  %578 = sext i32 %576 to i64
  %579 = getelementptr inbounds i32, i32* %575, i64 %578
  store i32 %574, i32* %579, align 4
  br label %589

580:                                              ; preds = %565
  %581 = load i32, i32* @end_of_buffer_state, align 4
  %582 = call i32 @mk2data(i32 %581)
  %583 = load i32, i32* @end_of_buffer_state, align 4
  %584 = load i32*, i32** %24, align 8
  %585 = load i32, i32* %25, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %25, align 4
  %587 = sext i32 %585 to i64
  %588 = getelementptr inbounds i32, i32* %584, i64 %587
  store i32 %583, i32* %588, align 4
  br label %589

589:                                              ; preds = %580, %569
  store i32 1, i32* %14, align 4
  br label %590

590:                                              ; preds = %631, %589
  %591 = load i32, i32* %14, align 4
  %592 = load i32, i32* %9, align 4
  %593 = icmp slt i32 %591, %592
  br i1 %593, label %594, label %634

594:                                              ; preds = %590
  %595 = load i32, i32* %14, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %44, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %605

600:                                              ; preds = %594
  %601 = load i32, i32* %14, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32* %44, i64 %602
  %604 = load i32, i32* %603, align 4
  br label %608

605:                                              ; preds = %594
  %606 = load i32, i32* %2, align 4
  %607 = sub nsw i32 0, %606
  br label %608

608:                                              ; preds = %605, %600
  %609 = phi i32 [ %604, %600 ], [ %607, %605 ]
  %610 = call i32 @mk2data(i32 %609)
  %611 = load i32, i32* %14, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %44, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %621

616:                                              ; preds = %608
  %617 = load i32, i32* %14, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %44, i64 %618
  %620 = load i32, i32* %619, align 4
  br label %624

621:                                              ; preds = %608
  %622 = load i32, i32* %2, align 4
  %623 = sub nsw i32 0, %622
  br label %624

624:                                              ; preds = %621, %616
  %625 = phi i32 [ %620, %616 ], [ %623, %621 ]
  %626 = load i32*, i32** %24, align 8
  %627 = load i32, i32* %25, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %25, align 4
  %629 = sext i32 %627 to i64
  %630 = getelementptr inbounds i32, i32* %626, i64 %629
  store i32 %625, i32* %630, align 4
  br label %631

631:                                              ; preds = %624
  %632 = load i32, i32* %14, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %14, align 4
  br label %590

634:                                              ; preds = %590
  %635 = call i32 (...) @dataflush()
  %636 = load i64, i64* @gentables, align 8
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %638, label %640

638:                                              ; preds = %634
  %639 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %640

640:                                              ; preds = %638, %634
  br label %689

641:                                              ; preds = %538
  %642 = load i64, i64* @fullspd, align 8
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %648

644:                                              ; preds = %641
  %645 = load i32, i32* %2, align 4
  %646 = load i32, i32* %13, align 4
  %647 = call i32 @place_state(i32* %44, i32 %645, i32 %646)
  br label %688

648:                                              ; preds = %641
  %649 = load i32, i32* %2, align 4
  %650 = load i32, i32* @end_of_buffer_state, align 4
  %651 = icmp eq i32 %649, %650
  br i1 %651, label %652, label %656

652:                                              ; preds = %648
  %653 = load i32, i32* %2, align 4
  %654 = load i32, i32* @JAMSTATE, align 4
  %655 = call i32 @stack1(i32 %653, i32 0, i32 0, i32 %654)
  br label %687

656:                                              ; preds = %648
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %657

657:                                              ; preds = %678, %656
  %658 = load i32, i32* %14, align 4
  %659 = load i32, i32* %12, align 4
  %660 = icmp sle i32 %658, %659
  br i1 %660, label %661, label %681

661:                                              ; preds = %657
  %662 = load i32, i32* %14, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %48, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* %16, align 4
  %667 = icmp sgt i32 %665, %666
  br i1 %667, label %668, label %677

668:                                              ; preds = %661
  %669 = load i32, i32* %14, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i32, i32* %48, i64 %670
  %672 = load i32, i32* %671, align 4
  store i32 %672, i32* %16, align 4
  %673 = load i32, i32* %14, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %52, i64 %674
  %676 = load i32, i32* %675, align 4
  store i32 %676, i32* %15, align 4
  br label %677

677:                                              ; preds = %668, %661
  br label %678

678:                                              ; preds = %677
  %679 = load i32, i32* %14, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %14, align 4
  br label %657

681:                                              ; preds = %657
  %682 = load i32, i32* %2, align 4
  %683 = load i32, i32* %13, align 4
  %684 = load i32, i32* %15, align 4
  %685 = load i32, i32* %16, align 4
  %686 = call i32 @bldtbl(i32* %44, i32 %682, i32 %683, i32 %684, i32 %685)
  br label %687

687:                                              ; preds = %681, %652
  br label %688

688:                                              ; preds = %687, %644
  br label %689

689:                                              ; preds = %688, %640
  br label %345

690:                                              ; preds = %345
  %691 = load i64, i64* @fulltbl, align 8
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %714

693:                                              ; preds = %690
  %694 = call i32 (...) @dataend()
  %695 = load i64, i64* @tablesext, align 8
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %697, label %707

697:                                              ; preds = %693
  %698 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %699 = call i32 @yytbl_data_compress(%struct.yytbl_data* %698)
  %700 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %701 = call i64 @yytbl_data_fwrite(i32* @tableswr, %struct.yytbl_data* %700)
  %702 = icmp slt i64 %701, 0
  br i1 %702, label %703, label %706

703:                                              ; preds = %697
  %704 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %705 = call i32 @flexerror(i8* %704)
  br label %706

706:                                              ; preds = %703, %697
  br label %707

707:                                              ; preds = %706, %693
  %708 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %709 = icmp ne %struct.yytbl_data* %708, null
  br i1 %709, label %710, label %713

710:                                              ; preds = %707
  %711 = load %struct.yytbl_data*, %struct.yytbl_data** %23, align 8
  %712 = call i32 @yytbl_data_destroy(%struct.yytbl_data* %711)
  store %struct.yytbl_data* null, %struct.yytbl_data** %23, align 8
  br label %713

713:                                              ; preds = %710, %707
  br label %745

714:                                              ; preds = %690
  %715 = load i64, i64* @fullspd, align 8
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %744, label %717

717:                                              ; preds = %714
  %718 = call i32 (...) @cmptmps()
  br label %719

719:                                              ; preds = %722, %717
  %720 = load i64, i64* @onesp, align 8
  %721 = icmp ugt i64 %720, 0
  br i1 %721, label %722, label %742

722:                                              ; preds = %719
  %723 = load i32*, i32** @onestate, align 8
  %724 = load i64, i64* @onesp, align 8
  %725 = getelementptr inbounds i32, i32* %723, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = load i32*, i32** @onesym, align 8
  %728 = load i64, i64* @onesp, align 8
  %729 = getelementptr inbounds i32, i32* %727, i64 %728
  %730 = load i32, i32* %729, align 4
  %731 = load i32*, i32** @onenext, align 8
  %732 = load i64, i64* @onesp, align 8
  %733 = getelementptr inbounds i32, i32* %731, i64 %732
  %734 = load i32, i32* %733, align 4
  %735 = load i32*, i32** @onedef, align 8
  %736 = load i64, i64* @onesp, align 8
  %737 = getelementptr inbounds i32, i32* %735, i64 %736
  %738 = load i32, i32* %737, align 4
  %739 = call i32 @mk1tbl(i32 %726, i32 %730, i32 %734, i32 %738)
  %740 = load i64, i64* @onesp, align 8
  %741 = add i64 %740, -1
  store i64 %741, i64* @onesp, align 8
  br label %719

742:                                              ; preds = %719
  %743 = call i32 (...) @mkdeftbl()
  br label %744

744:                                              ; preds = %742, %714
  br label %745

745:                                              ; preds = %744, %713
  %746 = load i32*, i32** %1, align 8
  %747 = bitcast i32* %746 to i8*
  %748 = call i32 @flex_free(i8* %747)
  %749 = load i32*, i32** %10, align 8
  %750 = bitcast i32* %749 to i8*
  %751 = call i32 @flex_free(i8* %750)
  %752 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %752)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @allocate_integer_array(i32) #2

declare dso_local i32 @dumpnfa(i32) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @inittbl(...) #2

declare dso_local i32 @place_state(i32*, i32, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #2

declare dso_local i32 @buf_prints(i32*, i8*, i8*) #2

declare dso_local i32 @out_str_dec(i8*, i8*, i32) #2

declare dso_local i32 @out_dec(i8*, i32) #2

declare dso_local i32 @out_str(i8*, i8*) #2

declare dso_local i32 @outn(i8*) #2

declare dso_local i32 @mk2data(i32) #2

declare dso_local i32 @dataflush(...) #2

declare dso_local i32 @mkbranch(i32, i32) #2

declare dso_local i32* @epsclosure(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @snstods(i32*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @check_trailing_context(i32*, i32, i32*, i32) #2

declare dso_local i32 @flexfatal(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @sympartition(i32*, i32, i32*, i32*) #2

declare dso_local i32 @symfollowset(i32*, i32, i32, i32*) #2

declare dso_local i32 @check_for_backing_up(i32, i32*) #2

declare dso_local i64 @realloc(i32*, i32) #2

declare dso_local i32 @stack1(i32, i32, i32, i32) #2

declare dso_local i32 @bldtbl(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @dataend(...) #2

declare dso_local i32 @yytbl_data_compress(%struct.yytbl_data*) #2

declare dso_local i64 @yytbl_data_fwrite(i32*, %struct.yytbl_data*) #2

declare dso_local i32 @flexerror(i8*) #2

declare dso_local i32 @yytbl_data_destroy(%struct.yytbl_data*) #2

declare dso_local i32 @cmptmps(...) #2

declare dso_local i32 @mk1tbl(i32, i32, i32, i32) #2

declare dso_local i32 @mkdeftbl(...) #2

declare dso_local i32 @flex_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
