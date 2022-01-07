; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_scan_swap_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_scan_swap_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, i8* }

@LATENCY_LIMIT = common dso_local global i32 0, align 4
@SWP_SCANNING = common dso_local global i64 0, align 8
@SWAPFILE_CLUSTER = common dso_local global i32 0, align 4
@SWP_DISCARDABLE = common dso_local global i32 0, align 4
@swap_lock = common dso_local global i32 0, align 4
@SWP_SOLIDSTATE = common dso_local global i32 0, align 4
@SWP_WRITEOK = common dso_local global i32 0, align 4
@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@SWP_DISCARDING = common dso_local global i32 0, align 4
@wait_for_discard = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.swap_info_struct*, i8)* @scan_swap_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scan_swap_map(%struct.swap_info_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* @SWP_SCANNING, align 8
  %14 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %15 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %21 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %24 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = icmp ne i32 %25, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %206

32:                                               ; preds = %2
  %33 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %34 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %37 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %46 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %207

47:                                               ; preds = %32
  %48 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %49 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SWP_DISCARDABLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %56 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %207

60:                                               ; preds = %54
  %61 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %62 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %65 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  %66 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %67 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %66, i32 0, i32 7
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %47
  %69 = call i32 @spin_unlock(i32* @swap_lock)
  %70 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %71 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SWP_SOLIDSTATE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %78 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %6, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %76, %68
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %81, %83
  %85 = sub i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %135, %80
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %89 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %88, i32 0, i32 9
  %90 = load i64, i64* %89, align 8
  %91 = icmp ule i64 %87, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %86
  %93 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %94 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i64, i64* %6, align 8
  %102 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %101, %103
  store i64 %104, i64* %8, align 8
  br label %124

105:                                              ; preds = %92
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = call i32 @spin_lock(i32* @swap_lock)
  %111 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %6, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %118 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %122 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  store i32 1, i32* %10, align 4
  br label %207

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = call i32 (...) @cond_resched()
  %133 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %86

138:                                              ; preds = %86
  %139 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %140 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %142, %144
  %146 = sub i64 %145, 1
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %194, %138
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %7, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %197

151:                                              ; preds = %147
  %152 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %153 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %152, i32 0, i32 10
  %154 = load i8*, i8** %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = load i64, i64* %6, align 8
  %161 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 %160, %162
  store i64 %163, i64* %8, align 8
  br label %183

164:                                              ; preds = %151
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = call i32 @spin_lock(i32* @swap_lock)
  %170 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %6, align 8
  %174 = sub i64 %173, %172
  store i64 %174, i64* %6, align 8
  %175 = load i64, i64* %6, align 8
  %176 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %177 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %179 = sub nsw i32 %178, 1
  %180 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %181 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  store i32 1, i32* %10, align 4
  br label %207

182:                                              ; preds = %164
  br label %183

183:                                              ; preds = %182, %159
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %9, align 4
  %186 = icmp slt i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = call i32 (...) @cond_resched()
  %192 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %190, %183
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %6, align 8
  br label %147

197:                                              ; preds = %147
  %198 = load i64, i64* %7, align 8
  store i64 %198, i64* %6, align 8
  %199 = call i32 @spin_lock(i32* @swap_lock)
  %200 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %203 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %205 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %204, i32 0, i32 5
  store i64 0, i64* %205, align 8
  br label %206

206:                                              ; preds = %197, %2
  br label %207

207:                                              ; preds = %503, %487, %457, %441, %253, %206, %168, %109, %59, %42
  %208 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %209 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SWP_WRITEOK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %207
  br label %518

215:                                              ; preds = %207
  %216 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %217 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  br label %518

221:                                              ; preds = %215
  %222 = load i64, i64* %6, align 8
  %223 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %224 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %223, i32 0, i32 9
  %225 = load i64, i64* %224, align 8
  %226 = icmp ugt i64 %222, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %229 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %228, i32 0, i32 8
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %6, align 8
  store i64 %230, i64* %7, align 8
  br label %231

231:                                              ; preds = %227, %221
  %232 = call i64 (...) @vm_swap_full()
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %255

234:                                              ; preds = %231
  %235 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %236 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %235, i32 0, i32 10
  %237 = load i8*, i8** %236, align 8
  %238 = load i64, i64* %6, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %234
  %246 = call i32 @spin_unlock(i32* @swap_lock)
  %247 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @__try_to_reclaim_swap(%struct.swap_info_struct* %247, i64 %248)
  store i32 %249, i32* %11, align 4
  %250 = call i32 @spin_lock(i32* @swap_lock)
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  br label %207

254:                                              ; preds = %245
  br label %424

255:                                              ; preds = %234, %231
  %256 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %257 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %256, i32 0, i32 10
  %258 = load i8*, i8** %257, align 8
  %259 = load i64, i64* %6, align 8
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = icmp ne i8 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %255
  br label %424

264:                                              ; preds = %255
  %265 = load i64, i64* %6, align 8
  %266 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %267 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %266, i32 0, i32 8
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %265, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %264
  %271 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %272 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %271, i32 0, i32 8
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %272, align 8
  br label %275

275:                                              ; preds = %270, %264
  %276 = load i64, i64* %6, align 8
  %277 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %278 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %277, i32 0, i32 9
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %276, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %275
  %282 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %283 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %282, i32 0, i32 9
  %284 = load i64, i64* %283, align 8
  %285 = add i64 %284, -1
  store i64 %285, i64* %283, align 8
  br label %286

286:                                              ; preds = %281, %275
  %287 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %288 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  %291 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %292 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %295 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %293, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %286
  %299 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %300 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %303 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %302, i32 0, i32 8
  store i64 %301, i64* %303, align 8
  %304 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %305 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %304, i32 0, i32 9
  store i64 0, i64* %305, align 8
  br label %306

306:                                              ; preds = %298, %286
  %307 = load i8, i8* %5, align 1
  %308 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %309 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %308, i32 0, i32 10
  %310 = load i8*, i8** %309, align 8
  %311 = load i64, i64* %6, align 8
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8 %307, i8* %312, align 1
  %313 = load i64, i64* %6, align 8
  %314 = add i64 %313, 1
  %315 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %316 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %315, i32 0, i32 1
  store i64 %314, i64* %316, align 8
  %317 = load i64, i64* @SWP_SCANNING, align 8
  %318 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %319 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = sext i32 %320 to i64
  %322 = sub nsw i64 %321, %317
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* %319, align 8
  %324 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %325 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %324, i32 0, i32 5
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %422

328:                                              ; preds = %306
  %329 = load i32, i32* %10, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %382

331:                                              ; preds = %328
  %332 = load i64, i64* %6, align 8
  %333 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %334 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %333, i32 0, i32 7
  %335 = load i64, i64* %334, align 8
  %336 = icmp ult i64 %332, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %331
  %338 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %339 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* %8, align 8
  %342 = icmp ule i64 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %345 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %344, i32 0, i32 5
  %346 = load i64, i64* %345, align 8
  %347 = sub nsw i64 %346, 1
  store i64 %347, i64* %8, align 8
  br label %348

348:                                              ; preds = %343, %337, %331
  %349 = load i32, i32* @SWP_DISCARDING, align 4
  %350 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %351 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 8
  %354 = call i32 @spin_unlock(i32* @swap_lock)
  %355 = load i64, i64* %6, align 8
  %356 = load i64, i64* %8, align 8
  %357 = icmp ult i64 %355, %356
  br i1 %357, label %358, label %366

358:                                              ; preds = %348
  %359 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %360 = load i64, i64* %6, align 8
  %361 = load i64, i64* %8, align 8
  %362 = load i64, i64* %6, align 8
  %363 = sub i64 %361, %362
  %364 = add i64 %363, 1
  %365 = call i32 @discard_swap_cluster(%struct.swap_info_struct* %359, i64 %360, i64 %364)
  br label %366

366:                                              ; preds = %358, %348
  %367 = call i32 @spin_lock(i32* @swap_lock)
  %368 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %369 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %368, i32 0, i32 5
  store i64 0, i64* %369, align 8
  %370 = load i32, i32* @SWP_DISCARDING, align 4
  %371 = xor i32 %370, -1
  %372 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %373 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, %371
  store i32 %375, i32* %373, align 8
  %376 = call i32 (...) @smp_mb()
  %377 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %378 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %377, i32 0, i32 0
  %379 = load i32, i32* @SWP_DISCARDING, align 4
  %380 = call i32 @ilog2(i32 %379)
  %381 = call i32 @wake_up_bit(i32* %378, i32 %380)
  br label %421

382:                                              ; preds = %328
  %383 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %384 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @SWP_DISCARDING, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %399

389:                                              ; preds = %382
  %390 = call i32 @spin_unlock(i32* @swap_lock)
  %391 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %392 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %391, i32 0, i32 0
  %393 = load i32, i32* @SWP_DISCARDING, align 4
  %394 = call i32 @ilog2(i32 %393)
  %395 = load i32, i32* @wait_for_discard, align 4
  %396 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %397 = call i32 @wait_on_bit(i32* %392, i32 %394, i32 %395, i32 %396)
  %398 = call i32 @spin_lock(i32* @swap_lock)
  br label %420

399:                                              ; preds = %382
  %400 = load i64, i64* %6, align 8
  %401 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %402 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %401, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = icmp ult i64 %400, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %399
  %406 = load i64, i64* %6, align 8
  %407 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %408 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %407, i32 0, i32 5
  store i64 %406, i64* %408, align 8
  br label %409

409:                                              ; preds = %405, %399
  %410 = load i64, i64* %6, align 8
  %411 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %412 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %411, i32 0, i32 7
  %413 = load i64, i64* %412, align 8
  %414 = icmp ugt i64 %410, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = load i64, i64* %6, align 8
  %417 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %418 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %417, i32 0, i32 7
  store i64 %416, i64* %418, align 8
  br label %419

419:                                              ; preds = %415, %409
  br label %420

420:                                              ; preds = %419, %389
  br label %421

421:                                              ; preds = %420, %366
  br label %422

422:                                              ; preds = %421, %306
  %423 = load i64, i64* %6, align 8
  store i64 %423, i64* %3, align 8
  br label %526

424:                                              ; preds = %263, %254
  %425 = call i32 @spin_unlock(i32* @swap_lock)
  br label %426

426:                                              ; preds = %469, %424
  %427 = load i64, i64* %6, align 8
  %428 = add i64 %427, 1
  store i64 %428, i64* %6, align 8
  %429 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %430 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %429, i32 0, i32 9
  %431 = load i64, i64* %430, align 8
  %432 = icmp ule i64 %428, %431
  br i1 %432, label %433, label %470

433:                                              ; preds = %426
  %434 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %435 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %434, i32 0, i32 10
  %436 = load i8*, i8** %435, align 8
  %437 = load i64, i64* %6, align 8
  %438 = getelementptr inbounds i8, i8* %436, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = icmp ne i8 %439, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %433
  %442 = call i32 @spin_lock(i32* @swap_lock)
  br label %207

443:                                              ; preds = %433
  %444 = call i64 (...) @vm_swap_full()
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %459

446:                                              ; preds = %443
  %447 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %448 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %447, i32 0, i32 10
  %449 = load i8*, i8** %448, align 8
  %450 = load i64, i64* %6, align 8
  %451 = getelementptr inbounds i8, i8* %449, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = sext i8 %452 to i32
  %454 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %455 = sext i8 %454 to i32
  %456 = icmp eq i32 %453, %455
  br i1 %456, label %457, label %459

457:                                              ; preds = %446
  %458 = call i32 @spin_lock(i32* @swap_lock)
  br label %207

459:                                              ; preds = %446, %443
  %460 = load i32, i32* %9, align 4
  %461 = add nsw i32 %460, -1
  store i32 %461, i32* %9, align 4
  %462 = icmp slt i32 %461, 0
  %463 = zext i1 %462 to i32
  %464 = call i64 @unlikely(i32 %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %459
  %467 = call i32 (...) @cond_resched()
  %468 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %468, i32* %9, align 4
  br label %469

469:                                              ; preds = %466, %459
  br label %426

470:                                              ; preds = %426
  %471 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %472 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %471, i32 0, i32 8
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %6, align 8
  br label %474

474:                                              ; preds = %515, %470
  %475 = load i64, i64* %6, align 8
  %476 = add i64 %475, 1
  store i64 %476, i64* %6, align 8
  %477 = load i64, i64* %7, align 8
  %478 = icmp ult i64 %476, %477
  br i1 %478, label %479, label %516

479:                                              ; preds = %474
  %480 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %481 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %480, i32 0, i32 10
  %482 = load i8*, i8** %481, align 8
  %483 = load i64, i64* %6, align 8
  %484 = getelementptr inbounds i8, i8* %482, i64 %483
  %485 = load i8, i8* %484, align 1
  %486 = icmp ne i8 %485, 0
  br i1 %486, label %489, label %487

487:                                              ; preds = %479
  %488 = call i32 @spin_lock(i32* @swap_lock)
  br label %207

489:                                              ; preds = %479
  %490 = call i64 (...) @vm_swap_full()
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %505

492:                                              ; preds = %489
  %493 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %494 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %493, i32 0, i32 10
  %495 = load i8*, i8** %494, align 8
  %496 = load i64, i64* %6, align 8
  %497 = getelementptr inbounds i8, i8* %495, i64 %496
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i32
  %500 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %501 = sext i8 %500 to i32
  %502 = icmp eq i32 %499, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %492
  %504 = call i32 @spin_lock(i32* @swap_lock)
  br label %207

505:                                              ; preds = %492, %489
  %506 = load i32, i32* %9, align 4
  %507 = add nsw i32 %506, -1
  store i32 %507, i32* %9, align 4
  %508 = icmp slt i32 %507, 0
  %509 = zext i1 %508 to i32
  %510 = call i64 @unlikely(i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %515

512:                                              ; preds = %505
  %513 = call i32 (...) @cond_resched()
  %514 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %514, i32* %9, align 4
  br label %515

515:                                              ; preds = %512, %505
  br label %474

516:                                              ; preds = %474
  %517 = call i32 @spin_lock(i32* @swap_lock)
  br label %518

518:                                              ; preds = %516, %220, %214
  %519 = load i64, i64* @SWP_SCANNING, align 8
  %520 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %521 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = sext i32 %522 to i64
  %524 = sub nsw i64 %523, %519
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %521, align 8
  store i64 0, i64* %3, align 8
  br label %526

526:                                              ; preds = %518, %422
  %527 = load i64, i64* %3, align 8
  ret i64 %527
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @vm_swap_full(...) #1

declare dso_local i32 @__try_to_reclaim_swap(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @discard_swap_cluster(%struct.swap_info_struct*, i64, i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
