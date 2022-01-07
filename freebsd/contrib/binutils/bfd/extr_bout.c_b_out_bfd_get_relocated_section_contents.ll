; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_bfd_get_relocated_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_bfd_get_relocated_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.bfd_link_order = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BAL_MASK = common dso_local global i64 0, align 8
@PCREL13_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i64, i32**)* @b_out_bfd_get_relocated_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @b_out_bfd_get_relocated_section_contents(i32* %0, %struct.bfd_link_info* %1, %struct.bfd_link_order* %2, i32* %3, i64 %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bfd_link_info*, align 8
  %10 = alloca %struct.bfd_link_order*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_23__**, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_23__**, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %9, align 8
  store %struct.bfd_link_order* %2, %struct.bfd_link_order** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32** %5, i32*** %13, align 8
  %29 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %30 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %14, align 8
  %36 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %37 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %15, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %43 = call i64 @bfd_get_reloc_upper_bound(i32* %41, %struct.TYPE_22__* %42)
  store i64 %43, i64* %16, align 8
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %17, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  br label %352

47:                                               ; preds = %6
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %53 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32**, i32*** %13, align 8
  %57 = call i32* @bfd_generic_get_relocated_section_contents(i32* %51, %struct.bfd_link_info* %52, %struct.bfd_link_order* %53, i32* %54, i64 %55, i32** %56)
  store i32* %57, i32** %7, align 8
  br label %359

58:                                               ; preds = %47
  %59 = load i64, i64* %16, align 8
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_23__** @bfd_malloc(i32 %60)
  store %struct.TYPE_23__** %61, %struct.TYPE_23__*** %17, align 8
  %62 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %63 = icmp eq %struct.TYPE_23__** %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %16, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %352

68:                                               ; preds = %64, %58
  %69 = load i32*, i32** %14, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @bfd_get_section_contents(i32* %69, %struct.TYPE_22__* %70, i32* %71, i64 0, i64 %74)
  %76 = call i32 @BFD_ASSERT(i32 %75)
  %77 = load i32*, i32** %14, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %79 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %80 = load i32**, i32*** %13, align 8
  %81 = call i64 @bfd_canonicalize_reloc(i32* %77, %struct.TYPE_22__* %78, %struct.TYPE_23__** %79, i32** %80)
  store i64 %81, i64* %18, align 8
  %82 = load i64, i64* %18, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %352

85:                                               ; preds = %68
  %86 = load i64, i64* %18, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %344

88:                                               ; preds = %85
  %89 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  store %struct.TYPE_23__** %89, %struct.TYPE_23__*** %19, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %342, %88
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %93 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %343

96:                                               ; preds = %90
  %97 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %19, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  store %struct.TYPE_23__* %98, %struct.TYPE_23__** %20, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %100 = icmp ne %struct.TYPE_23__* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %22, align 4
  %106 = icmp uge i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @BFD_ASSERT(i32 %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %22, align 4
  %113 = sub i32 %111, %112
  store i32 %113, i32* %23, align 4
  %114 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %114, i32 1
  store %struct.TYPE_23__** %115, %struct.TYPE_23__*** %19, align 8
  br label %122

116:                                              ; preds = %96
  %117 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %118 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %21, align 4
  %121 = sub i32 %119, %120
  store i32 %121, i32* %23, align 4
  br label %122

122:                                              ; preds = %116, %101
  store i32 0, i32* %24, align 4
  br label %123

123:                                              ; preds = %139, %122
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %23, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %22, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %22, align 4
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %21, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %21, align 4
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %24, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %24, align 4
  br label %123

142:                                              ; preds = %123
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %144 = icmp ne %struct.TYPE_23__* %143, null
  br i1 %144, label %145, label %342

145:                                              ; preds = %142
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %339 [
    i32 133, label %151
    i32 134, label %169
    i32 130, label %191
    i32 131, label %205
    i32 132, label %240
    i32 128, label %255
    i32 129, label %297
  ]

151:                                              ; preds = %145
  %152 = load i32*, i32** %14, align 8
  %153 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %155 = load i32, i32* %22, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %21, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %164 = call i32 @calljx_callback(i32* %152, %struct.bfd_link_info* %153, %struct.TYPE_23__* %154, i32* %158, i32* %162, %struct.TYPE_22__* %163)
  %165 = load i32, i32* %22, align 4
  %166 = add i32 %165, 4
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %21, align 4
  %168 = add i32 %167, 4
  store i32 %168, i32* %21, align 4
  br label %341

169:                                              ; preds = %145
  %170 = load i32*, i32** %14, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %22, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = call i64 @bfd_get_32(i32* %171, i32* %175)
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %178 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %180 = call i64 @get_value(%struct.TYPE_23__* %177, %struct.bfd_link_info* %178, %struct.TYPE_22__* %179)
  %181 = add nsw i64 %176, %180
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %21, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @bfd_put_32(i32* %170, i64 %181, i32* %185)
  %187 = load i32, i32* %22, align 4
  %188 = add i32 %187, 4
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %21, align 4
  %190 = add i32 %189, 4
  store i32 %190, i32* %21, align 4
  br label %341

191:                                              ; preds = %145
  %192 = load i32*, i32** %14, align 8
  %193 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %199 = load i32, i32* @FALSE, align 4
  %200 = call i32 @callj_callback(i32* %192, %struct.bfd_link_info* %193, %struct.TYPE_23__* %194, i32* %195, i32 %196, i32 %197, %struct.TYPE_22__* %198, i32 %199)
  %201 = load i32, i32* %22, align 4
  %202 = add i32 %201, 4
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %21, align 4
  %204 = add i32 %203, 4
  store i32 %204, i32* %21, align 4
  br label %341

205:                                              ; preds = %145
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %22, align 4
  %210 = icmp uge i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @BFD_ASSERT(i32 %211)
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp sle i64 %216, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @BFD_ASSERT(i32 %221)
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %22, align 4
  %226 = load i32, i32* %21, align 4
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %226, %231
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = xor i32 %237, -1
  %239 = and i32 %232, %238
  store i32 %239, i32* %21, align 4
  br label %341

240:                                              ; preds = %145
  %241 = load i32*, i32** %14, align 8
  %242 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %244 = load i32*, i32** %11, align 8
  %245 = load i32, i32* %22, align 4
  %246 = add i32 %245, 4
  %247 = load i32, i32* %21, align 4
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %249 = load i32, i32* @TRUE, align 4
  %250 = call i32 @callj_callback(i32* %241, %struct.bfd_link_info* %242, %struct.TYPE_23__* %243, i32* %244, i32 %246, i32 %247, %struct.TYPE_22__* %248, i32 %249)
  %251 = load i32, i32* %21, align 4
  %252 = add i32 %251, 4
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %22, align 4
  %254 = add i32 %253, 8
  store i32 %254, i32* %22, align 4
  br label %341

255:                                              ; preds = %145
  %256 = load i32*, i32** %14, align 8
  %257 = load i32*, i32** %11, align 8
  %258 = load i32, i32* %22, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = call i64 @bfd_get_32(i32* %256, i32* %260)
  store i64 %261, i64* %25, align 8
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %263 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %265 = call i64 @get_value(%struct.TYPE_23__* %262, %struct.bfd_link_info* %263, %struct.TYPE_22__* %264)
  store i64 %265, i64* %26, align 8
  %266 = load i64, i64* %25, align 8
  %267 = load i64, i64* @BAL_MASK, align 8
  %268 = xor i64 %267, -1
  %269 = and i64 %266, %268
  %270 = load i64, i64* %25, align 8
  %271 = load i64, i64* @BAL_MASK, align 8
  %272 = and i64 %270, %271
  %273 = load i64, i64* %26, align 8
  %274 = add nsw i64 %272, %273
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %276 = call i64 @output_addr(%struct.TYPE_22__* %275)
  %277 = sub nsw i64 %274, %276
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  %282 = add nsw i64 %277, %281
  %283 = load i64, i64* @BAL_MASK, align 8
  %284 = and i64 %282, %283
  %285 = or i64 %269, %284
  store i64 %285, i64* %25, align 8
  %286 = load i32*, i32** %14, align 8
  %287 = load i64, i64* %25, align 8
  %288 = load i32*, i32** %11, align 8
  %289 = load i32, i32* %21, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = call i32 @bfd_put_32(i32* %286, i64 %287, i32* %291)
  %293 = load i32, i32* %21, align 4
  %294 = add i32 %293, 4
  store i32 %294, i32* %21, align 4
  %295 = load i32, i32* %22, align 4
  %296 = add i32 %295, 4
  store i32 %296, i32* %22, align 4
  br label %341

297:                                              ; preds = %145
  %298 = load i32*, i32** %14, align 8
  %299 = load i32*, i32** %11, align 8
  %300 = load i32, i32* %22, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = call i64 @bfd_get_32(i32* %298, i32* %302)
  store i64 %303, i64* %27, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %305 = load %struct.bfd_link_info*, %struct.bfd_link_info** %9, align 8
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %307 = call i64 @get_value(%struct.TYPE_23__* %304, %struct.bfd_link_info* %305, %struct.TYPE_22__* %306)
  store i64 %307, i64* %28, align 8
  %308 = load i64, i64* %27, align 8
  %309 = load i64, i64* @PCREL13_MASK, align 8
  %310 = xor i64 %309, -1
  %311 = and i64 %308, %310
  %312 = load i64, i64* %27, align 8
  %313 = load i64, i64* @PCREL13_MASK, align 8
  %314 = and i64 %312, %313
  %315 = load i64, i64* %28, align 8
  %316 = add nsw i64 %314, %315
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  %321 = add nsw i64 %316, %320
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %323 = call i64 @output_addr(%struct.TYPE_22__* %322)
  %324 = sub nsw i64 %321, %323
  %325 = load i64, i64* @PCREL13_MASK, align 8
  %326 = and i64 %324, %325
  %327 = or i64 %311, %326
  store i64 %327, i64* %27, align 8
  %328 = load i32*, i32** %14, align 8
  %329 = load i64, i64* %27, align 8
  %330 = load i32*, i32** %11, align 8
  %331 = load i32, i32* %21, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = call i32 @bfd_put_32(i32* %328, i64 %329, i32* %333)
  %335 = load i32, i32* %21, align 4
  %336 = add i32 %335, 4
  store i32 %336, i32* %21, align 4
  %337 = load i32, i32* %22, align 4
  %338 = add i32 %337, 4
  store i32 %338, i32* %22, align 4
  br label %341

339:                                              ; preds = %145
  %340 = call i32 (...) @abort() #3
  unreachable

341:                                              ; preds = %297, %255, %240, %205, %191, %169, %151
  br label %342

342:                                              ; preds = %341, %142
  br label %90

343:                                              ; preds = %90
  br label %344

344:                                              ; preds = %343, %85
  %345 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %346 = icmp ne %struct.TYPE_23__** %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %344
  %348 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %349 = call i32 @free(%struct.TYPE_23__** %348)
  br label %350

350:                                              ; preds = %347, %344
  %351 = load i32*, i32** %11, align 8
  store i32* %351, i32** %7, align 8
  br label %359

352:                                              ; preds = %84, %67, %46
  %353 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %354 = icmp ne %struct.TYPE_23__** %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %357 = call i32 @free(%struct.TYPE_23__** %356)
  br label %358

358:                                              ; preds = %355, %352
  store i32* null, i32** %7, align 8
  br label %359

359:                                              ; preds = %358, %350, %50
  %360 = load i32*, i32** %7, align 8
  ret i32* %360
}

declare dso_local i64 @bfd_get_reloc_upper_bound(i32*, %struct.TYPE_22__*) #1

declare dso_local i32* @bfd_generic_get_relocated_section_contents(i32*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i64, i32**) #1

declare dso_local %struct.TYPE_23__** @bfd_malloc(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, %struct.TYPE_22__*, i32*, i64, i64) #1

declare dso_local i64 @bfd_canonicalize_reloc(i32*, %struct.TYPE_22__*, %struct.TYPE_23__**, i32**) #1

declare dso_local i32 @calljx_callback(i32*, %struct.bfd_link_info*, %struct.TYPE_23__*, i32*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i64 @get_value(%struct.TYPE_23__*, %struct.bfd_link_info*, %struct.TYPE_22__*) #1

declare dso_local i32 @callj_callback(i32*, %struct.bfd_link_info*, %struct.TYPE_23__*, i32*, i32, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @output_addr(%struct.TYPE_22__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @free(%struct.TYPE_23__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
