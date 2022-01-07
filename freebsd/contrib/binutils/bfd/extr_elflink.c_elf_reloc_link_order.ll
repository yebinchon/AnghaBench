; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_reloc_link_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_reloc_link_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 (%struct.bfd_link_info*, i32*, i8*, i32, i64, i32*, i32*, i64)*, i32 (%struct.bfd_link_info*, i8*, i32*, i32*, i32)* }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i64 }
%struct.bfd_link_order = type { i64, i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64, %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i8*, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i64 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i64, i32* }
%struct.elf_backend_data = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 (i32*, %struct.TYPE_29__*, i32*)*, i32 (i32*, %struct.TYPE_29__*, i32*)* }
%struct.TYPE_29__ = type { i64, i64, i64 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_28__, %struct.elf_link_hash_entry** }

@MAX_INT_RELS_PER_EXT_REL = common dso_local global i32 0, align 4
@bfd_error_bad_value = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_section_reloc_link_order = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, %struct.TYPE_27__*, %struct.bfd_link_order*)* @elf_reloc_link_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_reloc_link_order(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_27__* %2, %struct.bfd_link_order* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.bfd_link_order*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.elf_link_hash_entry**, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.elf_backend_data*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.elf_link_hash_entry*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store %struct.bfd_link_order* %3, %struct.bfd_link_order** %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %29)
  store %struct.elf_backend_data* %30, %struct.elf_backend_data** %16, align 8
  %31 = load i32, i32* @MAX_INT_RELS_PER_EXT_REL, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %17, align 8
  %34 = alloca %struct.TYPE_29__, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %37 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_26__* @bfd_reloc_type_lookup(i32* %35, i32 %42)
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %10, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %45 = icmp eq %struct.TYPE_26__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %4
  %47 = load i32, i32* @bfd_error_bad_value, align 4
  %48 = call i32 @bfd_set_error(i32 %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %399

50:                                               ; preds = %4
  %51 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %52 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %59 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %58)
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 3
  %61 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %60, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %63 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %62)
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %61, i64 %66
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %68)
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %67, i64 %72
  store %struct.elf_link_hash_entry** %73, %struct.elf_link_hash_entry*** %14, align 8
  %74 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %75 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %50
  %80 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %81 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @BFD_ASSERT(i32 %92)
  %94 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %14, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %94, align 8
  br label %181

95:                                               ; preds = %50
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %98 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %99 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_37__*, %struct.TYPE_37__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i64 @bfd_wrapped_link_hash_lookup(i32* %96, %struct.bfd_link_info* %97, i8* %105, i32 %106, i32 %107, i32 %108)
  %110 = inttoptr i64 %109 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %110, %struct.elf_link_hash_entry** %22, align 8
  %111 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %112 = icmp ne %struct.elf_link_hash_entry* %111, null
  br i1 %112, label %113, label %151

113:                                              ; preds = %95
  %114 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @bfd_link_hash_defined, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %122 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @bfd_link_hash_defweak, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %120, %113
  %128 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %129 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %132, align 8
  store %struct.TYPE_27__* %133, %struct.TYPE_27__** %23, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %11, align 8
  %139 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %14, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %139, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = load i64, i64* %13, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %13, align 8
  br label %180

151:                                              ; preds = %120, %95
  %152 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %153 = icmp ne %struct.elf_link_hash_entry* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %156 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %155, i32 0, i32 0
  store i32 -2, i32* %156, align 8
  %157 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %22, align 8
  %158 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %14, align 8
  store %struct.elf_link_hash_entry* %157, %struct.elf_link_hash_entry** %158, align 8
  store i64 0, i64* %11, align 8
  br label %179

