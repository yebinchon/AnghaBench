; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_write_one_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_write_one_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.spu_stub_hash_entry = type { i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_15__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.spu_link_hash_table = type { i32, i64, i32, %struct.TYPE_23__*, %struct.TYPE_15__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.elf_link_hash_entry = type { i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }

@ILA_79 = common dso_local global i64 0, align 8
@BR = common dso_local global i64 0, align 8
@NOP = common dso_local global i64 0, align 8
@ILA_78 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"00000000.ovl_call.\00", align 1
@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@SIZEOF_STUB1 = common dso_local global i64 0, align 8
@SIZEOF_STUB2 = common dso_local global i64 0, align 8
@STT_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_hash_entry*, i8*)* @write_one_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_one_stub(%struct.bfd_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spu_stub_hash_entry*, align 8
  %7 = alloca %struct.spu_link_hash_table*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.elf_link_hash_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %4, align 8
  %17 = bitcast %struct.bfd_hash_entry* %16 to %struct.spu_stub_hash_entry*
  store %struct.spu_stub_hash_entry* %17, %struct.spu_stub_hash_entry** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.spu_link_hash_table*
  store %struct.spu_link_hash_table* %19, %struct.spu_link_hash_table** %7, align 8
  %20 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %21 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %20, i32 0, i32 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  %23 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %24 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %23, i32 0, i32 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %9, align 8
  %26 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %27 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @ILA_79, align 8
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 7
  %45 = and i32 %44, 33554304
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %52 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = call i32 @bfd_put_32(i32 %41, i64 %47, i32 %54)
  %56 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %57 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* @BR, align 8
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 5
  %66 = and i32 %65, 8388480
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %73 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %75, 4
  %77 = call i32 @bfd_put_32(i32 %62, i64 %68, i32 %76)
  %78 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %79 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %193

82:                                               ; preds = %2
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* @NOP, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %91 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = add nsw i32 %93, 4
  %95 = call i32 @bfd_put_32(i32 %85, i64 %86, i32 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = call %struct.TYPE_16__* @spu_elf_section_data(%struct.TYPE_17__* %98)
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* @ILA_78, align 8
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 %106, 7
  %108 = and i32 %107, 33554304
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %115 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = add nsw i32 %117, 8
  %119 = call i32 @bfd_put_32(i32 %104, i64 %110, i32 %118)
  %120 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %121 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %120, i32 0, i32 3
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %133 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %132, i32 0, i32 3
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %131, %141
  %143 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %144 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %143, i32 0, i32 3
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %142, %150
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %156, %159
  %161 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %162 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = add nsw i32 %164, 12
  %166 = sub nsw i32 %151, %165
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 131072
  %169 = icmp sge i32 %168, 262144
  br i1 %169, label %170, label %174

170:                                              ; preds = %82
  %171 = load i32, i32* @TRUE, align 4
  %172 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %173 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %82
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* @BR, align 8
  %179 = load i32, i32* %11, align 4
  %180 = shl i32 %179, 5
  %181 = and i32 %180, 8388480
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %178, %182
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %188 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %186, %189
  %191 = add nsw i32 %190, 12
  %192 = call i32 @bfd_put_32(i32 %177, i64 %183, i32 %191)
  br label %193

193:                                              ; preds = %174, %2
  %194 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %195 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %294

198:                                              ; preds = %193
  store i64 18, i64* %13, align 8
  %199 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %200 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @strlen(i8* %202)
  store i64 %203, i64* %14, align 8
  %204 = load i64, i64* %13, align 8
  %205 = load i64, i64* %14, align 8
  %206 = add i64 %204, %205
  %207 = add i64 %206, 1
  %208 = call i8* @bfd_malloc(i64 %207)
  store i8* %208, i8** %15, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = icmp eq i8* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %198
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %3, align 4
  br label %296

213:                                              ; preds = %198
  %214 = load i8*, i8** %15, align 8
  %215 = load i64, i64* %13, align 8
  %216 = call i32 @memcpy(i8* %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %215)
  %217 = load i8*, i8** %15, align 8
  %218 = load i64, i64* %13, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %221 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i64, i64* %14, align 8
  %225 = add i64 %224, 1
  %226 = call i32 @memcpy(i8* %219, i8* %223, i64 %225)
  %227 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %7, align 8
  %228 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %227, i32 0, i32 0
  %229 = load i8*, i8** %15, align 8
  %230 = load i32, i32* @TRUE, align 4
  %231 = load i32, i32* @TRUE, align 4
  %232 = load i32, i32* @FALSE, align 4
  %233 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32* %228, i8* %229, i32 %230, i32 %231, i32 %232)
  store %struct.elf_link_hash_entry* %233, %struct.elf_link_hash_entry** %12, align 8
  %234 = load i8*, i8** %15, align 8
  %235 = call i32 @free(i8* %234)
  %236 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %237 = icmp eq %struct.elf_link_hash_entry* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %213
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %3, align 4
  br label %296

240:                                              ; preds = %213
  %241 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %242 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %241, i32 0, i32 7
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @bfd_link_hash_new, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %293

247:                                              ; preds = %240
  %248 = load i64, i64* @bfd_link_hash_defined, align 8
  %249 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %250 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  store i64 %248, i64* %251, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %253 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %254 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 1
  store %struct.TYPE_15__* %252, %struct.TYPE_15__** %257, align 8
  %258 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %259 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %262 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 0
  store i32 %260, i32* %265, align 8
  %266 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %6, align 8
  %267 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %247
  %271 = load i64, i64* @SIZEOF_STUB1, align 8
  %272 = load i64, i64* @SIZEOF_STUB2, align 8
  %273 = add nsw i64 %271, %272
  br label %276

274:                                              ; preds = %247
  %275 = load i64, i64* @SIZEOF_STUB1, align 8
  br label %276

276:                                              ; preds = %274, %270
  %277 = phi i64 [ %273, %270 ], [ %275, %274 ]
  %278 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %279 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %278, i32 0, i32 6
  store i64 %277, i64* %279, align 8
  %280 = load i32, i32* @STT_FUNC, align 4
  %281 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %282 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %281, i32 0, i32 5
  store i32 %280, i32* %282, align 8
  %283 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %284 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %283, i32 0, i32 0
  store i32 1, i32* %284, align 8
  %285 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %286 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %285, i32 0, i32 1
  store i32 1, i32* %286, align 4
  %287 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %288 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %287, i32 0, i32 2
  store i32 1, i32* %288, align 8
  %289 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %290 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %289, i32 0, i32 3
  store i32 1, i32* %290, align 4
  %291 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %292 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %291, i32 0, i32 4
  store i64 0, i64* %292, align 8
  br label %293

293:                                              ; preds = %276, %240
  br label %294

294:                                              ; preds = %293, %193
  %295 = load i32, i32* @TRUE, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %294, %238, %211
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @bfd_put_32(i32, i64, i32) #1

declare dso_local %struct.TYPE_16__* @spu_elf_section_data(%struct.TYPE_17__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
