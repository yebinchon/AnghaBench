; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_reloc_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_reloc_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 (%struct.bfd_link_info*, i32*, i32, i32, i64, i32*, i32*, i32)*, i32 (%struct.bfd_link_info*, i32, i32*, i32*, i32)* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.bfd_link_order = type { i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32* }
%struct.generic_link_hash_entry = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@bfd_section_reloc_link_order = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_generic_reloc_link_order(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_21__* %2, %struct.bfd_link_order* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.generic_link_hash_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %9, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %25, align 8
  %27 = icmp eq %struct.TYPE_22__** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @abort() #3
  unreachable

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_22__* @bfd_alloc(i32* %31, i32 32)
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %10, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %34 = icmp eq %struct.TYPE_22__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %5, align 4
  br label %269

37:                                               ; preds = %30
  %38 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %39 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %45 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_15__* @bfd_reloc_type_lookup(i32* %43, i32 %50)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %53, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp eq %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load i32, i32* @bfd_error_bad_value, align 4
  %60 = call i32 @bfd_set_error(i32 %59)
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %5, align 4
  br label %269

62:                                               ; preds = %37
  %63 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %64 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %70 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  br label %132

81:                                               ; preds = %62
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %84 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %85 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i64 @bfd_wrapped_link_hash_lookup(i32* %82, %struct.bfd_link_info* %83, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = inttoptr i64 %95 to %struct.generic_link_hash_entry*
  store %struct.generic_link_hash_entry* %96, %struct.generic_link_hash_entry** %11, align 8
  %97 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %11, align 8
  %98 = icmp eq %struct.generic_link_hash_entry* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %81
  %100 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %11, align 8
  %101 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %127, label %104

104:                                              ; preds = %99, %81
  %105 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %106 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32 (%struct.bfd_link_info*, i32, i32*, i32*, i32)*, i32 (%struct.bfd_link_info*, i32, i32*, i32*, i32)** %108, align 8
  %110 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %111 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %112 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 %109(%struct.bfd_link_info* %110, i32 %118, i32* null, i32* null, i32 0)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %104
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %5, align 4
  br label %269

123:                                              ; preds = %104
  %124 = load i32, i32* @bfd_error_bad_value, align 4
  %125 = call i32 @bfd_set_error(i32 %124)
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %5, align 4
  br label %269

127:                                              ; preds = %99
  %128 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %11, align 8
  %129 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %128, i32 0, i32 0
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 3
  store i32* %129, i32** %131, align 8
  br label %132

132:                                              ; preds = %127, %68
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %132
  %140 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %141 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %255

149:                                              ; preds = %132
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = call i32 @bfd_get_reloc_size(%struct.TYPE_15__* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32* @bfd_zmalloc(i32 %154)
  store i32* %155, i32** %14, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %5, align 4
  br label %269

160:                                              ; preds = %149
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %166 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @_bfd_relocate_contents(%struct.TYPE_15__* %163, i32* %164, i32 %172, i32* %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  switch i32 %175, label %177 [
    i32 130, label %176
    i32 129, label %178
    i32 128, label %180
  ]

176:                                              ; preds = %160
  br label %233

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %160, %177
  %179 = call i32 (...) @abort() #3
  unreachable

180:                                              ; preds = %160
  %181 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %182 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %181, i32 0, i32 0
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32 (%struct.bfd_link_info*, i32*, i32, i32, i64, i32*, i32*, i32)*, i32 (%struct.bfd_link_info*, i32*, i32, i32, i64, i32*, i32*, i32)** %184, align 8
  %186 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %187 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %188 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %180
  %193 = load i32*, i32** %6, align 8
  %194 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %195 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = call i32 @bfd_section_name(i32* %193, %struct.TYPE_23__* %201)
  br label %212

203:                                              ; preds = %180
  %204 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %205 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  br label %212

212:                                              ; preds = %203, %192
  %213 = phi i32 [ %202, %192 ], [ %211, %203 ]
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %220 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 %185(%struct.bfd_link_info* %186, i32* null, i32 %213, i32 %218, i64 %225, i32* null, i32* null, i32 0)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %212
  %229 = load i32*, i32** %14, align 8
  %230 = call i32 @free(i32* %229)
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %5, align 4
  br label %269

232:                                              ; preds = %212
  br label %233

233:                                              ; preds = %232, %176
  %234 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %235 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @bfd_octets_per_byte(i32* %237)
  %239 = mul nsw i32 %236, %238
  store i32 %239, i32* %16, align 4
  %240 = load i32*, i32** %6, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @bfd_set_section_contents(i32* %240, %struct.TYPE_21__* %241, i32* %242, i32 %243, i32 %244)
  store i32 %245, i32* %15, align 4
  %246 = load i32*, i32** %14, align 8
  %247 = call i32 @free(i32* %246)
  %248 = load i32, i32* %15, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %233
  %251 = load i32, i32* @FALSE, align 4
  store i32 %251, i32* %5, align 4
  br label %269

252:                                              ; preds = %233
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %252, %139
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %258, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %259, i64 %262
  store %struct.TYPE_22__* %256, %struct.TYPE_22__** %263, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %265, align 8
  %268 = load i32, i32* @TRUE, align 4
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %255, %250, %228, %158, %123, %121, %58, %35
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local %struct.TYPE_22__* @bfd_alloc(i32*, i32) #2

declare dso_local %struct.TYPE_15__* @bfd_reloc_type_lookup(i32*, i32) #2

declare dso_local i32 @bfd_set_error(i32) #2

declare dso_local i64 @bfd_wrapped_link_hash_lookup(i32*, %struct.bfd_link_info*, i32, i32, i32, i32) #2

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_15__*) #2

declare dso_local i32* @bfd_zmalloc(i32) #2

declare dso_local i32 @_bfd_relocate_contents(%struct.TYPE_15__*, i32*, i32, i32*) #2

declare dso_local i32 @bfd_section_name(i32*, %struct.TYPE_23__*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @bfd_octets_per_byte(i32*) #2

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_21__*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
