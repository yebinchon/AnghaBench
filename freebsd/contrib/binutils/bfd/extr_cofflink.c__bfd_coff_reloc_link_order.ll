; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_reloc_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cofflink.c__bfd_coff_reloc_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_final_link_info = type { %struct.TYPE_27__*, %struct.TYPE_19__* }
%struct.TYPE_27__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_27__*, i32, i32*, %struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_27__*, i32*, i32, i32, i64, i32*, %struct.TYPE_26__*, i32)* }
%struct.TYPE_19__ = type { %struct.coff_link_hash_entry**, %struct.internal_reloc* }
%struct.coff_link_hash_entry = type { i32 }
%struct.internal_reloc = type { i32, i32, i64 }
%struct.TYPE_26__ = type { i64, i32, i64 }
%struct.bfd_link_order = type { i64, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_section_reloc_link_order = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_coff_reloc_link_order(i32* %0, %struct.coff_final_link_info* %1, %struct.TYPE_26__* %2, %struct.bfd_link_order* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.coff_final_link_info*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.internal_reloc*, align 8
  %12 = alloca %struct.coff_link_hash_entry**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.coff_link_hash_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.coff_final_link_info* %1, %struct.coff_final_link_info** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %21 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_25__* @bfd_reloc_type_lookup(i32* %19, i32 %26)
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %10, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %29 = icmp eq %struct.TYPE_25__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @bfd_error_bad_value, align 4
  %32 = call i32 @bfd_set_error(i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %271

34:                                               ; preds = %4
  %35 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %36 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %145

43:                                               ; preds = %34
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = call i32 @bfd_get_reloc_size(%struct.TYPE_25__* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32* @bfd_zmalloc(i32 %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %271

52:                                               ; preds = %43
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %56 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @_bfd_relocate_contents(%struct.TYPE_25__* %53, i32* %54, i32 %62, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  switch i32 %65, label %67 [
    i32 130, label %66
    i32 129, label %68
    i32 128, label %70
  ]

66:                                               ; preds = %52
  br label %125

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %52, %67
  %69 = call i32 (...) @abort() #3
  unreachable

70:                                               ; preds = %52
  %71 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %72 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_27__*, i32*, i32, i32, i64, i32*, %struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_27__*, i32*, i32, i32, i64, i32*, %struct.TYPE_26__*, i32)** %76, align 8
  %78 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %79 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %79, align 8
  %81 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %82 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %70
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %89 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @bfd_section_name(i32* %87, i32 %95)
  br label %106

97:                                               ; preds = %70
  %98 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %99 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  br label %106

106:                                              ; preds = %97, %86
  %107 = phi i32 [ %96, %86 ], [ %105, %97 ]
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %112 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 %77(%struct.TYPE_27__* %80, i32* null, i32 %107, i32 %110, i64 %117, i32* null, %struct.TYPE_26__* null, i32 0)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %106
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @free(i32* %121)
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %5, align 4
  br label %271

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %66
  %126 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %127 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @bfd_octets_per_byte(i32* %129)
  %131 = mul nsw i32 %128, %130
  store i32 %131, i32* %17, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @bfd_set_section_contents(i32* %132, %struct.TYPE_26__* %133, i32* %134, i32 %135, i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @free(i32* %138)
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %125
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %5, align 4
  br label %271

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %34
  %146 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %147 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %146, i32 0, i32 1
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load %struct.internal_reloc*, %struct.internal_reloc** %153, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %154, i64 %158
  store %struct.internal_reloc* %159, %struct.internal_reloc** %11, align 8
  %160 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %161 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %160, i32 0, i32 1
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load %struct.coff_link_hash_entry**, %struct.coff_link_hash_entry*** %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %168, i64 %172
  store %struct.coff_link_hash_entry** %173, %struct.coff_link_hash_entry*** %12, align 8
  %174 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %175 = call i32 @memset(%struct.internal_reloc* %174, i32 0, i32 16)
  %176 = load %struct.coff_link_hash_entry**, %struct.coff_link_hash_entry*** %12, align 8
  store %struct.coff_link_hash_entry* null, %struct.coff_link_hash_entry** %176, align 8
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %181 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %179, %183
  %185 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %186 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  %187 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %188 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %145
  %193 = call i32 (...) @abort() #3
  unreachable

194:                                              ; preds = %145
  %195 = load i32*, i32** %6, align 8
  %196 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %197 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %196, i32 0, i32 0
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %197, align 8
  %199 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %200 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @FALSE, align 4
  %208 = load i32, i32* @FALSE, align 4
  %209 = load i32, i32* @TRUE, align 4
  %210 = call i64 @bfd_wrapped_link_hash_lookup(i32* %195, %struct.TYPE_27__* %198, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = inttoptr i64 %210 to %struct.coff_link_hash_entry*
  store %struct.coff_link_hash_entry* %211, %struct.coff_link_hash_entry** %18, align 8
  %212 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %18, align 8
  %213 = icmp ne %struct.coff_link_hash_entry* %212, null
  br i1 %213, label %214, label %233

214:                                              ; preds = %194
  %215 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %18, align 8
  %216 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %18, align 8
  %221 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %224 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %232

225:                                              ; preds = %214
  %226 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %18, align 8
  %227 = getelementptr inbounds %struct.coff_link_hash_entry, %struct.coff_link_hash_entry* %226, i32 0, i32 0
  store i32 -2, i32* %227, align 4
  %228 = load %struct.coff_link_hash_entry*, %struct.coff_link_hash_entry** %18, align 8
  %229 = load %struct.coff_link_hash_entry**, %struct.coff_link_hash_entry*** %12, align 8
  store %struct.coff_link_hash_entry* %228, %struct.coff_link_hash_entry** %229, align 8
  %230 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %231 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %230, i32 0, i32 0
  store i32 0, i32* %231, align 8
  br label %232

232:                                              ; preds = %225, %219
  br label %259

233:                                              ; preds = %194
  %234 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %235 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %234, i32 0, i32 0
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32 (%struct.TYPE_27__*, i32, i32*, %struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_27__*, i32, i32*, %struct.TYPE_26__*, i32)** %239, align 8
  %241 = load %struct.coff_final_link_info*, %struct.coff_final_link_info** %7, align 8
  %242 = getelementptr inbounds %struct.coff_final_link_info, %struct.coff_final_link_info* %241, i32 0, i32 0
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %242, align 8
  %244 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %245 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 %240(%struct.TYPE_27__* %243, i32 %251, i32* null, %struct.TYPE_26__* null, i32 0)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %233
  %255 = load i32, i32* @FALSE, align 4
  store i32 %255, i32* %5, align 4
  br label %271

256:                                              ; preds = %233
  %257 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %258 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %257, i32 0, i32 0
  store i32 0, i32* %258, align 8
  br label %259

259:                                              ; preds = %256, %232
  br label %260

260:                                              ; preds = %259
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.internal_reloc*, %struct.internal_reloc** %11, align 8
  %265 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* @TRUE, align 4
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %260, %254, %142, %120, %50, %30
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local %struct.TYPE_25__* @bfd_reloc_type_lookup(i32*, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_25__*) #1

declare dso_local i32* @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_relocate_contents(%struct.TYPE_25__*, i32*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_section_name(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @bfd_octets_per_byte(i32*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_26__*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.internal_reloc*, i32, i32) #1

declare dso_local i64 @bfd_wrapped_link_hash_lookup(i32*, %struct.TYPE_27__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
