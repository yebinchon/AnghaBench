; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i64, i8*, %struct.bfd_hash_entry* }
%struct.bfd_hash_table = type { i64, i32, i32, %struct.bfd_hash_entry**, i64, %struct.bfd_hash_entry* (i32*, %struct.bfd_hash_table*, i8*)* }
%struct.objalloc = type { i32 }

@bfd_error_no_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_hash_entry* @bfd_hash_lookup(%struct.bfd_hash_table* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfd_hash_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.bfd_hash_entry**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.bfd_hash_entry*, align 8
  %22 = alloca %struct.bfd_hash_entry*, align 8
  %23 = alloca i32, align 4
  store %struct.bfd_hash_table* %0, %struct.bfd_hash_table** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %31, %4
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %10, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = shl i32 %33, 17
  %35 = add i32 %32, %34
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = lshr i64 %39, 2
  %41 = load i64, i64* %11, align 8
  %42 = xor i64 %41, %40
  store i64 %42, i64* %11, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub nsw i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = shl i32 %52, 17
  %54 = add i32 %51, %53
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = lshr i64 %58, 2
  %60 = load i64, i64* %11, align 8
  %61 = xor i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %64 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = urem i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %69 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %68, i32 0, i32 3
  %70 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %70, i64 %72
  %74 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %73, align 8
  store %struct.bfd_hash_entry* %74, %struct.bfd_hash_entry** %13, align 8
  br label %75

75:                                               ; preds = %94, %43
  %76 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %77 = icmp ne %struct.bfd_hash_entry* %76, null
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %80 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %86 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i64 @strcmp(i8* %87, i8* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  store %struct.bfd_hash_entry* %92, %struct.bfd_hash_entry** %5, align 8
  br label %297

93:                                               ; preds = %84, %78
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %96 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %95, i32 0, i32 2
  %97 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %96, align 8
  store %struct.bfd_hash_entry* %97, %struct.bfd_hash_entry** %13, align 8
  br label %75

98:                                               ; preds = %75
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %5, align 8
  br label %297

102:                                              ; preds = %98
  %103 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %104 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %103, i32 0, i32 5
  %105 = load %struct.bfd_hash_entry* (i32*, %struct.bfd_hash_table*, i8*)*, %struct.bfd_hash_entry* (i32*, %struct.bfd_hash_table*, i8*)** %104, align 8
  %106 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call %struct.bfd_hash_entry* %105(i32* null, %struct.bfd_hash_table* %106, i8* %107)
  store %struct.bfd_hash_entry* %108, %struct.bfd_hash_entry** %13, align 8
  %109 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %110 = icmp eq %struct.bfd_hash_entry* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %5, align 8
  br label %297

112:                                              ; preds = %102
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %117 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.objalloc*
  %120 = load i32, i32* %14, align 4
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = call i8* @objalloc_alloc(%struct.objalloc* %119, i64 %122)
  store i8* %123, i8** %16, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %115
  %127 = load i32, i32* @bfd_error_no_memory, align 4
  %128 = call i32 @bfd_set_error(i32 %127)
  store %struct.bfd_hash_entry* null, %struct.bfd_hash_entry** %5, align 8
  br label %297

129:                                              ; preds = %115
  %130 = load i8*, i8** %16, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* %14, align 4
  %133 = add i32 %132, 1
  %134 = call i32 @memcpy(i8* %130, i8* %131, i32 %133)
  %135 = load i8*, i8** %16, align 8
  store i8* %135, i8** %7, align 8
  br label %136

136:                                              ; preds = %129, %112
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %139 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %142 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %144 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %143, i32 0, i32 3
  %145 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %145, i64 %147
  %149 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %148, align 8
  %150 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %151 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %150, i32 0, i32 2
  store %struct.bfd_hash_entry* %149, %struct.bfd_hash_entry** %151, align 8
  %152 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  %153 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %154 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %153, i32 0, i32 3
  %155 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %155, i64 %157
  store %struct.bfd_hash_entry* %152, %struct.bfd_hash_entry** %158, align 8
  %159 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %160 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %164 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %295, label %167

167:                                              ; preds = %136
  %168 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %169 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %173 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %174, 3
  %176 = udiv i64 %175, 4
  %177 = icmp ugt i64 %171, %176
  br i1 %177, label %178, label %295

178:                                              ; preds = %167
  %179 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %180 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i64 @higher_prime_number(i32 %182)
  store i64 %183, i64* %17, align 8
  %184 = load i64, i64* %17, align 8
  %185 = mul i64 %184, 8
  store i64 %185, i64* %20, align 8
  %186 = load i64, i64* %17, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %178
  %189 = load i64, i64* %20, align 8
  %190 = udiv i64 %189, 8
  %191 = load i64, i64* %17, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %188, %178
  %194 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %195 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %194, i32 0, i32 2
  store i32 1, i32* %195, align 4
  %196 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  store %struct.bfd_hash_entry* %196, %struct.bfd_hash_entry** %5, align 8
  br label %297

197:                                              ; preds = %188
  %198 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %199 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.objalloc*
  %202 = load i64, i64* %20, align 8
  %203 = call i8* @objalloc_alloc(%struct.objalloc* %201, i64 %202)
  %204 = bitcast i8* %203 to %struct.bfd_hash_entry**
  store %struct.bfd_hash_entry** %204, %struct.bfd_hash_entry*** %18, align 8
  %205 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %18, align 8
  %206 = ptrtoint %struct.bfd_hash_entry** %205 to i32
  %207 = load i64, i64* %20, align 8
  %208 = call i32 @memset(i32 %206, i32 0, i64 %207)
  store i32 0, i32* %19, align 4
  br label %209

209:                                              ; preds = %285, %197
  %210 = load i32, i32* %19, align 4
  %211 = zext i32 %210 to i64
  %212 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %213 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %211, %214
  br i1 %215, label %216, label %288

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %256, %216
  %218 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %219 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %218, i32 0, i32 3
  %220 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %219, align 8
  %221 = load i32, i32* %19, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %220, i64 %222
  %224 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %223, align 8
  %225 = icmp ne %struct.bfd_hash_entry* %224, null
  br i1 %225, label %226, label %284

226:                                              ; preds = %217
  %227 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %228 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %227, i32 0, i32 3
  %229 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %228, align 8
  %230 = load i32, i32* %19, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %229, i64 %231
  %233 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %232, align 8
  store %struct.bfd_hash_entry* %233, %struct.bfd_hash_entry** %21, align 8
  %234 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %21, align 8
  store %struct.bfd_hash_entry* %234, %struct.bfd_hash_entry** %22, align 8
  br label %235

235:                                              ; preds = %252, %226
  %236 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %22, align 8
  %237 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %236, i32 0, i32 2
  %238 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %237, align 8
  %239 = icmp ne %struct.bfd_hash_entry* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %22, align 8
  %242 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %241, i32 0, i32 2
  %243 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %242, align 8
  %244 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %21, align 8
  %247 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %245, %248
  br label %250

250:                                              ; preds = %240, %235
  %251 = phi i1 [ false, %235 ], [ %249, %240 ]
  br i1 %251, label %252, label %256

252:                                              ; preds = %250
  %253 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %22, align 8
  %254 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %253, i32 0, i32 2
  %255 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %254, align 8
  store %struct.bfd_hash_entry* %255, %struct.bfd_hash_entry** %22, align 8
  br label %235

256:                                              ; preds = %250
  %257 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %22, align 8
  %258 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %257, i32 0, i32 2
  %259 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %258, align 8
  %260 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %261 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %260, i32 0, i32 3
  %262 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %261, align 8
  %263 = load i32, i32* %19, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %262, i64 %264
  store %struct.bfd_hash_entry* %259, %struct.bfd_hash_entry** %265, align 8
  %266 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %21, align 8
  %267 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %17, align 8
  %270 = urem i64 %268, %269
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %23, align 4
  %272 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %18, align 8
  %273 = load i32, i32* %23, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %272, i64 %274
  %276 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %275, align 8
  %277 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %22, align 8
  %278 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %277, i32 0, i32 2
  store %struct.bfd_hash_entry* %276, %struct.bfd_hash_entry** %278, align 8
  %279 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %21, align 8
  %280 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %18, align 8
  %281 = load i32, i32* %23, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %280, i64 %282
  store %struct.bfd_hash_entry* %279, %struct.bfd_hash_entry** %283, align 8
  br label %217

284:                                              ; preds = %217
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %19, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %19, align 4
  br label %209

288:                                              ; preds = %209
  %289 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %18, align 8
  %290 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %291 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %290, i32 0, i32 3
  store %struct.bfd_hash_entry** %289, %struct.bfd_hash_entry*** %291, align 8
  %292 = load i64, i64* %17, align 8
  %293 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %294 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  br label %295

295:                                              ; preds = %288, %167, %136
  %296 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %13, align 8
  store %struct.bfd_hash_entry* %296, %struct.bfd_hash_entry** %5, align 8
  br label %297

297:                                              ; preds = %295, %193, %126, %111, %101, %91
  %298 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  ret %struct.bfd_hash_entry* %298
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @objalloc_alloc(%struct.objalloc*, i64) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @higher_prime_number(i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
