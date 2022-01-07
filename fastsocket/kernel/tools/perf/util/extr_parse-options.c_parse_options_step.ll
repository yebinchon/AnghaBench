; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_options_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-options.c_parse_options_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i8*, i8**, i8**, i32, i64 }
%struct.option = type { i32 }

@PARSE_OPT_NO_INTERNAL_HELP = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"help-all\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"list-opts\00", align 1
@PARSE_OPT_LIST = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options_step(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %11 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PARSE_OPT_NO_INTERNAL_HELP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %19 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %18, i32 0, i32 1
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %245, %3
  %21 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %22 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %254

25:                                               ; preds = %20
  %26 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %27 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %42 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %254

48:                                               ; preds = %40
  %49 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %50 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %55 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %58 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %56, i64 %61
  store i8* %53, i8** %62, align 8
  br label %245

63:                                               ; preds = %35
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 45
  br i1 %68, label %69, label %153

69:                                               ; preds = %63
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %73 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %78 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 104
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i8**, i8*** %7, align 8
  %85 = load %struct.option*, %struct.option** %6, align 8
  %86 = call i32 @parse_options_usage(i8** %84, %struct.option* %85)
  store i32 %86, i32* %4, align 4
  br label %256

87:                                               ; preds = %76, %69
  %88 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %89 = load %struct.option*, %struct.option** %6, align 8
  %90 = call i32 @parse_short_opt(%struct.parse_opt_ctx_t* %88, %struct.option* %89)
  switch i32 %90, label %96 [
    i32 -1, label %91
    i32 -2, label %95
  ]

91:                                               ; preds = %87
  %92 = load i8**, i8*** %7, align 8
  %93 = load %struct.option*, %struct.option** %6, align 8
  %94 = call i32 @parse_options_usage(i8** %92, %struct.option* %93)
  store i32 %94, i32* %4, align 4
  br label %256

95:                                               ; preds = %87
  br label %219

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %99 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load %struct.option*, %struct.option** %6, align 8
  %106 = call i32 @check_typos(i8* %104, %struct.option* %105)
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %151, %107
  %109 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %110 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %152

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %118 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 104
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i8**, i8*** %7, align 8
  %125 = load %struct.option*, %struct.option** %6, align 8
  %126 = call i32 @parse_options_usage(i8** %124, %struct.option* %125)
  store i32 %126, i32* %4, align 4
  br label %256

127:                                              ; preds = %116, %113
  %128 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %129 = load %struct.option*, %struct.option** %6, align 8
  %130 = call i32 @parse_short_opt(%struct.parse_opt_ctx_t* %128, %struct.option* %129)
  switch i32 %130, label %150 [
    i32 -1, label %131
    i32 -2, label %135
  ]

131:                                              ; preds = %127
  %132 = load i8**, i8*** %7, align 8
  %133 = load %struct.option*, %struct.option** %6, align 8
  %134 = call i32 @parse_options_usage(i8** %132, %struct.option* %133)
  store i32 %134, i32* %4, align 4
  br label %256

135:                                              ; preds = %127
  %136 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %137 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  %140 = call i8* @strdup(i8* %139)
  %141 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %142 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %141, i32 0, i32 2
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  store i8* %140, i8** %144, align 8
  %145 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %146 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  store i8 45, i8* %149, align 1
  br label %219

150:                                              ; preds = %127
  br label %151

151:                                              ; preds = %150
  br label %108

152:                                              ; preds = %108
  br label %245

153:                                              ; preds = %63
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %153
  %159 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %160 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %158
  %166 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %167 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, -1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %171 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %170, i32 0, i32 2
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %171, align 8
  br label %174

174:                                              ; preds = %165, %158
  br label %254

175:                                              ; preds = %153
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = load i8**, i8*** %7, align 8
  %185 = load %struct.option*, %struct.option** %6, align 8
  %186 = call i32 @usage_with_options_internal(i8** %184, %struct.option* %185, i32 1)
  store i32 %186, i32* %4, align 4
  br label %256

187:                                              ; preds = %178, %175
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %190
  %196 = load i8**, i8*** %7, align 8
  %197 = load %struct.option*, %struct.option** %6, align 8
  %198 = call i32 @parse_options_usage(i8** %196, %struct.option* %197)
  store i32 %198, i32* %4, align 4
  br label %256

199:                                              ; preds = %190, %187
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 2
  %202 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* @PARSE_OPT_LIST, align 4
  store i32 %205, i32* %4, align 4
  br label %256

206:                                              ; preds = %199
  %207 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = load %struct.option*, %struct.option** %6, align 8
  %211 = call i32 @parse_long_opt(%struct.parse_opt_ctx_t* %207, i8* %209, %struct.option* %210)
  switch i32 %211, label %217 [
    i32 -1, label %212
    i32 -2, label %216
  ]

212:                                              ; preds = %206
  %213 = load i8**, i8*** %7, align 8
  %214 = load %struct.option*, %struct.option** %6, align 8
  %215 = call i32 @parse_options_usage(i8** %213, %struct.option* %214)
  store i32 %215, i32* %4, align 4
  br label %256

216:                                              ; preds = %206
  br label %219

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217
  br label %245

219:                                              ; preds = %216, %135, %95
  %220 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %221 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %219
  %227 = load i32, i32* @PARSE_OPT_UNKNOWN, align 4
  store i32 %227, i32* %4, align 4
  br label %256

228:                                              ; preds = %219
  %229 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %230 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %229, i32 0, i32 2
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %235 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %234, i32 0, i32 3
  %236 = load i8**, i8*** %235, align 8
  %237 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %238 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i8*, i8** %236, i64 %241
  store i8* %233, i8** %242, align 8
  %243 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %244 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %243, i32 0, i32 1
  store i8* null, i8** %244, align 8
  br label %245

245:                                              ; preds = %228, %218, %152, %48
  %246 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %247 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, -1
  store i64 %249, i64* %247, align 8
  %250 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %251 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %250, i32 0, i32 2
  %252 = load i8**, i8*** %251, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i32 1
  store i8** %253, i8*** %251, align 8
  br label %20

254:                                              ; preds = %174, %47, %20
  %255 = load i32, i32* @PARSE_OPT_DONE, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %254, %226, %212, %204, %195, %183, %131, %123, %91, %83
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @parse_options_usage(i8**, %struct.option*) #1

declare dso_local i32 @parse_short_opt(%struct.parse_opt_ctx_t*, %struct.option*) #1

declare dso_local i32 @check_typos(i8*, %struct.option*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage_with_options_internal(i8**, %struct.option*, i32) #1

declare dso_local i32 @parse_long_opt(%struct.parse_opt_ctx_t*, i8*, %struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
