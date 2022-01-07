; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_search_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_search_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }
%struct.cred = type { i32 }
%struct.key = type { i64, i64, i32, %struct.key_type*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32 }
%struct.keyring_list = type { i32, %struct.key** }
%struct.timespec = type { i64 }
%struct.anon = type { %struct.keyring_list*, i32 }

@KEYRING_SEARCH_MAX_DEPTH = common dso_local global i32 0, align 4
@KEY_SEARCH = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i64 0, align 8
@key_type_keyring = common dso_local global %struct.key_type zeroinitializer, align 4
@EAGAIN = common dso_local global i64 0, align 8
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@KEY_FLAG_NEGATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyring_search_aux(i32 %0, %struct.cred* %1, %struct.key_type* %2, i8* %3, i64 (%struct.key*, i8*)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.key_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64 (%struct.key*, i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.keyring_list*, align 8
  %16 = alloca %struct.timespec, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.key*, align 8
  %20 = alloca %struct.key*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.timespec, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cred* %1, %struct.cred** %8, align 8
  store %struct.key_type* %2, %struct.key_type** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 (%struct.key*, i8*)* %4, i64 (%struct.key*, i8*)** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = load i32, i32* @KEYRING_SEARCH_MAX_DEPTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca %struct.anon, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.key* @key_ref_to_ptr(i32 %31)
  store %struct.key* %32, %struct.key** %19, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @is_key_possessed(i32 %33)
  store i64 %34, i64* %17, align 8
  %35 = load %struct.key*, %struct.key** %19, align 8
  %36 = call i32 @key_check(%struct.key* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cred*, %struct.cred** %8, align 8
  %39 = load i32, i32* @KEY_SEARCH, align 4
  %40 = call i64 @key_task_permission(i32 %37, %struct.cred* %38, i32 %39)
  store i64 %40, i64* %22, align 8
  %41 = load i64, i64* %22, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %6
  %44 = load i64, i64* %22, align 8
  %45 = call i32 @ERR_PTR(i64 %44)
  store i32 %45, i32* %21, align 4
  br label %342

46:                                               ; preds = %6
  %47 = load i64, i64* @ENOTDIR, align 8
  %48 = sub nsw i64 0, %47
  %49 = call i32 @ERR_PTR(i64 %48)
  store i32 %49, i32* %21, align 4
  %50 = load %struct.key*, %struct.key** %19, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 3
  %52 = load %struct.key_type*, %struct.key_type** %51, align 8
  %53 = icmp ne %struct.key_type* %52, @key_type_keyring
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %342

55:                                               ; preds = %46
  %56 = call i32 (...) @rcu_read_lock()
  %57 = call i64 (...) @current_kernel_time()
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = bitcast %struct.timespec* %16 to i8*
  %60 = bitcast %struct.timespec* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = load i64, i64* @EAGAIN, align 8
  %62 = sub nsw i64 0, %61
  store i64 %62, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %63 = load i64, i64* @EAGAIN, align 8
  %64 = sub nsw i64 0, %63
  %65 = call i32 @ERR_PTR(i64 %64)
  store i32 %65, i32* %21, align 4
  %66 = load %struct.key*, %struct.key** %19, align 8
  %67 = getelementptr inbounds %struct.key, %struct.key* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %18, align 8
  %69 = load %struct.key*, %struct.key** %19, align 8
  %70 = getelementptr inbounds %struct.key, %struct.key* %69, i32 0, i32 3
  %71 = load %struct.key_type*, %struct.key_type** %70, align 8
  %72 = load %struct.key_type*, %struct.key_type** %9, align 8
  %73 = icmp eq %struct.key_type* %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %55
  %75 = load i64 (%struct.key*, i8*)*, i64 (%struct.key*, i8*)** %11, align 8
  %76 = load %struct.key*, %struct.key** %19, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 %75(%struct.key* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %74
  %81 = load %struct.key*, %struct.key** %19, align 8
  store %struct.key* %81, %struct.key** %20, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %331

85:                                               ; preds = %80
  %86 = load i64, i64* %18, align 8
  %87 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %88 = shl i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = and i64 %86, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %340

93:                                               ; preds = %85
  %94 = load %struct.key*, %struct.key** %20, align 8
  %95 = getelementptr inbounds %struct.key, %struct.key* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.key*, %struct.key** %20, align 8
  %102 = getelementptr inbounds %struct.key, %struct.key* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %340

106:                                              ; preds = %98, %93
  %107 = load i64, i64* %18, align 8
  %108 = load i32, i32* @KEY_FLAG_NEGATIVE, align 4
  %109 = shl i32 1, %108
  %110 = sext i32 %109 to i64
  %111 = and i64 %107, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = call i32 (...) @smp_rmb()
  %115 = load %struct.key*, %struct.key** %20, align 8
  %116 = getelementptr inbounds %struct.key, %struct.key* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @ERR_PTR(i64 %120)
  store i32 %121, i32* %21, align 4
  br label %340

122:                                              ; preds = %106
  br label %331

123:                                              ; preds = %74, %55
  %124 = load i64, i64* @EAGAIN, align 8
  %125 = sub nsw i64 0, %124
  %126 = call i32 @ERR_PTR(i64 %125)
  store i32 %126, i32* %21, align 4
  %127 = load i64, i64* %18, align 8
  %128 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %129 = shl i32 1, %128
  %130 = load i32, i32* @KEY_FLAG_NEGATIVE, align 4
  %131 = shl i32 1, %130
  %132 = or i32 %129, %131
  %133 = sext i32 %132 to i64
  %134 = and i64 %127, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %123
  %137 = load %struct.key*, %struct.key** %19, align 8
  %138 = getelementptr inbounds %struct.key, %struct.key* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.key*, %struct.key** %19, align 8
  %145 = getelementptr inbounds %struct.key, %struct.key* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sge i64 %143, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141, %123
  br label %340

149:                                              ; preds = %141, %136
  br label %150

150:                                              ; preds = %293, %149
  %151 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %152 = load %struct.key*, %struct.key** %19, align 8
  %153 = getelementptr inbounds %struct.key, %struct.key* %152, i32 0, i32 0
  %154 = call i64 @test_bit(i32 %151, i64* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %311

157:                                              ; preds = %150
  %158 = load %struct.key*, %struct.key** %19, align 8
  %159 = getelementptr inbounds %struct.key, %struct.key* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call %struct.keyring_list* @rcu_dereference(i32 %161)
  store %struct.keyring_list* %162, %struct.keyring_list** %15, align 8
  %163 = load %struct.keyring_list*, %struct.keyring_list** %15, align 8
  %164 = icmp ne %struct.keyring_list* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %157
  br label %311

166:                                              ; preds = %157
  %167 = load %struct.keyring_list*, %struct.keyring_list** %15, align 8
  %168 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %24, align 4
  %170 = call i32 (...) @smp_rmb()
  store i32 0, i32* %25, align 4
  br label %171

171:                                              ; preds = %253, %166
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %24, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %256

175:                                              ; preds = %171
  %176 = load %struct.keyring_list*, %struct.keyring_list** %15, align 8
  %177 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %176, i32 0, i32 1
  %178 = load %struct.key**, %struct.key*** %177, align 8
  %179 = load i32, i32* %25, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.key*, %struct.key** %178, i64 %180
  %182 = load %struct.key*, %struct.key** %181, align 8
  store %struct.key* %182, %struct.key** %20, align 8
  %183 = load %struct.key*, %struct.key** %20, align 8
  %184 = getelementptr inbounds %struct.key, %struct.key* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %18, align 8
  %186 = load %struct.key*, %struct.key** %20, align 8
  %187 = getelementptr inbounds %struct.key, %struct.key* %186, i32 0, i32 3
  %188 = load %struct.key_type*, %struct.key_type** %187, align 8
  %189 = load %struct.key_type*, %struct.key_type** %9, align 8
  %190 = icmp ne %struct.key_type* %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %175
  br label %253

192:                                              ; preds = %175
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %217, label %195

195:                                              ; preds = %192
  %196 = load i64, i64* %18, align 8
  %197 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %198 = shl i32 1, %197
  %199 = sext i32 %198 to i64
  %200 = and i64 %196, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %253

203:                                              ; preds = %195
  %204 = load %struct.key*, %struct.key** %20, align 8
  %205 = getelementptr inbounds %struct.key, %struct.key* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.key*, %struct.key** %20, align 8
  %212 = getelementptr inbounds %struct.key, %struct.key* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp sge i64 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %253

216:                                              ; preds = %208, %203
  br label %217

217:                                              ; preds = %216, %192
  %218 = load i64 (%struct.key*, i8*)*, i64 (%struct.key*, i8*)** %11, align 8
  %219 = load %struct.key*, %struct.key** %20, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = call i64 %218(%struct.key* %219, i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %217
  br label %253

224:                                              ; preds = %217
  %225 = load %struct.key*, %struct.key** %20, align 8
  %226 = load i64, i64* %17, align 8
  %227 = call i32 @make_key_ref(%struct.key* %225, i64 %226)
  %228 = load %struct.cred*, %struct.cred** %8, align 8
  %229 = load i32, i32* @KEY_SEARCH, align 4
  %230 = call i64 @key_task_permission(i32 %227, %struct.cred* %228, i32 %229)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %253

233:                                              ; preds = %224
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %331

237:                                              ; preds = %233
  %238 = load i64, i64* %18, align 8
  %239 = load i32, i32* @KEY_FLAG_NEGATIVE, align 4
  %240 = shl i32 1, %239
  %241 = sext i32 %240 to i64
  %242 = and i64 %238, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = call i32 (...) @smp_rmb()
  %246 = load %struct.key*, %struct.key** %20, align 8
  %247 = getelementptr inbounds %struct.key, %struct.key* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %22, align 8
  br label %253

252:                                              ; preds = %237
  br label %331

253:                                              ; preds = %244, %232, %223, %215, %202, %191
  %254 = load i32, i32* %25, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %25, align 4
  br label %171

256:                                              ; preds = %171
  store i32 0, i32* %25, align 4
  br label %257

257:                                              ; preds = %314, %256
  %258 = load %struct.keyring_list*, %struct.keyring_list** %15, align 8
  %259 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %24, align 4
  %261 = call i32 (...) @smp_rmb()
  br label %262

262:                                              ; preds = %307, %257
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %24, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %310

266:                                              ; preds = %262
  %267 = load %struct.keyring_list*, %struct.keyring_list** %15, align 8
  %268 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %267, i32 0, i32 1
  %269 = load %struct.key**, %struct.key*** %268, align 8
  %270 = load i32, i32* %25, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.key*, %struct.key** %269, i64 %271
  %273 = load %struct.key*, %struct.key** %272, align 8
  store %struct.key* %273, %struct.key** %20, align 8
  %274 = load %struct.key*, %struct.key** %20, align 8
  %275 = getelementptr inbounds %struct.key, %struct.key* %274, i32 0, i32 3
  %276 = load %struct.key_type*, %struct.key_type** %275, align 8
  %277 = icmp ne %struct.key_type* %276, @key_type_keyring
  br i1 %277, label %278, label %279

278:                                              ; preds = %266
  br label %307

279:                                              ; preds = %266
  %280 = load i32, i32* %23, align 4
  %281 = load i32, i32* @KEYRING_SEARCH_MAX_DEPTH, align 4
  %282 = icmp sge i32 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %279
  br label %307

284:                                              ; preds = %279
  %285 = load %struct.key*, %struct.key** %20, align 8
  %286 = load i64, i64* %17, align 8
  %287 = call i32 @make_key_ref(%struct.key* %285, i64 %286)
  %288 = load %struct.cred*, %struct.cred** %8, align 8
  %289 = load i32, i32* @KEY_SEARCH, align 4
  %290 = call i64 @key_task_permission(i32 %287, %struct.cred* %288, i32 %289)
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  br label %307

293:                                              ; preds = %284
  %294 = load %struct.keyring_list*, %struct.keyring_list** %15, align 8
  %295 = load i32, i32* %23, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %296
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %297, i32 0, i32 0
  store %struct.keyring_list* %294, %struct.keyring_list** %298, align 16
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* %23, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %301
  %303 = getelementptr inbounds %struct.anon, %struct.anon* %302, i32 0, i32 1
  store i32 %299, i32* %303, align 8
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %23, align 4
  %306 = load %struct.key*, %struct.key** %20, align 8
  store %struct.key* %306, %struct.key** %19, align 8
  br label %150

307:                                              ; preds = %292, %283, %278
  %308 = load i32, i32* %25, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %25, align 4
  br label %262

310:                                              ; preds = %262
  br label %311

311:                                              ; preds = %310, %165, %156
  %312 = load i32, i32* %23, align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %328

314:                                              ; preds = %311
  %315 = load i32, i32* %23, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %23, align 4
  %317 = load i32, i32* %23, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %318
  %320 = getelementptr inbounds %struct.anon, %struct.anon* %319, i32 0, i32 0
  %321 = load %struct.keyring_list*, %struct.keyring_list** %320, align 16
  store %struct.keyring_list* %321, %struct.keyring_list** %15, align 8
  %322 = load i32, i32* %23, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 %323
  %325 = getelementptr inbounds %struct.anon, %struct.anon* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %25, align 4
  br label %257

328:                                              ; preds = %311
  %329 = load i64, i64* %22, align 8
  %330 = call i32 @ERR_PTR(i64 %329)
  store i32 %330, i32* %21, align 4
  br label %340

331:                                              ; preds = %252, %236, %122, %84
  %332 = load %struct.key*, %struct.key** %20, align 8
  %333 = getelementptr inbounds %struct.key, %struct.key* %332, i32 0, i32 2
  %334 = call i32 @atomic_inc(i32* %333)
  %335 = load %struct.key*, %struct.key** %20, align 8
  %336 = call i32 @key_check(%struct.key* %335)
  %337 = load %struct.key*, %struct.key** %20, align 8
  %338 = load i64, i64* %17, align 8
  %339 = call i32 @make_key_ref(%struct.key* %337, i64 %338)
  store i32 %339, i32* %21, align 4
  br label %340

340:                                              ; preds = %331, %328, %148, %113, %105, %92
  %341 = call i32 (...) @rcu_read_unlock()
  br label %342

342:                                              ; preds = %340, %54, %43
  %343 = load i32, i32* %21, align 4
  %344 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %344)
  ret i32 %343
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #2

declare dso_local i64 @is_key_possessed(i32) #2

declare dso_local i32 @key_check(%struct.key*) #2

declare dso_local i64 @key_task_permission(i32, %struct.cred*, i32) #2

declare dso_local i32 @ERR_PTR(i64) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local i64 @current_kernel_time(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @smp_rmb(...) #2

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local %struct.keyring_list* @rcu_dereference(i32) #2

declare dso_local i32 @make_key_ref(%struct.key*, i64) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
