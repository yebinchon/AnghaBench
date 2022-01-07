; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_visit_phi_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_visit_phi_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i8*, i8*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@VR_UNDEFINED = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\0A    Argument #%d (%d -> %d %sexecutable)\0A\00", align 1
@EDGE_EXECUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@SSA_NAME = common dso_local global i64 0, align 8
@VR_RANGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\0A\09Value: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VR_VARYING = common dso_local global i64 0, align 8
@SSA_PROP_INTERESTING = common dso_local global i32 0, align 4
@SSA_PROP_NOT_INTERESTING = common dso_local global i32 0, align 4
@SSA_PROP_VARYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vrp_visit_phi_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrp_visit_phi_node(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @PHI_RESULT(i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.TYPE_16__* @get_value_range(i8* %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %19 = load i32, i32* @VR_UNDEFINED, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %22 = load i32, i32* @NULL_TREE, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 6
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 7
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = call i32 @copy_value_range(%struct.TYPE_16__* %7, %struct.TYPE_16__* %34)
  %36 = load i64, i64* @dump_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %1
  %39 = load i32, i32* @dump_flags, align 4
  %40 = load i32, i32* @TDF_DETAILS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i64, i64* @dump_file, align 8
  %45 = call i32 (i64, i8*, ...) @fprintf(i64 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* @dump_file, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @dump_flags, align 4
  %49 = call i32 @print_generic_expr(i64 %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38, %1
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %154, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @PHI_NUM_ARGS(i8* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %157

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.TYPE_17__* @PHI_ARG_EDGE(i8* %57, i32 %58)
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %8, align 8
  %60 = load i64, i64* @dump_file, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load i32, i32* @dump_flags, align 4
  %64 = load i32, i32* @TDF_DETAILS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load i64, i64* @dump_file, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @EDGE_EXECUTABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %88 = call i32 (i64, i8*, ...) @fprintf(i64 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %74, i32 %79, i8* %87)
  br label %89

89:                                               ; preds = %67, %62, %56
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EDGE_EXECUTABLE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %89
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i8* @PHI_ARG_DEF(i8* %97, i32 %98)
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @TREE_CODE(i8* %100)
  %102 = load i64, i64* @SSA_NAME, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i8*, i8** %9, align 8
  %106 = call %struct.TYPE_16__* @get_value_range(i8* %105)
  %107 = bitcast %struct.TYPE_16__* %10 to i8*
  %108 = bitcast %struct.TYPE_16__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 56, i1 false)
  br label %124

109:                                              ; preds = %96
  %110 = load i8*, i8** %9, align 8
  %111 = call i64 @is_overflow_infinity(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %9, align 8
  %115 = call i8* @copy_node(i8* %114)
  store i8* %115, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i64, i64* @VR_RANGE, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i8* %119, i8** %120, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %116, %104
  %125 = load i64, i64* @dump_file, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i32, i32* @dump_flags, align 4
  %129 = load i32, i32* @TDF_DETAILS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load i64, i64* @dump_file, align 8
  %134 = call i32 (i64, i8*, ...) @fprintf(i64 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i64, i64* @dump_file, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* @dump_flags, align 4
  %138 = call i32 @print_generic_expr(i64 %135, i8* %136, i32 %137)
  %139 = load i64, i64* @dump_file, align 8
  %140 = call i32 (i64, i8*, ...) @fprintf(i64 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i64, i64* @dump_file, align 8
  %142 = call i32 @dump_value_range(i64 %141, %struct.TYPE_16__* %10)
  %143 = load i64, i64* @dump_file, align 8
  %144 = call i32 (i64, i8*, ...) @fprintf(i64 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %132, %127, %124
  %146 = call i32 @vrp_meet(%struct.TYPE_16__* %7, %struct.TYPE_16__* %10)
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @VR_VARYING, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %157

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %89
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %51

157:                                              ; preds = %151, %51
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VR_VARYING, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %289

163:                                              ; preds = %157
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @VR_RANGE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %281

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VR_RANGE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %281

174:                                              ; preds = %169
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 @TREE_TYPE(i8* %175)
  %177 = call i32 @POINTER_TYPE_P(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %280, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @compare_values(i8* %182, i8* %184)
  store i32 %185, i32* %12, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @compare_values(i8* %188, i8* %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %179
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %235

197:                                              ; preds = %194, %179
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @vrp_val_is_max(i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %289

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @TREE_TYPE(i8* %205)
  %207 = call i32 @needs_overflow_infinity(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load i8*, i8** %5, align 8
  %211 = load i8*, i8** %3, align 8
  %212 = call i32 @vrp_var_may_overflow(i8* %210, i8* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %209, %203
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @TREE_TYPE(i8* %216)
  %218 = call i8* @TYPE_MIN_VALUE(i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i8* %218, i8** %219, align 8
  br label %234

220:                                              ; preds = %209
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @TREE_TYPE(i8* %222)
  %224 = call i64 @supports_overflow_infinity(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @TREE_TYPE(i8* %228)
  %230 = call i8* @negative_overflow_infinity(i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i8* %230, i8** %231, align 8
  br label %233

232:                                              ; preds = %220
  br label %289

233:                                              ; preds = %226
  br label %234

234:                                              ; preds = %233, %214
  br label %235

235:                                              ; preds = %234, %194
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %13, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %279

241:                                              ; preds = %238, %235
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i64 @vrp_val_is_min(i8* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %289

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @TREE_TYPE(i8* %249)
  %251 = call i32 @needs_overflow_infinity(i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %247
  %254 = load i8*, i8** %5, align 8
  %255 = load i8*, i8** %3, align 8
  %256 = call i32 @vrp_var_may_overflow(i8* %254, i8* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253, %247
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @TREE_TYPE(i8* %260)
  %262 = call i8* @TYPE_MAX_VALUE(i32 %261)
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  store i8* %262, i8** %263, align 8
  br label %278

264:                                              ; preds = %253
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @TREE_TYPE(i8* %266)
  %268 = call i64 @supports_overflow_infinity(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @TREE_TYPE(i8* %272)
  %274 = call i8* @positive_overflow_infinity(i32 %273)
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  store i8* %274, i8** %275, align 8
  br label %277

276:                                              ; preds = %264
  br label %289

277:                                              ; preds = %270
  br label %278

278:                                              ; preds = %277, %258
  br label %279

279:                                              ; preds = %278, %238
  br label %280

280:                                              ; preds = %279, %174
  br label %281

281:                                              ; preds = %280, %169, %163
  %282 = load i8*, i8** %5, align 8
  %283 = call i64 @update_value_range(i8* %282, %struct.TYPE_16__* %7)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = load i32, i32* @SSA_PROP_INTERESTING, align 4
  store i32 %286, i32* %2, align 4
  br label %293

287:                                              ; preds = %281
  %288 = load i32, i32* @SSA_PROP_NOT_INTERESTING, align 4
  store i32 %288, i32* %2, align 4
  br label %293

289:                                              ; preds = %276, %246, %232, %202, %162
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %291 = call i32 @set_value_range_to_varying(%struct.TYPE_16__* %290)
  %292 = load i32, i32* @SSA_PROP_VARYING, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %289, %287, %285
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i8* @PHI_RESULT(i8*) #1

declare dso_local %struct.TYPE_16__* @get_value_range(i8*) #1

declare dso_local i32 @copy_value_range(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i8*, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i8*) #1

declare dso_local %struct.TYPE_17__* @PHI_ARG_EDGE(i8*, i32) #1

declare dso_local i8* @PHI_ARG_DEF(i8*, i32) #1

declare dso_local i64 @TREE_CODE(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_overflow_infinity(i8*) #1

declare dso_local i8* @copy_node(i8*) #1

declare dso_local i32 @dump_value_range(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @vrp_meet(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i8*) #1

declare dso_local i32 @compare_values(i8*, i8*) #1

declare dso_local i64 @vrp_val_is_max(i8*) #1

declare dso_local i32 @needs_overflow_infinity(i32) #1

declare dso_local i32 @vrp_var_may_overflow(i8*, i8*) #1

declare dso_local i8* @TYPE_MIN_VALUE(i32) #1

declare dso_local i64 @supports_overflow_infinity(i32) #1

declare dso_local i8* @negative_overflow_infinity(i32) #1

declare dso_local i64 @vrp_val_is_min(i8*) #1

declare dso_local i8* @TYPE_MAX_VALUE(i32) #1

declare dso_local i8* @positive_overflow_infinity(i32) #1

declare dso_local i64 @update_value_range(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @set_value_range_to_varying(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