159:                                              ; preds = %151
  %160 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %161 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %160, i32 0, i32 1
  %162 = load %struct.TYPE_40__*, %struct.TYPE_40__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %162, i32 0, i32 1
  %164 = load i32 (%struct.bfd_link_info*, i8*, i32*, i32*, i32)*, i32 (%struct.bfd_link_info*, i8*, i32*, i32*, i32)** %163, align 8
  %165 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %166 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %167 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 %164(%struct.bfd_link_info* %165, i8* %173, i32* null, i32* null, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %159
  %177 = load i32, i32* @FALSE, align 4
  store i32 %177, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %399

178:                                              ; preds = %159
  store i64 0, i64* %11, align 8
  br label %179

179:                                              ; preds = %178, %154
  br label %180

180:                                              ; preds = %179, %127
  br label %181

181:                                              ; preds = %180, %79
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %270

186:                                              ; preds = %181
  %187 = load i64, i64* %13, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %270

189:                                              ; preds = %186
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %191 = call i32 @bfd_get_reloc_size(%struct.TYPE_26__* %190)
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %24, align 4
  %193 = call i32* @bfd_zmalloc(i32 %192)
  store i32* %193, i32** %26, align 8
  %194 = load i32*, i32** %26, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %399

198:                                              ; preds = %189
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %200 = load i32*, i32** %6, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i32*, i32** %26, align 8
  %203 = call i32 @_bfd_relocate_contents(%struct.TYPE_26__* %199, i32* %200, i64 %201, i32* %202)
  store i32 %203, i32* %25, align 4
  %204 = load i32, i32* %25, align 4
  switch i32 %204, label %206 [
    i32 130, label %205
    i32 129, label %207
    i32 128, label %209
  ]

205:                                              ; preds = %198
  br label %254

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %198, %206
  %208 = call i32 (...) @abort() #4
  unreachable

209:                                              ; preds = %198
  %210 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %211 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %209
  %216 = load i32*, i32** %6, align 8
  %217 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %218 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %223, align 8
  %225 = call i8* @bfd_section_name(i32* %216, %struct.TYPE_32__* %224)
  store i8* %225, i8** %28, align 8
  br label %235

226:                                              ; preds = %209
  %227 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %228 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  store i8* %234, i8** %28, align 8
  br label %235

235:                                              ; preds = %226, %215
  %236 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %237 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %236, i32 0, i32 1
  %238 = load %struct.TYPE_40__*, %struct.TYPE_40__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %238, i32 0, i32 0
  %240 = load i32 (%struct.bfd_link_info*, i32*, i8*, i32, i64, i32*, i32*, i64)*, i32 (%struct.bfd_link_info*, i32*, i8*, i32, i64, i32*, i32*, i64)** %239, align 8
  %241 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %242 = load i8*, i8** %28, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i64, i64* %13, align 8
  %247 = call i32 %240(%struct.bfd_link_info* %241, i32* null, i8* %242, i32 %245, i64 %246, i32* null, i32* null, i64 0)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %235
  %250 = load i32*, i32** %26, align 8
  %251 = call i32 @free(i32* %250)
  %252 = load i32, i32* @FALSE, align 4
  store i32 %252, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %399

253:                                              ; preds = %235
  br label %254

254:                                              ; preds = %253, %205
  %255 = load i32*, i32** %6, align 8
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %257 = load i32*, i32** %26, align 8
  %258 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %259 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %24, align 4
  %262 = call i32 @bfd_set_section_contents(i32* %255, %struct.TYPE_27__* %256, i32* %257, i64 %260, i32 %261)
  store i32 %262, i32* %27, align 4
  %263 = load i32*, i32** %26, align 8
  %264 = call i32 @free(i32* %263)
  %265 = load i32, i32* %27, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %254
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %399

269:                                              ; preds = %254
  br label %270

270:                                              ; preds = %269, %186, %181
  %271 = load %struct.bfd_link_order*, %struct.bfd_link_order** %9, align 8
  %272 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %12, align 8
  %274 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %275 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %270
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* %12, align 8
  %283 = add nsw i64 %282, %281
  store i64 %283, i64* %12, align 8
  br label %284

284:                                              ; preds = %278, %270
  store i32 0, i32* %20, align 4
  br label %285

285:                                              ; preds = %307, %284
  %286 = load i32, i32* %20, align 4
  %287 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %288 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %287, i32 0, i32 0
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp ult i32 %286, %291
  br i1 %292, label %293, label %310

293:                                              ; preds = %285
  %294 = load i64, i64* %12, align 8
  %295 = load i32, i32* %20, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 2
  store i64 %294, i64* %298, align 8
  %299 = load i32, i32* %20, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 1
  store i64 0, i64* %302, align 8
  %303 = load i32, i32* %20, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 0
  store i64 0, i64* %306, align 8
  br label %307

307:                                              ; preds = %293
  %308 = load i32, i32* %20, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %20, align 4
  br label %285

310:                                              ; preds = %285
  %311 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %312 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %311, i32 0, i32 0
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 32
  br i1 %316, label %317, label %325

317:                                              ; preds = %310
  %318 = load i64, i64* %11, align 8
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i64 @ELF32_R_INFO(i64 %318, i32 %321)
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 0
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 1
  store i64 %322, i64* %324, align 8
  br label %333

325:                                              ; preds = %310
  %326 = load i64, i64* %11, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i64 @ELF64_R_INFO(i64 %326, i32 %329)
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 0
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 1
  store i64 %330, i64* %332, align 8
  br label %333

333:                                              ; preds = %325, %317
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %335 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %334)
  %336 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %335, i32 0, i32 2
  store %struct.TYPE_28__* %336, %struct.TYPE_28__** %15, align 8
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  store i32* %339, i32** %19, align 8
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @SHT_REL, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %367

