; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_decode_frame_entry_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_decode_frame_entry_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i8*, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dwarf2_cie = type { i8*, i32, i8*, i32, i64, i32, i8*, i64 }
%struct.dwarf2_fde = type { i8*, i8*, %struct.TYPE_4__*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64 }

@DW64_CIE_ID = common dso_local global i64 0, align 8
@DW_CIE_ID = common dso_local global i64 0, align 8
@DW_CIE_VERSION = common dso_local global i64 0, align 8
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.comp_unit*, i8*, i32)* @decode_frame_entry_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_frame_entry_1(%struct.comp_unit* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comp_unit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dwarf2_cie*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.dwarf2_fde*, align 8
  %19 = alloca i64, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %22 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @read_initial_length(i32 %23, i8* %24, i32* %10)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %36 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %39 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = icmp ugt i8* %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %424

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8*, i8** %14, align 8
  store i8* %49, i8** %4, align 8
  br label %424

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 12
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i64 0, i64* %12, align 8
  br label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @DW64_CIE_ID, align 8
  store i64 %61, i64* %12, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @DW_CIE_ID, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %70 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @read_8_bytes(i32 %71, i8* %72)
  store i64 %73, i64* %13, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %75, i8** %8, align 8
  br label %84

76:                                               ; preds = %65
  %77 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %78 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @read_4_bytes(i32 %79, i8* %80)
  store i64 %81, i64* %13, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %76, %68
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %292

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %91 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %89 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  store i64 %95, i64* %13, align 8
  %96 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i8* @find_cie(%struct.comp_unit* %96, i64 %97)
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i8*, i8** %14, align 8
  store i8* %101, i8** %4, align 8
  br label %424

102:                                              ; preds = %88
  %103 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %104 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i64 @obstack_alloc(i32* %106, i32 64)
  %108 = inttoptr i64 %107 to %struct.dwarf2_cie*
  store %struct.dwarf2_cie* %108, %struct.dwarf2_cie** %15, align 8
  %109 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %110 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %109, i32 0, i32 0
  store i8* null, i8** %110, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %113 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  %114 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %115 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @encoding_for_size(i32 %116)
  %118 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %119 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %121 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @read_1_byte(i32 %122, i8* %123)
  %125 = load i64, i64* @DW_CIE_VERSION, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %102
  store i8* null, i8** %4, align 8
  br label %424

128:                                              ; preds = %102
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %8, align 8
  %131 = load i8*, i8** %8, align 8
  store i8* %131, i8** %16, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %8, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 101
  br i1 %142, label %143, label %157

143:                                              ; preds = %128
  %144 = load i8*, i8** %16, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 104
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %151 = call i32 @TYPE_LENGTH(i32 %150)
  %152 = load i8*, i8** %8, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %8, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %156, i8** %16, align 8
  br label %157

157:                                              ; preds = %149, %143, %128
  %158 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %159 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %8, align 8
  %162 = call i8* @read_unsigned_leb128(i32 %160, i8* %161, i32* %10)
  %163 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %164 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %163, i32 0, i32 6
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %8, align 8
  %169 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %170 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @read_signed_leb128(i32 %171, i8* %172, i32* %10)
  %174 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %175 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i8*, i8** %8, align 8
  %178 = zext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %8, align 8
  %180 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %181 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = call i64 @read_1_byte(i32 %182, i8* %183)
  %185 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %186 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8* %188, i8** %8, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 122
  %193 = zext i1 %192 to i32
  %194 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %195 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  %196 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %197 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %223

200:                                              ; preds = %157
  %201 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %202 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = call i8* @read_unsigned_leb128(i32 %203, i8* %204, i32* %10)
  %206 = ptrtoint i8* %205 to i64
  store i64 %206, i64* %17, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i8*, i8** %8, align 8
  %209 = zext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %8, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load i8*, i8** %14, align 8
  %213 = icmp ugt i8* %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %200
  store i8* null, i8** %4, align 8
  br label %424

215:                                              ; preds = %200
  %216 = load i8*, i8** %8, align 8
  %217 = load i64, i64* %17, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %220 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** %16, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %16, align 8
  br label %223

223:                                              ; preds = %215, %157
  br label %224

224:                                              ; preds = %281, %223
  %225 = load i8*, i8** %16, align 8
  %226 = load i8, i8* %225, align 1
  %227 = icmp ne i8 %226, 0
  br i1 %227, label %228, label %282

228:                                              ; preds = %224
  %229 = load i8*, i8** %16, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 76
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i8*, i8** %8, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %8, align 8
  %236 = load i8*, i8** %16, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %16, align 8
  br label %281

238:                                              ; preds = %228
  %239 = load i8*, i8** %16, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 82
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load i8*, i8** %8, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %8, align 8
  %246 = load i8, i8* %244, align 1
  %247 = sext i8 %246 to i32
  %248 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %249 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 8
  %250 = load i8*, i8** %16, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %16, align 8
  br label %280

252:                                              ; preds = %238
  %253 = load i8*, i8** %16, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 80
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %8, align 8
  %260 = load i8, i8* %258, align 1
  %261 = sext i8 %260 to i32
  %262 = call i32 @size_of_encoded_value(i32 %261)
  %263 = load i8*, i8** %8, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8* %265, i8** %8, align 8
  %266 = load i8*, i8** %16, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %16, align 8
  br label %279

268:                                              ; preds = %252
  %269 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %270 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i8*, i8** %14, align 8
  store i8* %274, i8** %4, align 8
  br label %424

275:                                              ; preds = %268
  %276 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %277 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %8, align 8
  br label %282

279:                                              ; preds = %257
  br label %280

280:                                              ; preds = %279, %243
  br label %281

281:                                              ; preds = %280, %233
  br label %224

282:                                              ; preds = %275, %224
  %283 = load i8*, i8** %8, align 8
  %284 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %285 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %288 = getelementptr inbounds %struct.dwarf2_cie, %struct.dwarf2_cie* %287, i32 0, i32 2
  store i8* %286, i8** %288, align 8
  %289 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %290 = load %struct.dwarf2_cie*, %struct.dwarf2_cie** %15, align 8
  %291 = call i32 @add_cie(%struct.comp_unit* %289, %struct.dwarf2_cie* %290)
  br label %422

292:                                              ; preds = %84
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %312

295:                                              ; preds = %292
  %296 = load i8*, i8** %8, align 8
  %297 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %298 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = ptrtoint i8* %296 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  %303 = load i64, i64* %13, align 8
  %304 = sub nsw i64 %302, %303
  store i64 %304, i64* %13, align 8
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 8, i32 4
  %309 = sext i32 %308 to i64
  %310 = load i64, i64* %13, align 8
  %311 = sub nsw i64 %310, %309
  store i64 %311, i64* %13, align 8
  br label %312

312:                                              ; preds = %295, %292
  %313 = load i64, i64* %13, align 8
  %314 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %315 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = icmp sge i64 %313, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store i8* null, i8** %4, align 8
  br label %424

320:                                              ; preds = %312
  %321 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %322 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %321, i32 0, i32 3
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = call i64 @obstack_alloc(i32* %324, i32 40)
  %326 = inttoptr i64 %325 to %struct.dwarf2_fde*
  store %struct.dwarf2_fde* %326, %struct.dwarf2_fde** %18, align 8
  %327 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %328 = load i64, i64* %13, align 8
  %329 = call i8* @find_cie(%struct.comp_unit* %327, i64 %328)
  %330 = bitcast i8* %329 to %struct.TYPE_4__*
  %331 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %332 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %331, i32 0, i32 2
  store %struct.TYPE_4__* %330, %struct.TYPE_4__** %332, align 8
  %333 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %334 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %333, i32 0, i32 2
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %334, align 8
  %336 = icmp eq %struct.TYPE_4__* %335, null
  br i1 %336, label %337, label %352

337:                                              ; preds = %320
  %338 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %339 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %340 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = load i64, i64* %13, align 8
  %343 = getelementptr inbounds i8, i8* %341, i64 %342
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @decode_frame_entry(%struct.comp_unit* %338, i8* %343, i32 %344)
  %346 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %347 = load i64, i64* %13, align 8
  %348 = call i8* @find_cie(%struct.comp_unit* %346, i64 %347)
  %349 = bitcast i8* %348 to %struct.TYPE_4__*
  %350 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %351 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %350, i32 0, i32 2
  store %struct.TYPE_4__* %349, %struct.TYPE_4__** %351, align 8
  br label %352

352:                                              ; preds = %337, %320
  %353 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %354 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %353, i32 0, i32 2
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %354, align 8
  %356 = icmp ne %struct.TYPE_4__* %355, null
  %357 = zext i1 %356 to i32
  %358 = call i32 @gdb_assert(i32 %357)
  %359 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %360 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %361 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %360, i32 0, i32 2
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i8*, i8** %8, align 8
  %366 = call i8* @read_encoded_value(%struct.comp_unit* %359, i32 %364, i8* %365, i32* %10)
  %367 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %368 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %367, i32 0, i32 4
  store i8* %366, i8** %368, align 8
  %369 = load i32, i32* %10, align 4
  %370 = load i8*, i8** %8, align 8
  %371 = zext i32 %369 to i64
  %372 = getelementptr inbounds i8, i8* %370, i64 %371
  store i8* %372, i8** %8, align 8
  %373 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %374 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %375 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %374, i32 0, i32 2
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, 15
  %380 = load i8*, i8** %8, align 8
  %381 = call i8* @read_encoded_value(%struct.comp_unit* %373, i32 %379, i8* %380, i32* %10)
  %382 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %383 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %382, i32 0, i32 3
  store i8* %381, i8** %383, align 8
  %384 = load i32, i32* %10, align 4
  %385 = load i8*, i8** %8, align 8
  %386 = zext i32 %384 to i64
  %387 = getelementptr inbounds i8, i8* %385, i64 %386
  store i8* %387, i8** %8, align 8
  %388 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %389 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %388, i32 0, i32 2
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %412

394:                                              ; preds = %352
  %395 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %396 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = load i8*, i8** %8, align 8
  %399 = call i8* @read_unsigned_leb128(i32 %397, i8* %398, i32* %10)
  %400 = ptrtoint i8* %399 to i64
  store i64 %400, i64* %19, align 8
  %401 = load i32, i32* %10, align 4
  %402 = zext i32 %401 to i64
  %403 = load i64, i64* %19, align 8
  %404 = add nsw i64 %402, %403
  %405 = load i8*, i8** %8, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 %404
  store i8* %406, i8** %8, align 8
  %407 = load i8*, i8** %8, align 8
  %408 = load i8*, i8** %14, align 8
  %409 = icmp ugt i8* %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %394
  store i8* null, i8** %4, align 8
  br label %424

411:                                              ; preds = %394
  br label %412

412:                                              ; preds = %411, %352
  %413 = load i8*, i8** %8, align 8
  %414 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %415 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %414, i32 0, i32 0
  store i8* %413, i8** %415, align 8
  %416 = load i8*, i8** %14, align 8
  %417 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %418 = getelementptr inbounds %struct.dwarf2_fde, %struct.dwarf2_fde* %417, i32 0, i32 1
  store i8* %416, i8** %418, align 8
  %419 = load %struct.comp_unit*, %struct.comp_unit** %5, align 8
  %420 = load %struct.dwarf2_fde*, %struct.dwarf2_fde** %18, align 8
  %421 = call i32 @add_fde(%struct.comp_unit* %419, %struct.dwarf2_fde* %420)
  br label %422

422:                                              ; preds = %412, %282
  %423 = load i8*, i8** %14, align 8
  store i8* %423, i8** %4, align 8
  br label %424

424:                                              ; preds = %422, %410, %319, %273, %214, %127, %100, %48, %44
  %425 = load i8*, i8** %4, align 8
  ret i8* %425
}

declare dso_local i32 @read_initial_length(i32, i8*, i32*) #1

declare dso_local i64 @read_8_bytes(i32, i8*) #1

declare dso_local i64 @read_4_bytes(i32, i8*) #1

declare dso_local i8* @find_cie(%struct.comp_unit*, i64) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @encoding_for_size(i32) #1

declare dso_local i64 @read_1_byte(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i8* @read_unsigned_leb128(i32, i8*, i32*) #1

declare dso_local i32 @read_signed_leb128(i32, i8*, i32*) #1

declare dso_local i32 @size_of_encoded_value(i32) #1

declare dso_local i32 @add_cie(%struct.comp_unit*, %struct.dwarf2_cie*) #1

declare dso_local i32 @decode_frame_entry(%struct.comp_unit*, i8*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i8* @read_encoded_value(%struct.comp_unit*, i32, i8*, i32*) #1

declare dso_local i32 @add_fde(%struct.comp_unit*, %struct.dwarf2_fde*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
