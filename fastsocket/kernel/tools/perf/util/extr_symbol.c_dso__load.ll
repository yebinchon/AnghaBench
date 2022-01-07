; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64, i32, i32, i64 }
%struct.map = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.machine* }
%struct.machine = type { i8* }
%struct.symsrc = type { i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DSO_TYPE_KERNEL = common dso_local global i64 0, align 8
@DSO_TYPE_GUEST_KERNEL = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"/tmp/perf-\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"File %s not owned by current user or root, ignoring it.\0A\00", align 1
@DSO_BINARY_TYPE__JAVA_JIT = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__NOT_FOUND = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__SYMTAB_CNT = common dso_local global i64 0, align 8
@binary_type_symtab = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" (deleted)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load(%struct.dso* %0, %struct.map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x %struct.symsrc], align 4
  %15 = alloca %struct.symsrc*, align 8
  %16 = alloca %struct.symsrc*, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca %struct.symsrc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.map* %1, %struct.map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.symsrc* null, %struct.symsrc** %15, align 8
  store %struct.symsrc* null, %struct.symsrc** %16, align 8
  %22 = load %struct.dso*, %struct.dso** %5, align 8
  %23 = load %struct.map*, %struct.map** %6, align 8
  %24 = getelementptr inbounds %struct.map, %struct.map* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dso__set_loaded(%struct.dso* %22, i32 %25)
  %27 = load %struct.dso*, %struct.dso** %5, align 8
  %28 = getelementptr inbounds %struct.dso, %struct.dso* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DSO_TYPE_KERNEL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.dso*, %struct.dso** %5, align 8
  %34 = load %struct.map*, %struct.map** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dso__load_kernel_sym(%struct.dso* %33, %struct.map* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %268

37:                                               ; preds = %3
  %38 = load %struct.dso*, %struct.dso** %5, align 8
  %39 = getelementptr inbounds %struct.dso, %struct.dso* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.dso*, %struct.dso** %5, align 8
  %45 = load %struct.map*, %struct.map** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dso__load_guest_kernel_sym(%struct.dso* %44, %struct.map* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %268

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.map*, %struct.map** %6, align 8
  %51 = getelementptr inbounds %struct.map, %struct.map* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.map*, %struct.map** %6, align 8
  %56 = getelementptr inbounds %struct.map, %struct.map* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.machine*, %struct.machine** %58, align 8
  %60 = icmp ne %struct.machine* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.map*, %struct.map** %6, align 8
  %63 = getelementptr inbounds %struct.map, %struct.map* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.machine*, %struct.machine** %65, align 8
  store %struct.machine* %66, %struct.machine** %11, align 8
  br label %68

67:                                               ; preds = %54, %49
  store %struct.machine* null, %struct.machine** %11, align 8
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* @PATH_MAX, align 4
  %70 = call i8* @malloc(i32 %69)
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %268

74:                                               ; preds = %68
  %75 = load %struct.dso*, %struct.dso** %5, align 8
  %76 = getelementptr inbounds %struct.dso, %struct.dso* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.dso*, %struct.dso** %5, align 8
  %78 = getelementptr inbounds %struct.dso, %struct.dso* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @strncmp(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %74
  %83 = load %struct.dso*, %struct.dso** %5, align 8
  %84 = getelementptr inbounds %struct.dso, %struct.dso* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @lstat(i32 %85, %struct.stat* %17)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %268

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 (...) @geteuid()
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.dso*, %struct.dso** %5, align 8
  %100 = getelementptr inbounds %struct.dso, %struct.dso* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pr_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %4, align 4
  br label %268

103:                                              ; preds = %93, %89
  %104 = load %struct.dso*, %struct.dso** %5, align 8
  %105 = load %struct.map*, %struct.map** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dso__load_perf_map(%struct.dso* %104, %struct.map* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @DSO_BINARY_TYPE__JAVA_JIT, align 4
  br label %114

112:                                              ; preds = %103
  %113 = load i32, i32* @DSO_BINARY_TYPE__NOT_FOUND, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load %struct.dso*, %struct.dso** %5, align 8
  %117 = getelementptr inbounds %struct.dso, %struct.dso* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %268

119:                                              ; preds = %74
  %120 = load %struct.machine*, %struct.machine** %11, align 8
  %121 = icmp ne %struct.machine* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.machine*, %struct.machine** %11, align 8
  %124 = getelementptr inbounds %struct.machine, %struct.machine* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %12, align 8
  br label %126

126:                                              ; preds = %122, %119
  store i64 0, i64* %10, align 8
  br label %127

127:                                              ; preds = %187, %126
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* @DSO_BINARY_TYPE__SYMTAB_CNT, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %190

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x %struct.symsrc], [2 x %struct.symsrc]* %14, i64 0, i64 %133
  store %struct.symsrc* %134, %struct.symsrc** %18, align 8
  store i32 0, i32* %19, align 4
  %135 = load i32*, i32** @binary_type_symtab, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %20, align 4
  %139 = load %struct.dso*, %struct.dso** %5, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* @PATH_MAX, align 4
  %144 = call i64 @dso__binary_type_file(%struct.dso* %139, i32 %140, i8* %141, i8* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %131
  br label %187

147:                                              ; preds = %131
  %148 = load %struct.symsrc*, %struct.symsrc** %18, align 8
  %149 = load %struct.dso*, %struct.dso** %5, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* %20, align 4
  %152 = call i64 @symsrc__init(%struct.symsrc* %148, %struct.dso* %149, i8* %150, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %187

155:                                              ; preds = %147
  %156 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %157 = icmp ne %struct.symsrc* %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = load %struct.symsrc*, %struct.symsrc** %18, align 8
  %160 = call i64 @symsrc__has_symtab(%struct.symsrc* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load %struct.symsrc*, %struct.symsrc** %18, align 8
  store %struct.symsrc* %163, %struct.symsrc** %15, align 8
  store i32 1, i32* %19, align 4
  br label %164

164:                                              ; preds = %162, %158, %155
  %165 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %166 = icmp ne %struct.symsrc* %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load %struct.symsrc*, %struct.symsrc** %18, align 8
  %169 = call i64 @symsrc__possibly_runtime(%struct.symsrc* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load %struct.symsrc*, %struct.symsrc** %18, align 8
  store %struct.symsrc* %172, %struct.symsrc** %16, align 8
  store i32 1, i32* %19, align 4
  br label %173

173:                                              ; preds = %171, %167, %164
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  %179 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %180 = icmp ne %struct.symsrc* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %183 = icmp ne %struct.symsrc* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %190

185:                                              ; preds = %181, %176
  br label %186

186:                                              ; preds = %185, %173
  br label %187

187:                                              ; preds = %186, %154, %146
  %188 = load i64, i64* %10, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %10, align 8
  br label %127

190:                                              ; preds = %184, %127
  %191 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %192 = icmp ne %struct.symsrc* %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %195 = icmp ne %struct.symsrc* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  br label %254

197:                                              ; preds = %193, %190
  %198 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %199 = icmp ne %struct.symsrc* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %202 = icmp ne %struct.symsrc* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  store %struct.symsrc* %204, %struct.symsrc** %15, align 8
  br label %205

205:                                              ; preds = %203, %200, %197
  %206 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %207 = icmp ne %struct.symsrc* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  %209 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %210 = icmp ne %struct.symsrc* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  store %struct.symsrc* %212, %struct.symsrc** %16, align 8
  br label %213

213:                                              ; preds = %211, %208, %205
  %214 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %215 = icmp ne %struct.symsrc* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load %struct.dso*, %struct.dso** %5, align 8
  %218 = load %struct.map*, %struct.map** %6, align 8
  %219 = load %struct.symsrc*, %struct.symsrc** %15, align 8
  %220 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @dso__load_sym(%struct.dso* %217, %struct.map* %218, %struct.symsrc* %219, %struct.symsrc* %220, i32 %221, i32 0)
  store i32 %222, i32* %9, align 4
  br label %224

223:                                              ; preds = %213
  store i32 -1, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %216
  %225 = load i32, i32* %9, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = load %struct.dso*, %struct.dso** %5, align 8
  %229 = load %struct.symsrc*, %struct.symsrc** %16, align 8
  %230 = load %struct.map*, %struct.map** %6, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @dso__synthesize_plt_symbols(%struct.dso* %228, %struct.symsrc* %229, %struct.map* %230, i32 %231)
  store i32 %232, i32* %21, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = load i32, i32* %21, align 4
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %235, %227
  br label %240

240:                                              ; preds = %239, %224
  br label %241

241:                                              ; preds = %250, %240
  %242 = load i32, i32* %13, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x %struct.symsrc], [2 x %struct.symsrc]* %14, i64 0, i64 %247
  %249 = call i32 @symsrc__destroy(%struct.symsrc* %248)
  br label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %13, align 4
  br label %241

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %196
  %255 = load i8*, i8** %8, align 8
  %256 = call i32 @free(i8* %255)
  %257 = load i32, i32* %9, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load %struct.dso*, %struct.dso** %5, align 8
  %261 = getelementptr inbounds %struct.dso, %struct.dso* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32* @strstr(i32 %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store i32 0, i32* %4, align 4
  br label %268

266:                                              ; preds = %259, %254
  %267 = load i32, i32* %9, align 4
  store i32 %267, i32* %4, align 4
  br label %268

268:                                              ; preds = %266, %265, %114, %98, %88, %73, %43, %32
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local i32 @dso__set_loaded(%struct.dso*, i32) #1

declare dso_local i32 @dso__load_kernel_sym(%struct.dso*, %struct.map*, i32) #1

declare dso_local i32 @dso__load_guest_kernel_sym(%struct.dso*, %struct.map*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @dso__load_perf_map(%struct.dso*, %struct.map*, i32) #1

declare dso_local i64 @dso__binary_type_file(%struct.dso*, i32, i8*, i8*, i32) #1

declare dso_local i64 @symsrc__init(%struct.symsrc*, %struct.dso*, i8*, i32) #1

declare dso_local i64 @symsrc__has_symtab(%struct.symsrc*) #1

declare dso_local i64 @symsrc__possibly_runtime(%struct.symsrc*) #1

declare dso_local i32 @dso__load_sym(%struct.dso*, %struct.map*, %struct.symsrc*, %struct.symsrc*, i32, i32) #1

declare dso_local i32 @dso__synthesize_plt_symbols(%struct.dso*, %struct.symsrc*, %struct.map*, i32) #1

declare dso_local i32 @symsrc__destroy(%struct.symsrc*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
