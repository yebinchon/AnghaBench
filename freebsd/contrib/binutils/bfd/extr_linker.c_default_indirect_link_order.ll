; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_default_indirect_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_default_indirect_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i32, i64, i64, i32*, %struct.TYPE_17__*, i32* }
%struct.bfd_link_order = type { i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_entry = type { i32 }

@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Attempt to do relocatable link with %s input and %s output\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_WARNING = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_CONSTRUCTOR = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_17__*, %struct.bfd_link_order*, i32)* @default_indirect_link_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_indirect_link_order(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_17__* %2, %struct.bfd_link_order* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.bfd_link_order*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__**, align 8
  %19 = alloca %struct.TYPE_16__**, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.bfd_link_hash_entry*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %14, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @BFD_ASSERT(i32 %28)
  %30 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %31 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %12, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %13, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %6, align 4
  br label %269

44:                                               ; preds = %5
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = icmp eq %struct.TYPE_17__* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BFD_ASSERT(i32 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %56 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BFD_ASSERT(i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %65 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BFD_ASSERT(i32 %68)
  %70 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %71 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %44
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @bfd_get_target(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @bfd_get_target(i32* %88)
  %90 = call i32 @_bfd_error_handler(i32 %85, i32 %87, i32 %89)
  %91 = load i32, i32* @bfd_error_wrong_format, align 4
  %92 = call i32 @bfd_set_error(i32 %91)
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %6, align 4
  br label %269

94:                                               ; preds = %79, %74, %44
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %196, label %97

97:                                               ; preds = %94
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @generic_link_read_symbols(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %6, align 4
  br label %269

103:                                              ; preds = %97
  %104 = load i32*, i32** %13, align 8
  %105 = call %struct.TYPE_16__** @_bfd_generic_link_get_symbols(i32* %104)
  store %struct.TYPE_16__** %105, %struct.TYPE_16__*** %18, align 8
  %106 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @_bfd_generic_link_get_symcount(i32* %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %106, i64 %109
  store %struct.TYPE_16__** %110, %struct.TYPE_16__*** %19, align 8
  br label %111

111:                                              ; preds = %192, %103
  %112 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %113 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %114 = icmp ult %struct.TYPE_16__** %112, %113
  br i1 %114, label %115, label %195

115:                                              ; preds = %111
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %20, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BSF_INDIRECT, align 4
  %122 = load i32, i32* @BSF_WARNING, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @BSF_GLOBAL, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @BSF_WEAK, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %120, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %115
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %134 = call i32 @bfd_get_section(%struct.TYPE_16__* %133)
  %135 = call i64 @bfd_is_und_section(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %139 = call i32 @bfd_get_section(%struct.TYPE_16__* %138)
  %140 = call i64 @bfd_is_com_section(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %144 = call i32 @bfd_get_section(%struct.TYPE_16__* %143)
  %145 = call i64 @bfd_is_ind_section(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %191

147:                                              ; preds = %142, %137, %132, %115
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %150, align 8
  %152 = icmp ne %struct.bfd_link_hash_entry* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %156, align 8
  store %struct.bfd_link_hash_entry* %157, %struct.bfd_link_hash_entry** %21, align 8
  br label %183

158:                                              ; preds = %147
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %160 = call i32 @bfd_get_section(%struct.TYPE_16__* %159)
  %161 = call i64 @bfd_is_und_section(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %167 = call i32 @bfd_asymbol_name(%struct.TYPE_16__* %166)
  %168 = load i32, i32* @FALSE, align 4
  %169 = load i32, i32* @FALSE, align 4
  %170 = load i32, i32* @TRUE, align 4
  %171 = call %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32* %164, %struct.bfd_link_info* %165, i32 %167, i32 %168, i32 %169, i32 %170)
  store %struct.bfd_link_hash_entry* %171, %struct.bfd_link_hash_entry** %21, align 8
  br label %182

172:                                              ; preds = %158
  %173 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %174 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %177 = call i32 @bfd_asymbol_name(%struct.TYPE_16__* %176)
  %178 = load i32, i32* @FALSE, align 4
  %179 = load i32, i32* @FALSE, align 4
  %180 = load i32, i32* @TRUE, align 4
  %181 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %175, i32 %177, i32 %178, i32 %179, i32 %180)
  store %struct.bfd_link_hash_entry* %181, %struct.bfd_link_hash_entry** %21, align 8
  br label %182

182:                                              ; preds = %172, %163
  br label %183

183:                                              ; preds = %182, %153
  %184 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %21, align 8
  %185 = icmp ne %struct.bfd_link_hash_entry* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %188 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %21, align 8
  %189 = call i32 @set_symbol_from_hash(%struct.TYPE_16__* %187, %struct.bfd_link_hash_entry* %188)
  br label %190

190:                                              ; preds = %186, %183
  br label %191

191:                                              ; preds = %190, %142
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %193, i32 1
  store %struct.TYPE_16__** %194, %struct.TYPE_16__*** %18, align 8
  br label %111

195:                                              ; preds = %111
  br label %196

196:                                              ; preds = %195, %94
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp sgt i64 %199, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  br label %212

208:                                              ; preds = %196
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  br label %212

212:                                              ; preds = %208, %204
  %213 = phi i64 [ %207, %204 ], [ %211, %208 ]
  store i64 %213, i64* %16, align 8
  %214 = load i64, i64* %16, align 8
  %215 = call i32* @bfd_malloc(i64 %214)
  store i32* %215, i32** %14, align 8
  %216 = load i32*, i32** %14, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i64, i64* %16, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %261

222:                                              ; preds = %218, %212
  %223 = load i32*, i32** %7, align 8
  %224 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %225 = load %struct.bfd_link_order*, %struct.bfd_link_order** %10, align 8
  %226 = load i32*, i32** %14, align 8
  %227 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %228 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %13, align 8
  %231 = call %struct.TYPE_16__** @_bfd_generic_link_get_symbols(i32* %230)
  %232 = call i32* @bfd_get_relocated_section_contents(i32* %223, %struct.bfd_link_info* %224, %struct.bfd_link_order* %225, i32* %226, i32 %229, %struct.TYPE_16__** %231)
  store i32* %232, i32** %15, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %222
  br label %261

236:                                              ; preds = %222
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @bfd_octets_per_byte(i32* %240)
  %242 = mul nsw i32 %239, %241
  store i32 %242, i32* %17, align 4
  %243 = load i32*, i32** %7, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @bfd_set_section_contents(i32* %243, %struct.TYPE_17__* %244, i32* %245, i32 %246, i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %236
  br label %261

253:                                              ; preds = %236
  %254 = load i32*, i32** %14, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32*, i32** %14, align 8
  %258 = call i32 @free(i32* %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32, i32* @TRUE, align 4
  store i32 %260, i32* %6, align 4
  br label %269

261:                                              ; preds = %252, %235, %221
  %262 = load i32*, i32** %14, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32*, i32** %14, align 8
  %266 = call i32 @free(i32* %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %267, %259, %101, %84, %42
  %270 = load i32, i32* %6, align 4
  ret i32 %270
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @generic_link_read_symbols(i32*) #1

declare dso_local %struct.TYPE_16__** @_bfd_generic_link_get_symbols(i32*) #1

declare dso_local i32 @_bfd_generic_link_get_symcount(i32*) #1

declare dso_local i64 @bfd_is_und_section(i32) #1

declare dso_local i32 @bfd_get_section(%struct.TYPE_16__*) #1

declare dso_local i64 @bfd_is_com_section(i32) #1

declare dso_local i64 @bfd_is_ind_section(i32) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32*, %struct.bfd_link_info*, i32, i32, i32, i32) #1

declare dso_local i32 @bfd_asymbol_name(%struct.TYPE_16__*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_symbol_from_hash(%struct.TYPE_16__*, %struct.bfd_link_hash_entry*) #1

declare dso_local i32* @bfd_malloc(i64) #1

declare dso_local i32* @bfd_get_relocated_section_contents(i32*, %struct.bfd_link_info*, %struct.bfd_link_order*, i32*, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @bfd_octets_per_byte(i32*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_17__*, i32*, i32, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
