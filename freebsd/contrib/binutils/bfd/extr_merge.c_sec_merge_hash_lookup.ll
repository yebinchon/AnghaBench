; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_sec_merge_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_sec_merge_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_merge_hash_entry = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, %struct.bfd_hash_entry* }
%struct.bfd_hash_entry = type { i32 }
%struct.sec_merge_hash = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, %struct.bfd_hash_entry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sec_merge_hash_entry* (%struct.sec_merge_hash*, i8*, i32, i64)* @sec_merge_hash_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sec_merge_hash_entry* @sec_merge_hash_lookup(%struct.sec_merge_hash* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.sec_merge_hash_entry*, align 8
  %6 = alloca %struct.sec_merge_hash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sec_merge_hash_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sec_merge_hash* %0, %struct.sec_merge_hash** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %19 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %136

22:                                               ; preds = %4
  %23 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %24 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %34, %27
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %10, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 %36, 17
  %38 = add i32 %35, %37
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = lshr i64 %42, 2
  %44 = load i64, i64* %11, align 8
  %45 = xor i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = shl i32 %50, 17
  %52 = add i32 %49, %51
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %11, align 8
  br label %126

56:                                               ; preds = %22
  br label %57

57:                                               ; preds = %110, %56
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %61 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %15, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %58

77:                                               ; preds = %72, %58
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %80 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %113

84:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %107, %84
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %88 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = shl i32 %97, 17
  %99 = add i32 %96, %98
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = lshr i64 %103, 2
  %105 = load i64, i64* %11, align 8
  %106 = xor i64 %105, %104
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %85

110:                                              ; preds = %85
  %111 = load i32, i32* %14, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %57

113:                                              ; preds = %83
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = shl i32 %115, 17
  %117 = add i32 %114, %116
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %11, align 8
  %121 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %122 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = mul i32 %124, %123
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %113, %48
  %127 = load i64, i64* %11, align 8
  %128 = lshr i64 %127, 2
  %129 = load i64, i64* %11, align 8
  %130 = xor i64 %129, %128
  store i64 %130, i64* %11, align 8
  %131 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %132 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %166

136:                                              ; preds = %4
  store i32 0, i32* %15, align 4
  br label %137

137:                                              ; preds = %159, %136
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %140 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %137
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %10, align 8
  %146 = load i8, i8* %144, align 1
  %147 = zext i8 %146 to i32
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = shl i32 %149, 17
  %151 = add i32 %148, %150
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %11, align 8
  %155 = load i64, i64* %11, align 8
  %156 = lshr i64 %155, 2
  %157 = load i64, i64* %11, align 8
  %158 = xor i64 %157, %156
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %143
  %160 = load i32, i32* %15, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %137

162:                                              ; preds = %137
  %163 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %164 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %162, %126
  %167 = load i64, i64* %11, align 8
  %168 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %169 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = urem i64 %167, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %16, align 4
  %174 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %175 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %177, i64 %179
  %181 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %180, align 8
  %182 = bitcast %struct.bfd_hash_entry* %181 to %struct.sec_merge_hash_entry*
  store %struct.sec_merge_hash_entry* %182, %struct.sec_merge_hash_entry** %13, align 8
  br label %183

183:                                              ; preds = %226, %166
  %184 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %185 = icmp ne %struct.sec_merge_hash_entry* %184, null
  br i1 %185, label %186, label %232

186:                                              ; preds = %183
  %187 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %188 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %11, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %186
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %196 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %193
  %200 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %201 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = load i32, i32* %14, align 4
  %206 = call i64 @memcmp(i8* %203, i8* %204, i32 %205)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %199
  %209 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %210 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %208
  %215 = load i64, i64* %9, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %219 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  %220 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %221 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %217, %214
  br label %232

223:                                              ; preds = %208
  %224 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  store %struct.sec_merge_hash_entry* %224, %struct.sec_merge_hash_entry** %5, align 8
  br label %281

225:                                              ; preds = %199, %193, %186
  br label %226

226:                                              ; preds = %225
  %227 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %228 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  %230 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %229, align 8
  %231 = bitcast %struct.bfd_hash_entry* %230 to %struct.sec_merge_hash_entry*
  store %struct.sec_merge_hash_entry* %231, %struct.sec_merge_hash_entry** %13, align 8
  br label %183

232:                                              ; preds = %222, %183
  %233 = load i64, i64* %9, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  store %struct.sec_merge_hash_entry* null, %struct.sec_merge_hash_entry** %5, align 8
  br label %281

236:                                              ; preds = %232
  %237 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %238 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %237, i32 0, i32 1
  %239 = load i8*, i8** %7, align 8
  %240 = call i64 @sec_merge_hash_newfunc(i32* null, %struct.TYPE_4__* %238, i8* %239)
  %241 = inttoptr i64 %240 to %struct.sec_merge_hash_entry*
  store %struct.sec_merge_hash_entry* %241, %struct.sec_merge_hash_entry** %13, align 8
  %242 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %243 = icmp eq %struct.sec_merge_hash_entry* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store %struct.sec_merge_hash_entry* null, %struct.sec_merge_hash_entry** %5, align 8
  br label %281

245:                                              ; preds = %236
  %246 = load i8*, i8** %7, align 8
  %247 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %248 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  store i8* %246, i8** %249, align 8
  %250 = load i64, i64* %11, align 8
  %251 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %252 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  store i64 %250, i64* %253, align 8
  %254 = load i32, i32* %14, align 4
  %255 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %256 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %259 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %261 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %263, i64 %265
  %267 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %266, align 8
  %268 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %269 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 2
  store %struct.bfd_hash_entry* %267, %struct.bfd_hash_entry** %270, align 8
  %271 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  %272 = bitcast %struct.sec_merge_hash_entry* %271 to %struct.bfd_hash_entry*
  %273 = load %struct.sec_merge_hash*, %struct.sec_merge_hash** %6, align 8
  %274 = getelementptr inbounds %struct.sec_merge_hash, %struct.sec_merge_hash* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %275, align 8
  %277 = load i32, i32* %16, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %276, i64 %278
  store %struct.bfd_hash_entry* %272, %struct.bfd_hash_entry** %279, align 8
  %280 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %13, align 8
  store %struct.sec_merge_hash_entry* %280, %struct.sec_merge_hash_entry** %5, align 8
  br label %281

281:                                              ; preds = %245, %244, %235, %223
  %282 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  ret %struct.sec_merge_hash_entry* %282
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @sec_merge_hash_newfunc(i32*, %struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
