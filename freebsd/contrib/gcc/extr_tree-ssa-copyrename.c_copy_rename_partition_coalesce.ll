; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copyrename.c_copy_rename_partition_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copyrename.c_copy_rename_partition_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i64, i64)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@SSA_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Try : \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"(P%d) & \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(P%d)\00", align 1
@NO_PARTITION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c" : Already coalesced.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c" : Abnormal PHI barrier.  No coalesce.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c" : Same root, coalesced --> P%d.\0A\00", align 1
@PARM_DECL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c" : 2 different PARM_DECLS. No coalesce.\0A\00", align 1
@RESULT_DECL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c" : One root a RESULT_DECL. No coalesce.\0A\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c" : 2 different USER vars. No coalesce.\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" : 2 memory tags. No coalesce.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c" : 2 default defs. No coalesce.\0A\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c" : Incompatible types.  No coalesce.\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c" : 2 different aliasing sets. No coalesce.\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" --> P%d \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i32*)* @copy_rename_partition_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_rename_partition_coalesce(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @SSA_NAME, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @SSA_NAME, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @register_ssa_partition(%struct.TYPE_8__* %34, i64 %35, i32 0)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @register_ssa_partition(%struct.TYPE_8__* %37, i64 %38, i32 1)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @SSA_NAME_VERSION(i64 %43)
  %45 = call i32 @partition_find(i32 %42, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @SSA_NAME_VERSION(i64 %49)
  %51 = call i32 @partition_find(i32 %48, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @TDF_SLIM, align 4
  %60 = call i32 @print_generic_expr(i32* %57, i64 %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @TDF_SLIM, align 4
  %67 = call i32 @print_generic_expr(i32* %64, i64 %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %54, %4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NO_PARTITION, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @gcc_assert(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @NO_PARTITION, align 4
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @gcc_assert(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @partition_to_var(%struct.TYPE_8__* %82, i32 %83)
  store i64 %84, i64* %14, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @partition_to_var(%struct.TYPE_8__* %85, i32 %86)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i64 @SSA_NAME_VAR(i64 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i64 @SSA_NAME_VAR(i64 %90)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call %struct.TYPE_9__* @var_ann(i64 %92)
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %16, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call %struct.TYPE_9__* @var_ann(i64 %94)
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %17, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %71
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99
  br label %380

106:                                              ; preds = %71
  %107 = load i64, i64* %14, align 8
  %108 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %15, align 8
  %112 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64 %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ true, %106 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %21, align 4
  %117 = load i32, i32* %21, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32*, i32** %8, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  br label %380

126:                                              ; preds = %114
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @partition_union(i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %130
  br label %380

144:                                              ; preds = %126
  %145 = load i64, i64* %12, align 8
  %146 = call i64 @TREE_CODE(i64 %145)
  %147 = load i64, i64* @PARM_DECL, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i64, i64* %13, align 8
  %151 = call i64 @TREE_CODE(i64 %150)
  %152 = load i64, i64* @PARM_DECL, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i32*, i32** %8, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154
  br label %380

161:                                              ; preds = %149, %144
  %162 = load i64, i64* %12, align 8
  %163 = call i64 @TREE_CODE(i64 %162)
  %164 = load i64, i64* @RESULT_DECL, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %13, align 8
  %168 = call i64 @TREE_CODE(i64 %167)
  %169 = load i64, i64* @RESULT_DECL, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = icmp ne i32 %166, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %161
  %174 = load i32*, i32** %8, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %173
  br label %380

180:                                              ; preds = %161
  %181 = load i64, i64* %12, align 8
  %182 = call i64 @TREE_CODE(i64 %181)
  %183 = load i64, i64* @VAR_DECL, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i64, i64* %12, align 8
  %187 = call i64 @DECL_IGNORED_P(i64 %186)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %185, %180
  %190 = phi i1 [ false, %180 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %19, align 4
  %192 = load i64, i64* %13, align 8
  %193 = call i64 @TREE_CODE(i64 %192)
  %194 = load i64, i64* @VAR_DECL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load i64, i64* %13, align 8
  %198 = call i64 @DECL_IGNORED_P(i64 %197)
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %196, %189
  %201 = phi i1 [ false, %189 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %20, align 4
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %227, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %227, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* %13, align 8
  %210 = call i64 @DECL_FROM_INLINE(i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 1, i32* %20, align 4
  br label %226

213:                                              ; preds = %208
  %214 = load i64, i64* %12, align 8
  %215 = call i64 @DECL_FROM_INLINE(i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 1, i32* %19, align 4
  br label %225

218:                                              ; preds = %213
  %219 = load i32*, i32** %8, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32*, i32** %8, align 8
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %218
  br label %380

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %212
  br label %227

227:                                              ; preds = %226, %205, %200
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %227
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %252

237:                                              ; preds = %232
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %240, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %237
  %246 = load i32*, i32** %8, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 (i32*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %245
  br label %380

252:                                              ; preds = %237, %232, %227
  %253 = load i64, i64* %12, align 8
  %254 = call i64 @default_def(i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = load i64, i64* %13, align 8
  %258 = call i64 @default_def(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = load i32*, i32** %8, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 (i32*, i8*, ...) @fprintf(i32* %264, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %266

266:                                              ; preds = %263, %260
  br label %380

267:                                              ; preds = %256
  store i32 1, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %268

268:                                              ; preds = %267
  br label %275

269:                                              ; preds = %252
  %270 = load i64, i64* %13, align 8
  %271 = call i64 @default_def(i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %274

274:                                              ; preds = %273, %269
  br label %275

275:                                              ; preds = %274, %268
  %276 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @lang_hooks, i32 0, i32 0), align 8
  %277 = load i64, i64* %12, align 8
  %278 = call i64 @TREE_TYPE(i64 %277)
  %279 = load i64, i64* %13, align 8
  %280 = call i64 @TREE_TYPE(i64 %279)
  %281 = call i32 %276(i64 %278, i64 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %275
  %284 = load i32*, i32** %8, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32*, i32** %8, align 8
  %288 = call i32 (i32*, i8*, ...) @fprintf(i32* %287, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %283
  br label %380

290:                                              ; preds = %275
  %291 = load i64, i64* %12, align 8
  %292 = call i64 @TREE_TYPE(i64 %291)
  %293 = call i64 @POINTER_TYPE_P(i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %317

295:                                              ; preds = %290
  %296 = load i64, i64* %13, align 8
  %297 = call i64 @TREE_TYPE(i64 %296)
  %298 = call i64 @POINTER_TYPE_P(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %317

300:                                              ; preds = %295
  %301 = load i64, i64* %12, align 8
  %302 = call i64 @TREE_TYPE(i64 %301)
  %303 = call i64 @TREE_TYPE(i64 %302)
  %304 = call i64 @get_alias_set(i64 %303)
  %305 = load i64, i64* %13, align 8
  %306 = call i64 @TREE_TYPE(i64 %305)
  %307 = call i64 @TREE_TYPE(i64 %306)
  %308 = call i64 @get_alias_set(i64 %307)
  %309 = icmp ne i64 %304, %308
  br i1 %309, label %310, label %317

310:                                              ; preds = %300
  %311 = load i32*, i32** %8, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load i32*, i32** %8, align 8
  %315 = call i32 (i32*, i8*, ...) @fprintf(i32* %314, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %316

316:                                              ; preds = %313, %310
  br label %380

317:                                              ; preds = %300, %295, %290
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* %10, align 4
  %323 = call i32 @partition_union(i32 %320, i32 %321, i32 %322)
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* %20, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %317
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %328 = load i32, i32* %11, align 4
  %329 = call i64 @partition_to_var(%struct.TYPE_8__* %327, i32 %328)
  %330 = load i64, i64* %13, align 8
  %331 = call i32 @replace_ssa_name_symbol(i64 %329, i64 %330)
  br label %342

332:                                              ; preds = %317
  %333 = load i32, i32* %19, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %332
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %337 = load i32, i32* %11, align 4
  %338 = call i64 @partition_to_var(%struct.TYPE_8__* %336, i32 %337)
  %339 = load i64, i64* %12, align 8
  %340 = call i32 @replace_ssa_name_symbol(i64 %338, i64 %339)
  br label %341

341:                                              ; preds = %335, %332
  br label %342

342:                                              ; preds = %341, %326
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %344 = load i32, i32* %11, align 4
  %345 = call i64 @partition_to_var(%struct.TYPE_8__* %343, i32 %344)
  %346 = call i64 @SSA_NAME_VAR(i64 %345)
  %347 = call %struct.TYPE_9__* @var_ann(i64 %346)
  store %struct.TYPE_9__* %347, %struct.TYPE_9__** %18, align 8
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %342
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  store i64 %355, i64* %357, align 8
  br label %364

358:                                              ; preds = %342
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  store i64 %361, i64* %363, align 8
  br label %364

364:                                              ; preds = %358, %352
  %365 = load i32*, i32** %8, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %380

367:                                              ; preds = %364
  %368 = load i32*, i32** %8, align 8
  %369 = load i32, i32* %11, align 4
  %370 = call i32 (i32*, i8*, ...) @fprintf(i32* %368, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %369)
  %371 = load i32*, i32** %8, align 8
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %373 = load i32, i32* %11, align 4
  %374 = call i64 @partition_to_var(%struct.TYPE_8__* %372, i32 %373)
  %375 = call i64 @SSA_NAME_VAR(i64 %374)
  %376 = load i32, i32* @TDF_SLIM, align 4
  %377 = call i32 @print_generic_expr(i32* %371, i64 %375, i32 %376)
  %378 = load i32*, i32** %8, align 8
  %379 = call i32 (i32*, i8*, ...) @fprintf(i32* %378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %380

380:                                              ; preds = %105, %125, %143, %160, %179, %224, %251, %266, %289, %316, %367, %364
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @register_ssa_partition(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @partition_find(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i32*, i64, i32) #1

declare dso_local i64 @partition_to_var(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local %struct.TYPE_9__* @var_ann(i64) #1

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64) #1

declare dso_local i32 @partition_union(i32, i32, i32) #1

declare dso_local i64 @DECL_IGNORED_P(i64) #1

declare dso_local i64 @DECL_FROM_INLINE(i64) #1

declare dso_local i64 @default_def(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @get_alias_set(i64) #1

declare dso_local i32 @replace_ssa_name_symbol(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
