; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_modify_program_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_modify_program_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.elf_obj_tdata = type { i32, %struct.elf_segment_map*, %struct.TYPE_7__* }
%struct.elf_segment_map = type { i64, i32*, %struct.elf_segment_map* }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32 }
%struct.spu_link_hash_table = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@PF_OVERLAY = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @spu_elf_modify_program_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_elf_modify_program_headers(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca %struct.elf_obj_tdata*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.spu_link_hash_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.elf_segment_map*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %20 = icmp eq %struct.bfd_link_info* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %305

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %24)
  store %struct.elf_backend_data* %25, %struct.elf_backend_data** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call %struct.elf_obj_tdata* @elf_tdata(i32* %26)
  store %struct.elf_obj_tdata* %27, %struct.elf_obj_tdata** %7, align 8
  %28 = load %struct.elf_obj_tdata*, %struct.elf_obj_tdata** %7, align 8
  %29 = getelementptr inbounds %struct.elf_obj_tdata, %struct.elf_obj_tdata* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %8, align 8
  %31 = load %struct.elf_obj_tdata*, %struct.elf_obj_tdata** %7, align 8
  %32 = getelementptr inbounds %struct.elf_obj_tdata, %struct.elf_obj_tdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %35 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = udiv i32 %33, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %41 = call %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info* %40)
  store %struct.spu_link_hash_table* %41, %struct.spu_link_hash_table** %10, align 8
  %42 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %43 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %124

46:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call %struct.elf_obj_tdata* @elf_tdata(i32* %47)
  %49 = getelementptr inbounds %struct.elf_obj_tdata, %struct.elf_obj_tdata* %48, i32 0, i32 1
  %50 = load %struct.elf_segment_map*, %struct.elf_segment_map** %49, align 8
  store %struct.elf_segment_map* %50, %struct.elf_segment_map** %13, align 8
  br label %51

51:                                               ; preds = %117, %46
  %52 = load %struct.elf_segment_map*, %struct.elf_segment_map** %13, align 8
  %53 = icmp ne %struct.elf_segment_map* %52, null
  br i1 %53, label %54, label %123

54:                                               ; preds = %51
  %55 = load %struct.elf_segment_map*, %struct.elf_segment_map** %13, align 8
  %56 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %54
  %60 = load %struct.elf_segment_map*, %struct.elf_segment_map** %13, align 8
  %61 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_8__* @spu_elf_section_data(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %59
  %70 = load i32, i32* @PF_OVERLAY, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %70
  store i32 %77, i32* %75, align 4
  %78 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %79 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %69
  %83 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %84 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %82
  %90 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %91 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %15, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sub i32 %95, 1
  %97 = mul i32 %96, 16
  %98 = add i32 %97, 8
  store i32 %98, i32* %16, align 4
  %99 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %100 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load i32, i32* %12, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @bfd_put_32(i32 %103, i32 %109, i32* %113)
  br label %115

115:                                              ; preds = %89, %82, %69
  br label %116

116:                                              ; preds = %115, %59, %54
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  %120 = load %struct.elf_segment_map*, %struct.elf_segment_map** %13, align 8
  %121 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %120, i32 0, i32 2
  %122 = load %struct.elf_segment_map*, %struct.elf_segment_map** %121, align 8
  store %struct.elf_segment_map* %122, %struct.elf_segment_map** %13, align 8
  br label %51

123:                                              ; preds = %51
  br label %124

124:                                              ; preds = %123, %23
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %249, %124
  %127 = load i32, i32* %12, align 4
  %128 = add i32 %127, -1
  store i32 %128, i32* %12, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %250

130:                                              ; preds = %126
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PT_LOAD, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %249

139:                                              ; preds = %130
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 0, %145
  %147 = and i32 %146, 15
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %139
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %152 = icmp ne %struct.TYPE_7__* %151, null
  br i1 %152, label %153, label %174

153:                                              ; preds = %150
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = load i32, i32* %12, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = load i32, i32* %12, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add i32 %159, %165
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sub i32 %169, %170
  %172 = icmp ugt i32 %166, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %153
  br label %250

174:                                              ; preds = %153, %150, %139
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = load i32, i32* %12, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 0, %180
  %182 = and i32 %181, 15
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %235

185:                                              ; preds = %174
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %187 = icmp ne %struct.TYPE_7__* %186, null
  br i1 %187, label %188, label %235

188:                                              ; preds = %185
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = load i32, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %235

196:                                              ; preds = %188
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %198 = load i32, i32* %12, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = load i32, i32* %12, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %202, %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sub i32 %212, %213
  %215 = icmp ugt i32 %209, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %196
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = load i32, i32* %12, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %224 = load i32, i32* %12, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %222, %228
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = icmp ule i32 %229, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %216
  br label %250

235:                                              ; preds = %216, %196, %188, %185, %174
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %237 = load i32, i32* %12, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %235
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %245 = load i32, i32* %12, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  store %struct.TYPE_7__* %247, %struct.TYPE_7__** %9, align 8
  br label %248

248:                                              ; preds = %243, %235
  br label %249

249:                                              ; preds = %248, %130
  br label %126

250:                                              ; preds = %234, %173, %126
  %251 = load i32, i32* %12, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %303

253:                                              ; preds = %250
  %254 = load i32, i32* %11, align 4
  store i32 %254, i32* %12, align 4
  br label %255

255:                                              ; preds = %301, %253
  %256 = load i32, i32* %12, align 4
  %257 = add i32 %256, -1
  store i32 %257, i32* %12, align 4
  %258 = icmp ne i32 %256, 0
  br i1 %258, label %259, label %302

259:                                              ; preds = %255
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %261 = load i32, i32* %12, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @PT_LOAD, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %301

268:                                              ; preds = %259
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %270 = load i32, i32* %12, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 0, %274
  %276 = and i32 %275, 15
  store i32 %276, i32* %18, align 4
  %277 = load i32, i32* %18, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %279 = load i32, i32* %12, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = add i32 %283, %277
  store i32 %284, i32* %282, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %286 = load i32, i32* %12, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 0, %290
  %292 = and i32 %291, 15
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %295 = load i32, i32* %12, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = add i32 %299, %293
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %268, %259
  br label %255

302:                                              ; preds = %255
  br label %303

303:                                              ; preds = %302, %250
  %304 = load i32, i32* @TRUE, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %21
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.elf_obj_tdata* @elf_tdata(i32*) #1

declare dso_local %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_8__* @spu_elf_section_data(i32) #1

declare dso_local i32 @bfd_put_32(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
