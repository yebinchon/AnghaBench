; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_lineno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i8*, i8*, i64, i32, i32, i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@ieee_nn_record = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ieee_be_record_enum = common dso_local global i64 0, align 8
@ieee_atn_record_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64)* @ieee_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_lineno(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee_handle*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ieee_handle*
  store %struct.ieee_handle* %12, %struct.ieee_handle** %10, align 8
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %20 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %279

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %26 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %279

29:                                               ; preds = %23
  %30 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %31 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %30, i32 0, i32 7
  %32 = call i32 @ieee_buffer_emptyp(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %36 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %37 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %36, i32 0, i32 7
  %38 = call i32 @ieee_change_buffer(%struct.ieee_handle* %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %5, align 4
  br label %291

42:                                               ; preds = %34
  br label %104

43:                                               ; preds = %29
  %44 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %45 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %48 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %50 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %54 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %55 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %54, i32 0, i32 7
  %56 = call i32 @ieee_change_buffer(%struct.ieee_handle* %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %43
  %59 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %60 = load i64, i64* @ieee_bb_record_enum, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ieee_write_byte(%struct.ieee_handle* %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %58
  %65 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %66 = call i32 @ieee_write_byte(%struct.ieee_handle* %65, i32 5)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %70 = call i32 @ieee_write_number(%struct.ieee_handle* %69, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %74 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %75 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @ieee_write_id(%struct.ieee_handle* %73, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %81 = load i64, i64* @ieee_nn_record, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ieee_write_byte(%struct.ieee_handle* %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %87 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %88 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ieee_write_number(%struct.ieee_handle* %86, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %94 = call i32 @ieee_write_id(%struct.ieee_handle* %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92, %85, %79, %72, %68, %64, %58, %43
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %291

98:                                               ; preds = %92
  %99 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %100 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %103 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %98, %42
  %105 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %106 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %109 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strcmp(i8* %107, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %234

113:                                              ; preds = %104
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %115 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %118 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %117, i32 0, i32 5
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %116, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %113
  %123 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %124 = load i64, i64* @ieee_be_record_enum, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @ieee_write_byte(%struct.ieee_handle* %123, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %5, align 4
  br label %291

130:                                              ; preds = %122
  %131 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %132 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %135 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strcmp(i8* %133, i8* %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %130
  %140 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %141 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %144 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %146 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %150 = load i64, i64* @ieee_nn_record, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @ieee_write_byte(%struct.ieee_handle* %149, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %139
  %155 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %156 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %157 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ieee_write_number(%struct.ieee_handle* %155, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %163 = call i32 @ieee_write_id(%struct.ieee_handle* %162, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %161, %154, %139
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %5, align 4
  br label %291

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %130
  br label %169

169:                                              ; preds = %168, %113
  %170 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %171 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %174 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @strcmp(i8* %172, i8* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %228

178:                                              ; preds = %169
  %179 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %180 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %183 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %185 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %189 = load i64, i64* @ieee_bb_record_enum, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @ieee_write_byte(%struct.ieee_handle* %188, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %225

193:                                              ; preds = %178
  %194 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %195 = call i32 @ieee_write_byte(%struct.ieee_handle* %194, i32 5)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %199 = call i32 @ieee_write_number(%struct.ieee_handle* %198, i32 0)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %197
  %202 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %203 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %204 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @ieee_write_id(%struct.ieee_handle* %202, i8* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %201
  %209 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %210 = load i64, i64* @ieee_nn_record, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @ieee_write_byte(%struct.ieee_handle* %209, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %208
  %215 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %216 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %217 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ieee_write_number(%struct.ieee_handle* %215, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %223 = call i32 @ieee_write_id(%struct.ieee_handle* %222, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221, %214, %208, %201, %197, %193, %178
  %226 = load i32, i32* @FALSE, align 4
  store i32 %226, i32* %5, align 4
  br label %291

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %169
  %229 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %230 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %233 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %232, i32 0, i32 5
  store i8* %231, i8** %233, align 8
  br label %234

234:                                              ; preds = %228, %104
  %235 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %236 = load i64, i64* @ieee_atn_record_enum, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %235, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %276

240:                                              ; preds = %234
  %241 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %242 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %243 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @ieee_write_number(%struct.ieee_handle* %241, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %276

247:                                              ; preds = %240
  %248 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %249 = call i32 @ieee_write_number(%struct.ieee_handle* %248, i32 0)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %276

251:                                              ; preds = %247
  %252 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %253 = call i32 @ieee_write_number(%struct.ieee_handle* %252, i32 7)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %276

255:                                              ; preds = %251
  %256 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %257 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %258 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @ieee_write_number(%struct.ieee_handle* %256, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %255
  %263 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %264 = call i32 @ieee_write_number(%struct.ieee_handle* %263, i32 0)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %262
  %267 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %268 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %269 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %272 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @ieee_write_asn(%struct.ieee_handle* %267, i32 %270, i64 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %266, %262, %255, %251, %247, %240, %234
  %277 = load i32, i32* @FALSE, align 4
  store i32 %277, i32* %5, align 4
  br label %291

278:                                              ; preds = %266
  br label %279

279:                                              ; preds = %278, %23, %4
  %280 = load i8*, i8** %7, align 8
  %281 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %282 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %281, i32 0, i32 1
  store i8* %280, i8** %282, align 8
  %283 = load i64, i64* %8, align 8
  %284 = trunc i64 %283 to i32
  %285 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %286 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %285, i32 0, i32 6
  store i32 %284, i32* %286, align 8
  %287 = load i64, i64* %9, align 8
  %288 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %289 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %288, i32 0, i32 2
  store i64 %287, i64* %289, align 8
  %290 = load i32, i32* @TRUE, align 4
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %279, %276, %225, %165, %128, %96, %40
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