345:                                              ; preds = %333
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %347 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %346)
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %351 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %350, i32 0, i32 0
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = mul nsw i32 %349, %354
  %356 = load i32*, i32** %19, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %19, align 8
  %359 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %360 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %359, i32 0, i32 0
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 5
  %363 = load i32 (i32*, %struct.TYPE_29__*, i32*)*, i32 (i32*, %struct.TYPE_29__*, i32*)** %362, align 8
  %364 = load i32*, i32** %6, align 8
  %365 = load i32*, i32** %19, align 8
  %366 = call i32 %363(i32* %364, %struct.TYPE_29__* %34, i32* %365)
  br label %392

367:                                              ; preds = %333
  %368 = load i64, i64* %13, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i64 0
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 0
  store i64 %368, i64* %370, align 16
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %372 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %371)
  %373 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %376 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %375, i32 0, i32 0
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %374, %379
  %381 = load i32*, i32** %19, align 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  store i32* %383, i32** %19, align 8
  %384 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %385 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %384, i32 0, i32 0
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 4
  %388 = load i32 (i32*, %struct.TYPE_29__*, i32*)*, i32 (i32*, %struct.TYPE_29__*, i32*)** %387, align 8
  %389 = load i32*, i32** %6, align 8
  %390 = load i32*, i32** %19, align 8
  %391 = call i32 %388(i32* %389, %struct.TYPE_29__* %34, i32* %390)
  br label %392

392:                                              ; preds = %367, %345
  %393 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %394 = call %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__* %393)
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %395, align 8
  %398 = load i32, i32* @TRUE, align 4
  store i32 %398, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %399

399:                                              ; preds = %392, %267, %249, %196, %176, %46
  %400 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %400)
  %401 = load i32, i32* %5, align 4
  ret i32 %401
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_26__* @bfd_reloc_type_lookup(i32*, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_30__* @elf_section_data(%struct.TYPE_27__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_wrapped_link_hash_lookup(i32*, %struct.bfd_link_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_26__*) #1

declare dso_local i32* @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_relocate_contents(%struct.TYPE_26__*, i32*, i64, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i8* @bfd_section_name(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_27__*, i32*, i64, i32) #1

declare dso_local i64 @ELF32_R_INFO(i64, i32) #1

declare dso_local i64 @ELF64_R_INFO(i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
