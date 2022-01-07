; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i64, i32, i32, i32, i32, i32*, %struct.TYPE_4__, i64, i32, i32, i64, %struct.key_user*, %struct.key_type*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.key_user = type { i32, i64, i32, i32 }
%struct.key_type = type { i64 }
%struct.cred = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i64 0, align 8
@key_quota_root_maxkeys = common dso_local global i32 0, align 4
@key_quota_maxkeys = common dso_local global i32 0, align 4
@key_quota_root_maxbytes = common dso_local global i32 0, align 4
@key_quota_maxbytes = common dso_local global i32 0, align 4
@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i64 0, align 8
@key_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KEY_FLAG_IN_QUOTA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@KEY_DEBUG_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @key_alloc(%struct.key_type* %0, i8* %1, i64 %2, i32 %3, %struct.cred* %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.key_user*, align 8
  %16 = alloca %struct.key*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.cred* %4, %struct.cred** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  store %struct.key_user* null, %struct.key_user** %15, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.key* @ERR_PTR(i32 %23)
  store %struct.key* %24, %struct.key** %16, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %7
  br label %212

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.key_type*, %struct.key_type** %8, align 8
  %39 = getelementptr inbounds %struct.key_type, %struct.key_type* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.cred*, %struct.cred** %12, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.key_user* @key_user_lookup(i64 %42, i32 %47)
  store %struct.key_user* %48, %struct.key_user** %15, align 8
  %49 = load %struct.key_user*, %struct.key_user** %15, align 8
  %50 = icmp ne %struct.key_user* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  br label %275

52:                                               ; preds = %32
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @KEY_ALLOC_NOT_IN_QUOTA, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %122, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @key_quota_root_maxkeys, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @key_quota_maxkeys, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %20, align 4
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @key_quota_root_maxbytes, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @key_quota_maxbytes, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %21, align 4
  %74 = load %struct.key_user*, %struct.key_user** %15, align 8
  %75 = getelementptr inbounds %struct.key_user, %struct.key_user* %74, i32 0, i32 2
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @KEY_ALLOC_QUOTA_OVERRUN, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %72
  %82 = load %struct.key_user*, %struct.key_user** %15, align 8
  %83 = getelementptr inbounds %struct.key_user, %struct.key_user* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %20, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %107, label %88

88:                                               ; preds = %81
  %89 = load %struct.key_user*, %struct.key_user** %15, align 8
  %90 = getelementptr inbounds %struct.key_user, %struct.key_user* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %91, %92
  %94 = load i32, i32* %21, align 4
  %95 = zext i32 %94 to i64
  %96 = icmp uge i64 %93, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %88
  %98 = load %struct.key_user*, %struct.key_user** %15, align 8
  %99 = getelementptr inbounds %struct.key_user, %struct.key_user* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %100, %101
  %103 = load %struct.key_user*, %struct.key_user** %15, align 8
  %104 = getelementptr inbounds %struct.key_user, %struct.key_user* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97, %88, %81
  br label %279

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.key_user*, %struct.key_user** %15, align 8
  %111 = getelementptr inbounds %struct.key_user, %struct.key_user* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load %struct.key_user*, %struct.key_user** %15, align 8
  %116 = getelementptr inbounds %struct.key_user, %struct.key_user* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.key_user*, %struct.key_user** %15, align 8
  %120 = getelementptr inbounds %struct.key_user, %struct.key_user* %119, i32 0, i32 2
  %121 = call i32 @spin_unlock(i32* %120)
  br label %122

122:                                              ; preds = %109, %52
  %123 = load i32, i32* @key_jar, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call %struct.key* @kmem_cache_alloc(i32 %123, i32 %124)
  store %struct.key* %125, %struct.key** %16, align 8
  %126 = load %struct.key*, %struct.key** %16, align 8
  %127 = icmp ne %struct.key* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %251

129:                                              ; preds = %122
  %130 = load i8*, i8** %9, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i8*, i8** %9, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i32 @kmemdup(i8* %133, i64 %134, i32 %135)
  %137 = load %struct.key*, %struct.key** %16, align 8
  %138 = getelementptr inbounds %struct.key, %struct.key* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.key*, %struct.key** %16, align 8
  %140 = getelementptr inbounds %struct.key, %struct.key* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %132
  br label %247

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %129
  %146 = load %struct.key*, %struct.key** %16, align 8
  %147 = getelementptr inbounds %struct.key, %struct.key* %146, i32 0, i32 15
  %148 = call i32 @atomic_set(i32* %147, i32 1)
  %149 = load %struct.key*, %struct.key** %16, align 8
  %150 = getelementptr inbounds %struct.key, %struct.key* %149, i32 0, i32 14
  %151 = call i32 @init_rwsem(i32* %150)
  %152 = load %struct.key_type*, %struct.key_type** %8, align 8
  %153 = load %struct.key*, %struct.key** %16, align 8
  %154 = getelementptr inbounds %struct.key, %struct.key* %153, i32 0, i32 13
  store %struct.key_type* %152, %struct.key_type** %154, align 8
  %155 = load %struct.key_user*, %struct.key_user** %15, align 8
  %156 = load %struct.key*, %struct.key** %16, align 8
  %157 = getelementptr inbounds %struct.key, %struct.key* %156, i32 0, i32 12
  store %struct.key_user* %155, %struct.key_user** %157, align 8
  %158 = load i64, i64* %18, align 8
  %159 = load %struct.key*, %struct.key** %16, align 8
  %160 = getelementptr inbounds %struct.key, %struct.key* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.key_type*, %struct.key_type** %8, align 8
  %162 = getelementptr inbounds %struct.key_type, %struct.key_type* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.key*, %struct.key** %16, align 8
  %165 = getelementptr inbounds %struct.key, %struct.key* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.key*, %struct.key** %16, align 8
  %168 = getelementptr inbounds %struct.key, %struct.key* %167, i32 0, i32 11
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.key*, %struct.key** %16, align 8
  %171 = getelementptr inbounds %struct.key, %struct.key* %170, i32 0, i32 10
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.key*, %struct.key** %16, align 8
  %174 = getelementptr inbounds %struct.key, %struct.key* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  %175 = load %struct.key*, %struct.key** %16, align 8
  %176 = getelementptr inbounds %struct.key, %struct.key* %175, i32 0, i32 2
  store i32 0, i32* %176, align 8
  %177 = load %struct.key*, %struct.key** %16, align 8
  %178 = getelementptr inbounds %struct.key, %struct.key* %177, i32 0, i32 8
  store i64 0, i64* %178, align 8
  %179 = load %struct.key*, %struct.key** %16, align 8
  %180 = getelementptr inbounds %struct.key, %struct.key* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i32* null, i32** %181, align 8
  %182 = load %struct.key*, %struct.key** %16, align 8
  %183 = getelementptr inbounds %struct.key, %struct.key* %182, i32 0, i32 6
  store i32* null, i32** %183, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* @KEY_ALLOC_NOT_IN_QUOTA, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %145
  %189 = load i32, i32* @KEY_FLAG_IN_QUOTA, align 4
  %190 = shl i32 1, %189
  %191 = load %struct.key*, %struct.key** %16, align 8
  %192 = getelementptr inbounds %struct.key, %struct.key* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %188, %145
  %196 = load %struct.key*, %struct.key** %16, align 8
  %197 = getelementptr inbounds %struct.key, %struct.key* %196, i32 0, i32 5
  %198 = call i32 @memset(i32* %197, i32 0, i32 4)
  %199 = load %struct.key*, %struct.key** %16, align 8
  %200 = load %struct.cred*, %struct.cred** %12, align 8
  %201 = load i64, i64* %14, align 8
  %202 = call i32 @security_key_alloc(%struct.key* %199, %struct.cred* %200, i64 %201)
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %19, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %195
  br label %214

206:                                              ; preds = %195
  %207 = load %struct.key_user*, %struct.key_user** %15, align 8
  %208 = getelementptr inbounds %struct.key_user, %struct.key_user* %207, i32 0, i32 3
  %209 = call i32 @atomic_inc(i32* %208)
  %210 = load %struct.key*, %struct.key** %16, align 8
  %211 = call i32 @key_alloc_serial(%struct.key* %210)
  br label %212

212:                                              ; preds = %279, %275, %242, %206, %31
  %213 = load %struct.key*, %struct.key** %16, align 8
  ret %struct.key* %213

214:                                              ; preds = %205
  %215 = load %struct.key*, %struct.key** %16, align 8
  %216 = getelementptr inbounds %struct.key, %struct.key* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @kfree(i32 %217)
  %219 = load i32, i32* @key_jar, align 4
  %220 = load %struct.key*, %struct.key** %16, align 8
  %221 = call i32 @kmem_cache_free(i32 %219, %struct.key* %220)
  %222 = load i64, i64* %14, align 8
  %223 = load i64, i64* @KEY_ALLOC_NOT_IN_QUOTA, align 8
  %224 = and i64 %222, %223
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %242, label %226

226:                                              ; preds = %214
  %227 = load %struct.key_user*, %struct.key_user** %15, align 8
  %228 = getelementptr inbounds %struct.key_user, %struct.key_user* %227, i32 0, i32 2
  %229 = call i32 @spin_lock(i32* %228)
  %230 = load %struct.key_user*, %struct.key_user** %15, align 8
  %231 = getelementptr inbounds %struct.key_user, %struct.key_user* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 8
  %234 = load i64, i64* %18, align 8
  %235 = load %struct.key_user*, %struct.key_user** %15, align 8
  %236 = getelementptr inbounds %struct.key_user, %struct.key_user* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = sub i64 %237, %234
  store i64 %238, i64* %236, align 8
  %239 = load %struct.key_user*, %struct.key_user** %15, align 8
  %240 = getelementptr inbounds %struct.key_user, %struct.key_user* %239, i32 0, i32 2
  %241 = call i32 @spin_unlock(i32* %240)
  br label %242

242:                                              ; preds = %226, %214
  %243 = load %struct.key_user*, %struct.key_user** %15, align 8
  %244 = call i32 @key_user_put(%struct.key_user* %243)
  %245 = load i32, i32* %19, align 4
  %246 = call %struct.key* @ERR_PTR(i32 %245)
  store %struct.key* %246, %struct.key** %16, align 8
  br label %212

247:                                              ; preds = %143
  %248 = load i32, i32* @key_jar, align 4
  %249 = load %struct.key*, %struct.key** %16, align 8
  %250 = call i32 @kmem_cache_free(i32 %248, %struct.key* %249)
  br label %251

251:                                              ; preds = %247, %128
  %252 = load i64, i64* %14, align 8
  %253 = load i64, i64* @KEY_ALLOC_NOT_IN_QUOTA, align 8
  %254 = and i64 %252, %253
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %272, label %256

256:                                              ; preds = %251
  %257 = load %struct.key_user*, %struct.key_user** %15, align 8
  %258 = getelementptr inbounds %struct.key_user, %struct.key_user* %257, i32 0, i32 2
  %259 = call i32 @spin_lock(i32* %258)
  %260 = load %struct.key_user*, %struct.key_user** %15, align 8
  %261 = getelementptr inbounds %struct.key_user, %struct.key_user* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %261, align 8
  %264 = load i64, i64* %18, align 8
  %265 = load %struct.key_user*, %struct.key_user** %15, align 8
  %266 = getelementptr inbounds %struct.key_user, %struct.key_user* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = sub i64 %267, %264
  store i64 %268, i64* %266, align 8
  %269 = load %struct.key_user*, %struct.key_user** %15, align 8
  %270 = getelementptr inbounds %struct.key_user, %struct.key_user* %269, i32 0, i32 2
  %271 = call i32 @spin_unlock(i32* %270)
  br label %272

272:                                              ; preds = %256, %251
  %273 = load %struct.key_user*, %struct.key_user** %15, align 8
  %274 = call i32 @key_user_put(%struct.key_user* %273)
  br label %275

275:                                              ; preds = %272, %51
  %276 = load i32, i32* @ENOMEM, align 4
  %277 = sub nsw i32 0, %276
  %278 = call %struct.key* @ERR_PTR(i32 %277)
  store %struct.key* %278, %struct.key** %16, align 8
  br label %212

279:                                              ; preds = %107
  %280 = load %struct.key_user*, %struct.key_user** %15, align 8
  %281 = getelementptr inbounds %struct.key_user, %struct.key_user* %280, i32 0, i32 2
  %282 = call i32 @spin_unlock(i32* %281)
  %283 = load %struct.key_user*, %struct.key_user** %15, align 8
  %284 = call i32 @key_user_put(%struct.key_user* %283)
  %285 = load i32, i32* @EDQUOT, align 4
  %286 = sub nsw i32 0, %285
  %287 = call %struct.key* @ERR_PTR(i32 %286)
  store %struct.key* %287, %struct.key** %16, align 8
  br label %212
}

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.key_user* @key_user_lookup(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.key* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @security_key_alloc(%struct.key*, %struct.cred*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @key_alloc_serial(%struct.key*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.key*) #1

declare dso_local i32 @key_user_put(%struct.key_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
