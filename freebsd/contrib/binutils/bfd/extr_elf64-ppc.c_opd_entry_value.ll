; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_opd_entry_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_opd_entry_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64, i64, i32, i64, %struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_36__* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_36__ = type { %struct.TYPE_37__* }
%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_39__ = type { i64, i32* }
%struct.TYPE_38__ = type { i64, i64 }
%struct.elf_link_hash_entry = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i64, %struct.TYPE_37__* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_30__ = type { %struct.TYPE_39__ }

@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@R_PPC64_ADDR64 = common dso_local global i64 0, align 8
@R_PPC64_TOC = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8
@SEC_MERGE = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_37__*, i64, %struct.TYPE_37__**, i64*)* @opd_entry_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opd_entry_value(%struct.TYPE_37__* %0, i64 %1, %struct.TYPE_37__** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_37__**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca %struct.TYPE_39__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_37__*, align 8
  %22 = alloca %struct.TYPE_38__*, align 8
  %23 = alloca %struct.elf_link_hash_entry**, align 8
  %24 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_37__** %2, %struct.TYPE_37__*** %8, align 8
  store i64* %3, i64** %9, align 8
  %25 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_36__*, %struct.TYPE_36__** %26, align 8
  store %struct.TYPE_36__* %27, %struct.TYPE_36__** %10, align 8
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %4
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %34 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @bfd_get_section_contents(%struct.TYPE_36__* %33, %struct.TYPE_37__* %34, i64* %16, i64 %35, i32 8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i64 -1, i64* %5, align 8
  br label %346

39:                                               ; preds = %32
  %40 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %8, align 8
  %41 = icmp ne %struct.TYPE_37__** %40, null
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %18, align 8
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %44, align 8
  store %struct.TYPE_37__* %45, %struct.TYPE_37__** %17, align 8
  br label %46

46:                                               ; preds = %72, %42
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %48 = icmp ne %struct.TYPE_37__* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %16, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SEC_LOAD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SEC_ALLOC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  store %struct.TYPE_37__* %70, %struct.TYPE_37__** %18, align 8
  br label %71

71:                                               ; preds = %69, %62, %55, %49
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %74, align 8
  store %struct.TYPE_37__* %75, %struct.TYPE_37__** %17, align 8
  br label %46

76:                                               ; preds = %46
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %78 = icmp ne %struct.TYPE_37__* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %81 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %8, align 8
  store %struct.TYPE_37__* %80, %struct.TYPE_37__** %81, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %79
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %39
  %94 = load i64, i64* %16, align 8
  store i64 %94, i64* %5, align 8
  br label %346

95:                                               ; preds = %4
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %97 = call %struct.TYPE_29__* @ppc64_elf_tdata(%struct.TYPE_36__* %96)
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %98, align 8
  store %struct.TYPE_28__* %99, %struct.TYPE_28__** %11, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %101 = icmp eq %struct.TYPE_28__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = call %struct.TYPE_28__* @_bfd_elf_link_read_relocs(%struct.TYPE_36__* %103, %struct.TYPE_37__* %104, i32* null, i32* null, i32 %105)
  store %struct.TYPE_28__* %106, %struct.TYPE_28__** %11, align 8
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %108, %struct.TYPE_28__** %12, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %110 = icmp ne %struct.TYPE_28__* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 @BFD_ASSERT(i32 %111)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i64 -1
  store %struct.TYPE_28__* %118, %struct.TYPE_28__** %13, align 8
  store i64 -1, i64* %15, align 8
  br label %119

119:                                              ; preds = %343, %107
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %122 = icmp ult %struct.TYPE_28__* %120, %121
  br i1 %122, label %123, label %344

123:                                              ; preds = %119
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %127 = ptrtoint %struct.TYPE_28__* %125 to i64
  %128 = ptrtoint %struct.TYPE_28__* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 24
  %131 = sdiv i64 %130, 2
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i64 %131
  store %struct.TYPE_28__* %132, %struct.TYPE_28__** %14, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i64 1
  store %struct.TYPE_28__* %140, %struct.TYPE_28__** %12, align 8
  br label %343

141:                                              ; preds = %123
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  store %struct.TYPE_28__* %148, %struct.TYPE_28__** %13, align 8
  br label %342

149:                                              ; preds = %141
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %151 = call %struct.TYPE_30__* @elf_tdata(%struct.TYPE_36__* %150)
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 0
  store %struct.TYPE_39__* %152, %struct.TYPE_39__** %19, align 8
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ELF64_R_TYPE(i32 %155)
  %157 = load i64, i64* @R_PPC64_ADDR64, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %341

159:                                              ; preds = %149
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @ELF64_R_TYPE(i32 %163)
  %165 = load i64, i64* @R_PPC64_TOC, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %341

167:                                              ; preds = %159
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @ELF64_R_SYM(i32 %170)
  store i64 %171, i64* %20, align 8
  %172 = load i64, i64* %20, align 8
  %173 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %238

177:                                              ; preds = %167
  %178 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = bitcast i32* %180 to %struct.TYPE_38__*
  store %struct.TYPE_38__* %181, %struct.TYPE_38__** %22, align 8
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %183 = icmp eq %struct.TYPE_38__* %182, null
  br i1 %183, label %184, label %199

184:                                              ; preds = %177
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %187 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call %struct.TYPE_38__* @bfd_elf_get_elf_syms(%struct.TYPE_36__* %185, %struct.TYPE_39__* %186, i64 %189, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_38__* %190, %struct.TYPE_38__** %22, align 8
  %191 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %192 = icmp eq %struct.TYPE_38__* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %184
  br label %344

194:                                              ; preds = %184
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %196 = bitcast %struct.TYPE_38__* %195 to i32*
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 1
  store i32* %196, i32** %198, align 8
  br label %199

199:                                              ; preds = %194, %177
  %200 = load i64, i64* %20, align 8
  %201 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %202 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %201, i64 %200
  store %struct.TYPE_38__* %202, %struct.TYPE_38__** %22, align 8
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %15, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %21, align 8
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @SHN_UNDEF, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %199
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @SHN_LORESERVE, align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %211, %199
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %219 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SHN_HIRESERVE, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %217, %211
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %225 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %226 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call %struct.TYPE_37__* @bfd_section_from_elf_index(%struct.TYPE_36__* %224, i64 %227)
  store %struct.TYPE_37__* %228, %struct.TYPE_37__** %21, align 8
  br label %229

229:                                              ; preds = %223, %217
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @SEC_MERGE, align 4
  %234 = and i32 %232, %233
  %235 = icmp eq i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = call i32 @BFD_ASSERT(i32 %236)
  br label %303

238:                                              ; preds = %167
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %240 = call %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_36__* %239)
  store %struct.elf_link_hash_entry** %240, %struct.elf_link_hash_entry*** %23, align 8
  %241 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %23, align 8
  %242 = load i64, i64* %20, align 8
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %244 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = sub i64 %242, %245
  %247 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %241, i64 %246
  %248 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %247, align 8
  store %struct.elf_link_hash_entry* %248, %struct.elf_link_hash_entry** %24, align 8
  br label %249

249:                                              ; preds = %265, %238
  %250 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %251 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @bfd_link_hash_indirect, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %263, label %256

256:                                              ; preds = %249
  %257 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %258 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @bfd_link_hash_warning, align 8
  %262 = icmp eq i64 %260, %261
  br label %263

263:                                              ; preds = %256, %249
  %264 = phi i1 [ true, %249 ], [ %262, %256 ]
  br i1 %264, label %265, label %273

265:                                              ; preds = %263
  %266 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %267 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %272, %struct.elf_link_hash_entry** %24, align 8
  br label %249

273:                                              ; preds = %263
  %274 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %275 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @bfd_link_hash_defined, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %287, label %280

280:                                              ; preds = %273
  %281 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %282 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @bfd_link_hash_defweak, align 8
  %286 = icmp eq i64 %284, %285
  br label %287

287:                                              ; preds = %280, %273
  %288 = phi i1 [ true, %273 ], [ %286, %280 ]
  %289 = zext i1 %288 to i32
  %290 = call i32 @BFD_ASSERT(i32 %289)
  %291 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %292 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %15, align 8
  %297 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %24, align 8
  %298 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %301, align 8
  store %struct.TYPE_37__* %302, %struct.TYPE_37__** %21, align 8
  br label %303

303:                                              ; preds = %287, %229
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %15, align 8
  %308 = add nsw i64 %307, %306
  store i64 %308, i64* %15, align 8
  %309 = load i64*, i64** %9, align 8
  %310 = icmp ne i64* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %303
  %312 = load i64, i64* %15, align 8
  %313 = load i64*, i64** %9, align 8
  store i64 %312, i64* %313, align 8
  br label %314

314:                                              ; preds = %311, %303
  %315 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %8, align 8
  %316 = icmp ne %struct.TYPE_37__** %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %319 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %8, align 8
  store %struct.TYPE_37__* %318, %struct.TYPE_37__** %319, align 8
  br label %320

320:                                              ; preds = %317, %314
  %321 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %322 = icmp ne %struct.TYPE_37__* %321, null
  br i1 %322, label %323, label %340

323:                                              ; preds = %320
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 4
  %326 = load %struct.TYPE_35__*, %struct.TYPE_35__** %325, align 8
  %327 = icmp ne %struct.TYPE_35__* %326, null
  br i1 %327, label %328, label %340

328:                                              ; preds = %323
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %333, %336
  %338 = load i64, i64* %15, align 8
  %339 = add nsw i64 %338, %337
  store i64 %339, i64* %15, align 8
  br label %340

340:                                              ; preds = %328, %323, %320
  br label %341

341:                                              ; preds = %340, %159, %149
  br label %344

342:                                              ; preds = %147
  br label %343

343:                                              ; preds = %342, %138
  br label %119

344:                                              ; preds = %341, %193, %119
  %345 = load i64, i64* %15, align 8
  store i64 %345, i64* %5, align 8
  br label %346

346:                                              ; preds = %344, %93, %38
  %347 = load i64, i64* %5, align 8
  ret i64 %347
}

declare dso_local i32 @bfd_get_section_contents(%struct.TYPE_36__*, %struct.TYPE_37__*, i64*, i64, i32) #1

declare dso_local %struct.TYPE_29__* @ppc64_elf_tdata(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_28__* @_bfd_elf_link_read_relocs(%struct.TYPE_36__*, %struct.TYPE_37__*, i32*, i32*, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_30__* @elf_tdata(%struct.TYPE_36__*) #1

declare dso_local i64 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local %struct.TYPE_38__* @bfd_elf_get_elf_syms(%struct.TYPE_36__*, %struct.TYPE_39__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_37__* @bfd_section_from_elf_index(%struct.TYPE_36__*, i64) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
