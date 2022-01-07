; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_coalesce_tpa_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_coalesce_tpa_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_BEST_COALESCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Coalesce list: (%d)\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" & (%d)\00", align 1
@TPA_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c": Fail, Non-matching TPA's\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c": Fail %d non TPA.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" [map: %d, %d] \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c": Already Coalesced.\0A\00", align 1
@NO_PARTITION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c": Unable to perform partition union.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c": Success -> %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c": Fail due to conflict\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Coalesce : \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"  (%d ,%d)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c": Already coalesced\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c": Fail non-TPA member\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c": Fail cannot combine partitions\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c": Fail, Conflict\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coalesce_tpa_members(i32 %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %189

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %187, %143, %122, %91, %22
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @pop_best_coalesce(i64 %24, i32* %11, i32* %12)
  %26 = load i64, i64* @NO_BEST_COALESCE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %188

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @partition_to_var(i32 %36, i32 %37)
  %39 = load i32, i32* @TDF_SLIM, align 4
  %40 = call i32 @print_generic_expr(i32* %35, i32 %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @partition_to_var(i32 %45, i32 %46)
  %48 = load i32, i32* @TDF_SLIM, align 4
  %49 = call i32 @print_generic_expr(i32* %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %31, %28
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @tpa_find_tree(i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @tpa_find_tree(i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @TPA_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @TPA_NONE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64, %60, %50
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @TPA_NONE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %90

86:                                               ; preds = %78
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %68
  br label %23

92:                                               ; preds = %64
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @partition_to_var(i32 %93, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @partition_to_var(i32 %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @var_to_partition(i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @var_to_partition(i32 %102, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %92
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %92
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32*, i32** %10, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  br label %23

123:                                              ; preds = %112
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @conflict_graph_conflict_p(i32 %124, i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %180, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @var_union(i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @NO_PARTITION, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load i32*, i32** %10, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %137
  br label %23

144:                                              ; preds = %129
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @conflict_graph_merge_regs(i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @tpa_find_tree(i32 %153, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @tpa_remove_partition(i32 %156, i32 %157, i32 %158)
  br label %172

160:                                              ; preds = %144
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @conflict_graph_merge_regs(i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @tpa_find_tree(i32 %165, i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @tpa_remove_partition(i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %160, %148
  %173 = load i32*, i32** %10, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %175, %172
  br label %187

180:                                              ; preds = %123
  %181 = load i32*, i32** %10, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %179
  br label %23

188:                                              ; preds = %23
  br label %351

189:                                              ; preds = %5
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %348, %189
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @tpa_num_trees(i32 %192)
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %351

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %346, %195
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @tpa_first_partition(i32 %197, i32 %198)
  %200 = load i32, i32* @TPA_NONE, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %347

202:                                              ; preds = %196
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @tpa_first_partition(i32 %203, i32 %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @tpa_remove_partition(i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @partition_to_var(i32 %210, i32 %211)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @var_to_partition(i32 %213, i32 %214)
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @tpa_next_partition(i32 %216, i32 %217)
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %342, %202
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @TPA_NONE, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %346

223:                                              ; preds = %219
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @partition_to_var(i32 %224, i32 %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @var_to_partition(i32 %227, i32 %228)
  store i32 %229, i32* %18, align 4
  %230 = load i32*, i32** %10, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %249

232:                                              ; preds = %223
  %233 = load i32*, i32** %10, align 8
  %234 = call i32 (i32*, i8*, ...) @fprintf(i32* %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %235 = load i32*, i32** %10, align 8
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* @TDF_SLIM, align 4
  %238 = call i32 @print_generic_expr(i32* %235, i32 %236, i32 %237)
  %239 = load i32*, i32** %10, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* @TDF_SLIM, align 4
  %244 = call i32 @print_generic_expr(i32* %241, i32 %242, i32 %243)
  %245 = load i32*, i32** %10, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i32 (i32*, i8*, ...) @fprintf(i32* %245, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %232, %223
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %249
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @tpa_remove_partition(i32 %254, i32 %255, i32 %256)
  %258 = load i32*, i32** %10, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = load i32*, i32** %10, align 8
  %262 = call i32 (i32*, i8*, ...) @fprintf(i32* %261, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %253
  br label %341

264:                                              ; preds = %249
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %18, align 4
  %268 = call i32 @conflict_graph_conflict_p(i32 %265, i32 %266, i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %333, label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @tpa_find_tree(i32 %271, i32 %272)
  %274 = load i32, i32* @TPA_NONE, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %282, label %276

276:                                              ; preds = %270
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @tpa_find_tree(i32 %277, i32 %278)
  %280 = load i32, i32* @TPA_NONE, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %276, %270
  %283 = load i32*, i32** %10, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32*, i32** %10, align 8
  %287 = call i32 (i32*, i8*, ...) @fprintf(i32* %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %282
  br label %342

289:                                              ; preds = %276
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = call i32 @var_union(i32 %290, i32 %291, i32 %292)
  store i32 %293, i32* %19, align 4
  %294 = load i32, i32* @NO_PARTITION, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %289
  %297 = load i32*, i32** %10, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32*, i32** %10, align 8
  %301 = call i32 (i32*, i8*, ...) @fprintf(i32* %300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %296
  br label %342

303:                                              ; preds = %289
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %13, align 4
  %307 = call i32 @tpa_remove_partition(i32 %304, i32 %305, i32 %306)
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* %17, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %303
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* %13, align 4
  %315 = call i32 @conflict_graph_merge_regs(i32 %312, i32 %313, i32 %314)
  br label %322

316:                                              ; preds = %303
  %317 = load i32, i32* %7, align 4
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @conflict_graph_merge_regs(i32 %317, i32 %318, i32 %319)
  %321 = load i32, i32* %19, align 4
  store i32 %321, i32* %17, align 4
  br label %322

322:                                              ; preds = %316, %311
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %17, align 4
  %325 = call i32 @partition_to_var(i32 %323, i32 %324)
  store i32 %325, i32* %15, align 4
  %326 = load i32*, i32** %10, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = load i32*, i32** %10, align 8
  %330 = load i32, i32* %19, align 4
  %331 = call i32 (i32*, i8*, ...) @fprintf(i32* %329, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %330)
  br label %332

332:                                              ; preds = %328, %322
  br label %340

333:                                              ; preds = %264
  %334 = load i32*, i32** %10, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i32*, i32** %10, align 8
  %338 = call i32 (i32*, i8*, ...) @fprintf(i32* %337, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %339

339:                                              ; preds = %336, %333
  br label %340

340:                                              ; preds = %339, %332
  br label %341

341:                                              ; preds = %340, %263
  br label %342

342:                                              ; preds = %341, %302, %288
  %343 = load i32, i32* %6, align 4
  %344 = load i32, i32* %13, align 4
  %345 = call i32 @tpa_next_partition(i32 %343, i32 %344)
  store i32 %345, i32* %13, align 4
  br label %219

346:                                              ; preds = %219
  br label %196

347:                                              ; preds = %196
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %11, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %11, align 4
  br label %190

351:                                              ; preds = %188, %190
  ret void
}

declare dso_local i64 @pop_best_coalesce(i64, i32*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i32*, i32, i32) #1

declare dso_local i32 @partition_to_var(i32, i32) #1

declare dso_local i32 @tpa_find_tree(i32, i32) #1

declare dso_local i32 @var_to_partition(i32, i32) #1

declare dso_local i32 @conflict_graph_conflict_p(i32, i32, i32) #1

declare dso_local i32 @var_union(i32, i32, i32) #1

declare dso_local i32 @conflict_graph_merge_regs(i32, i32, i32) #1

declare dso_local i32 @tpa_remove_partition(i32, i32, i32) #1

declare dso_local i32 @tpa_num_trees(i32) #1

declare dso_local i32 @tpa_first_partition(i32, i32) #1

declare dso_local i32 @tpa_next_partition(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
