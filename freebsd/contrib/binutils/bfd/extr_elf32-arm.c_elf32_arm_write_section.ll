; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_write_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_write_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__*, i64, %struct.TYPE_30__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_29__, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.elf32_arm_link_hash_table = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%B: error: VFP11 veneer out of range\00", align 1
@elf32_arm_compare_mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_20__*, i32*)* @elf32_arm_write_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_write_section(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %28 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %27)
  store %struct.elf32_arm_link_hash_table* %28, %struct.elf32_arm_link_hash_table** %13, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %18, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = call %struct.TYPE_21__* @get_arm_elf_section_data(%struct.TYPE_20__* %38)
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %12, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %41 = icmp eq %struct.TYPE_21__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %424

44:                                               ; preds = %4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %14, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %273

56:                                               ; preds = %44
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @bfd_big_endian(i32* %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 3, i32 0
  store i32 %61, i32* %21, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %63, align 8
  store %struct.TYPE_30__* %64, %struct.TYPE_30__** %15, align 8
  br label %65

65:                                               ; preds = %268, %56
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %67 = icmp ne %struct.TYPE_30__* %66, null
  br i1 %67, label %68, label %272

68:                                               ; preds = %65
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %22, align 4
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %265 [
    i32 128, label %77
    i32 129, label %152
  ]

77:                                               ; preds = %68
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, -268435456
  %84 = or i32 %83, 167772160
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %22, align 4
  %86 = sub nsw i32 %85, 4
  store i32 %86, i32* %22, align 4
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = sub nsw i32 %97, 4
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %23, align 4
  %100 = icmp slt i32 %99, -33554432
  br i1 %100, label %104, label %101

101:                                              ; preds = %77
  %102 = load i32, i32* %23, align 4
  %103 = icmp sge i32 %102, 33554432
  br i1 %103, label %104, label %108

104:                                              ; preds = %101, %77
  %105 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @_bfd_error_handler(i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %23, align 4
  %110 = ashr i32 %109, 2
  %111 = and i32 %110, 16777215
  %112 = load i32, i32* %24, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %24, align 4
  %114 = load i32, i32* %24, align 4
  %115 = and i32 %114, 255
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = xor i32 %117, %118
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load i32, i32* %24, align 4
  %123 = lshr i32 %122, 8
  %124 = and i32 %123, 255
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, 1
  %129 = xor i32 %126, %128
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* %24, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 2
  %139 = xor i32 %136, %138
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  store i32 %134, i32* %141, align 4
  %142 = load i32, i32* %24, align 4
  %143 = lshr i32 %142, 24
  %144 = and i32 %143, 255
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %147, 3
  %149 = xor i32 %146, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  store i32 %144, i32* %151, align 4
  br label %267

152:                                              ; preds = %68
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = sub nsw i32 %163, 12
  store i32 %164, i32* %25, align 4
  %165 = load i32, i32* %25, align 4
  %166 = icmp slt i32 %165, -33554432
  br i1 %166, label %170, label %167

167:                                              ; preds = %152
  %168 = load i32, i32* %25, align 4
  %169 = icmp sge i32 %168, 33554432
  br i1 %169, label %170, label %174

170:                                              ; preds = %167, %152
  %171 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @_bfd_error_handler(i32 %171, i32* %172)
  br label %174

174:                                              ; preds = %170, %167
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %26, align 4
  %184 = load i32, i32* %26, align 4
  %185 = and i32 %184, 255
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %22, align 4
  %189 = xor i32 %187, %188
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  store i32 %185, i32* %191, align 4
  %192 = load i32, i32* %26, align 4
  %193 = lshr i32 %192, 8
  %194 = and i32 %193, 255
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, 1
  %199 = xor i32 %196, %198
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  store i32 %194, i32* %201, align 4
  %202 = load i32, i32* %26, align 4
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %207, 2
  %209 = xor i32 %206, %208
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  store i32 %204, i32* %211, align 4
  %212 = load i32, i32* %26, align 4
  %213 = lshr i32 %212, 24
  %214 = and i32 %213, 255
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %21, align 4
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, 3
  %219 = xor i32 %216, %218
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %215, i64 %220
  store i32 %214, i32* %221, align 4
  %222 = load i32, i32* %25, align 4
  %223 = ashr i32 %222, 2
  %224 = and i32 %223, 16777215
  %225 = or i32 -369098752, %224
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %26, align 4
  %227 = and i32 %226, 255
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %22, align 4
  %231 = add nsw i32 %230, 4
  %232 = xor i32 %229, %231
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  store i32 %227, i32* %234, align 4
  %235 = load i32, i32* %26, align 4
  %236 = lshr i32 %235, 8
  %237 = and i32 %236, 255
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %240, 5
  %242 = xor i32 %239, %241
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %238, i64 %243
  store i32 %237, i32* %244, align 4
  %245 = load i32, i32* %26, align 4
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %22, align 4
  %251 = add nsw i32 %250, 6
  %252 = xor i32 %249, %251
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %248, i64 %253
  store i32 %247, i32* %254, align 4
  %255 = load i32, i32* %26, align 4
  %256 = lshr i32 %255, 24
  %257 = and i32 %256, 255
  %258 = load i32*, i32** %9, align 8
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %22, align 4
  %261 = add nsw i32 %260, 7
  %262 = xor i32 %259, %261
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %258, i64 %263
  store i32 %257, i32* %264, align 4
  br label %267

265:                                              ; preds = %68
  %266 = call i32 (...) @abort() #3
  unreachable

267:                                              ; preds = %174, %108
  br label %268

268:                                              ; preds = %267
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 3
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %270, align 8
  store %struct.TYPE_30__* %271, %struct.TYPE_30__** %15, align 8
  br label %65

272:                                              ; preds = %65
  br label %273

273:                                              ; preds = %272, %44
  %274 = load i32, i32* %10, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* @FALSE, align 4
  store i32 %277, i32* %5, align 4
  br label %424

278:                                              ; preds = %273
  %279 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %13, align 8
  %280 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %412

283:                                              ; preds = %278
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @elf32_arm_compare_mapping, align 4
  %287 = call i32 @qsort(%struct.TYPE_19__* %284, i32 %285, i32 8, i32 %286)
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %292

292:                                              ; preds = %408, %283
  %293 = load i32, i32* %20, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %411

296:                                              ; preds = %292
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %10, align 4
  %299 = sub nsw i32 %298, 1
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %17, align 4
  br label %313

305:                                              ; preds = %296
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %307 = load i32, i32* %20, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %17, align 4
  br label %313

313:                                              ; preds = %305, %301
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %315 = load i32, i32* %20, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  switch i32 %319, label %406 [
    i32 97, label %320
    i32 116, label %374
    i32 100, label %405
  ]

320:                                              ; preds = %313
  br label %321

321:                                              ; preds = %326, %320
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 3
  %324 = load i32, i32* %17, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %373

326:                                              ; preds = %321
  %327 = load i32*, i32** %9, align 8
  %328 = load i32, i32* %16, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %19, align 4
  %332 = load i32*, i32** %9, align 8
  %333 = load i32, i32* %16, align 4
  %334 = add nsw i32 %333, 3
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %9, align 8
  %339 = load i32, i32* %16, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 %337, i32* %341, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load i32*, i32** %9, align 8
  %344 = load i32, i32* %16, align 4
  %345 = add nsw i32 %344, 3
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  store i32 %342, i32* %347, align 4
  %348 = load i32*, i32** %9, align 8
  %349 = load i32, i32* %16, align 4
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %19, align 4
  %354 = load i32*, i32** %9, align 8
  %355 = load i32, i32* %16, align 4
  %356 = add nsw i32 %355, 2
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %9, align 8
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %360, i64 %363
  store i32 %359, i32* %364, align 4
  %365 = load i32, i32* %19, align 4
  %366 = load i32*, i32** %9, align 8
  %367 = load i32, i32* %16, align 4
  %368 = add nsw i32 %367, 2
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  store i32 %365, i32* %370, align 4
  %371 = load i32, i32* %16, align 4
  %372 = add nsw i32 %371, 4
  store i32 %372, i32* %16, align 4
  br label %321

373:                                              ; preds = %321
  br label %406

374:                                              ; preds = %313
  br label %375

375:                                              ; preds = %380, %374
  %376 = load i32, i32* %16, align 4
  %377 = add nsw i32 %376, 1
  %378 = load i32, i32* %17, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %404

380:                                              ; preds = %375
  %381 = load i32*, i32** %9, align 8
  %382 = load i32, i32* %16, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %19, align 4
  %386 = load i32*, i32** %9, align 8
  %387 = load i32, i32* %16, align 4
  %388 = add nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %386, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %9, align 8
  %393 = load i32, i32* %16, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  store i32 %391, i32* %395, align 4
  %396 = load i32, i32* %19, align 4
  %397 = load i32*, i32** %9, align 8
  %398 = load i32, i32* %16, align 4
  %399 = add nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %397, i64 %400
  store i32 %396, i32* %401, align 4
  %402 = load i32, i32* %16, align 4
  %403 = add nsw i32 %402, 2
  store i32 %403, i32* %16, align 4
  br label %375

404:                                              ; preds = %375
  br label %406

405:                                              ; preds = %313
  br label %406

406:                                              ; preds = %313, %405, %404, %373
  %407 = load i32, i32* %17, align 4
  store i32 %407, i32* %16, align 4
  br label %408

408:                                              ; preds = %406
  %409 = load i32, i32* %20, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %20, align 4
  br label %292

411:                                              ; preds = %292
  br label %412

412:                                              ; preds = %411, %278
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %414 = call i32 @free(%struct.TYPE_19__* %413)
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 0
  store i32 0, i32* %416, align 8
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 3
  store i64 0, i64* %418, align 8
  %419 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %420, align 8
  %421 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %422 = call i32 @unrecord_section_with_arm_elf_section_data(%struct.TYPE_20__* %421)
  %423 = load i32, i32* @FALSE, align 4
  store i32 %423, i32* %5, align 4
  br label %424

424:                                              ; preds = %412, %276, %42
  %425 = load i32, i32* %5, align 4
  ret i32 %425
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_21__* @get_arm_elf_section_data(%struct.TYPE_20__*) #1

declare dso_local i64 @bfd_big_endian(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @qsort(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local i32 @unrecord_section_with_arm_elf_section_data(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
