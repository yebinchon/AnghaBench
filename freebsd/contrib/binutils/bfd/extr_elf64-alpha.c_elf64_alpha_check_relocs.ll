; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_check_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_check_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, i32, i64, i32, i64 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.alpha_elf_link_hash_entry = type { i32, %struct.alpha_elf_reloc_entry*, %struct.TYPE_28__ }
%struct.alpha_elf_reloc_entry = type { i64, i32, i32, %struct.alpha_elf_reloc_entry*, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.alpha_elf_got_entry = type { i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@RM_IGNORE = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@R_ALPHA_LITUSE = common dso_local global i64 0, align 8
@ALPHA_ELF_LINK_HASH_LU_ADDR = common dso_local global i32 0, align 4
@ALPHA_ELF_LINK_HASH_TLS_IE = common dso_local global i32 0, align 4
@DF_STATIC_TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".rela\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_IN_MEMORY = common dso_local global i32 0, align 4
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.bfd_link_info*, %struct.TYPE_30__*, %struct.TYPE_32__*)* @elf64_alpha_check_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf64_alpha_check_relocs(i32* %0, %struct.bfd_link_info* %1, %struct.TYPE_30__* %2, %struct.TYPE_32__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.alpha_elf_link_hash_entry**, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.alpha_elf_link_hash_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.alpha_elf_got_entry*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.alpha_elf_reloc_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  %28 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %29 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %5, align 8
  br label %514

34:                                               ; preds = %4
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SEC_ALLOC, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %5, align 8
  br label %514

43:                                               ; preds = %34
  %44 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %45 = call %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info* %44)
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  store i32* %51, i32** %10, align 8
  %52 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %53 = call %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info* %52)
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %11, align 8
  store i8* null, i8** %12, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call %struct.TYPE_33__* @elf_tdata(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  store %struct.TYPE_31__* %58, %struct.TYPE_31__** %13, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32* %59)
  store %struct.alpha_elf_link_hash_entry** %60, %struct.alpha_elf_link_hash_entry*** %14, align 8
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i64 %65
  store %struct.TYPE_32__* %66, %struct.TYPE_32__** %16, align 8
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_32__* %67, %struct.TYPE_32__** %15, align 8
  br label %68

68:                                               ; preds = %509, %55
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %71 = icmp ult %struct.TYPE_32__* %69, %70
  br i1 %71, label %72, label %512

72:                                               ; preds = %68
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ELF64_R_SYM(i32 %75)
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store %struct.alpha_elf_link_hash_entry* null, %struct.alpha_elf_link_hash_entry** %20, align 8
  br label %123

83:                                               ; preds = %72
  %84 = load %struct.alpha_elf_link_hash_entry**, %struct.alpha_elf_link_hash_entry*** %14, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %85, %88
  %90 = getelementptr inbounds %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %84, i64 %89
  %91 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %90, align 8
  store %struct.alpha_elf_link_hash_entry* %91, %struct.alpha_elf_link_hash_entry** %20, align 8
  br label %92

92:                                               ; preds = %110, %83
  %93 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %94 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @bfd_link_hash_indirect, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %92
  %101 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %102 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @bfd_link_hash_warning, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %100, %92
  %109 = phi i1 [ true, %92 ], [ %107, %100 ]
  br i1 %109, label %110, label %119

110:                                              ; preds = %108
  %111 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %112 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.alpha_elf_link_hash_entry*
  store %struct.alpha_elf_link_hash_entry* %118, %struct.alpha_elf_link_hash_entry** %20, align 8
  br label %92

119:                                              ; preds = %108
  %120 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %121 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %82
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %22, align 8
  %125 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %126 = icmp ne %struct.alpha_elf_link_hash_entry* %125, null
  br i1 %126, label %127, label %159

127:                                              ; preds = %123
  %128 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %129 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %134 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %139 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RM_IGNORE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %157, label %143

143:                                              ; preds = %137, %127
  %144 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %145 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %151 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @bfd_link_hash_defweak, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149, %143, %137, %132
  %158 = load i64, i64* @TRUE, align 8
  store i64 %158, i64* %22, align 8
  br label %159

159:                                              ; preds = %157, %149, %123
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @ELF64_R_TYPE(i32 %162)
  store i64 %163, i64* %19, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %24, align 4
  %167 = load i64, i64* %19, align 8
  switch i64 %167, label %257 [
    i64 133, label %168
    i64 138, label %209
    i64 137, label %209
    i64 136, label %209
    i64 135, label %209
    i64 134, label %209
    i64 141, label %209
    i64 132, label %210
    i64 131, label %210
    i64 129, label %220
    i64 130, label %222
    i64 140, label %222
    i64 139, label %223
    i64 128, label %236
  ]

168:                                              ; preds = %159
  store i32 3, i32* %23, align 4
  br label %169

169:                                              ; preds = %200, %168
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 1
  store %struct.TYPE_32__* %171, %struct.TYPE_32__** %15, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %173 = icmp ult %struct.TYPE_32__* %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @ELF64_R_TYPE(i32 %177)
  %179 = load i64, i64* @R_ALPHA_LITUSE, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %174, %169
  %182 = phi i1 [ false, %169 ], [ %180, %174 ]
  br i1 %182, label %183, label %201

183:                                              ; preds = %181
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %186, 1
  br i1 %187, label %188, label %200

188:                                              ; preds = %183
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %191, 6
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 1, %196
  %198 = load i32, i32* %21, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %21, align 4
  br label %200

200:                                              ; preds = %193, %188, %183
  br label %169

201:                                              ; preds = %181
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 -1
  store %struct.TYPE_32__* %203, %struct.TYPE_32__** %15, align 8
  %204 = load i32, i32* %21, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @ALPHA_ELF_LINK_HASH_LU_ADDR, align 4
  store i32 %207, i32* %21, align 4
  br label %208

208:                                              ; preds = %206, %201
  br label %257

209:                                              ; preds = %159, %159, %159, %159, %159, %159
  store i32 1, i32* %23, align 4
  br label %257

210:                                              ; preds = %159, %159
  %211 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %212 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load i64, i64* %22, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215, %210
  store i32 4, i32* %23, align 4
  br label %219

219:                                              ; preds = %218, %215
  br label %257

220:                                              ; preds = %159
  store i64 0, i64* %18, align 8
  store %struct.alpha_elf_link_hash_entry* null, %struct.alpha_elf_link_hash_entry** %20, align 8
  %221 = load i64, i64* @FALSE, align 8
  store i64 %221, i64* %22, align 8
  br label %222

222:                                              ; preds = %159, %159, %220
  store i32 3, i32* %23, align 4
  br label %257

223:                                              ; preds = %159
  store i32 3, i32* %23, align 4
  %224 = load i32, i32* @ALPHA_ELF_LINK_HASH_TLS_IE, align 4
  store i32 %224, i32* %21, align 4
  %225 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %226 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = load i32, i32* @DF_STATIC_TLS, align 4
  %231 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %232 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %223
  br label %257

236:                                              ; preds = %159
  %237 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %238 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load i64, i64* %22, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241, %236
  store i32 4, i32* %23, align 4
  br label %245

245:                                              ; preds = %244, %241
  %246 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %247 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load i32, i32* @DF_STATIC_TLS, align 4
  %252 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %253 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %250, %245
  br label %257

257:                                              ; preds = %159, %256, %235, %222, %219, %209, %208
  %258 = load i32, i32* %23, align 4
  %259 = and i32 %258, 1
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %276

261:                                              ; preds = %257
  %262 = load i32*, i32** %6, align 8
  %263 = call %struct.TYPE_25__* @alpha_elf_tdata(i32* %262)
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = icmp eq i32* %265, null
  br i1 %266, label %267, label %275

267:                                              ; preds = %261
  %268 = load i32*, i32** %6, align 8
  %269 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %270 = call i32 @elf64_alpha_create_got_section(i32* %268, %struct.bfd_link_info* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %267
  %273 = load i64, i64* @FALSE, align 8
  store i64 %273, i64* %5, align 8
  br label %514

274:                                              ; preds = %267
  br label %275

275:                                              ; preds = %274, %261
  br label %276

276:                                              ; preds = %275, %257
  %277 = load i32, i32* %23, align 4
  %278 = and i32 %277, 2
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %325

280:                                              ; preds = %276
  %281 = load i32*, i32** %6, align 8
  %282 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %283 = load i64, i64* %19, align 8
  %284 = load i64, i64* %18, align 8
  %285 = load i32, i32* %24, align 4
  %286 = call %struct.alpha_elf_got_entry* @get_got_entry(i32* %281, %struct.alpha_elf_link_hash_entry* %282, i64 %283, i64 %284, i32 %285)
  store %struct.alpha_elf_got_entry* %286, %struct.alpha_elf_got_entry** %25, align 8
  %287 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %25, align 8
  %288 = icmp ne %struct.alpha_elf_got_entry* %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %280
  %290 = load i64, i64* @FALSE, align 8
  store i64 %290, i64* %5, align 8
  br label %514

291:                                              ; preds = %280
  %292 = load i32, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %324

294:                                              ; preds = %291
  %295 = load i32, i32* %21, align 4
  %296 = load %struct.alpha_elf_got_entry*, %struct.alpha_elf_got_entry** %25, align 8
  %297 = getelementptr inbounds %struct.alpha_elf_got_entry, %struct.alpha_elf_got_entry* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %301 = icmp ne %struct.alpha_elf_link_hash_entry* %300, null
  br i1 %301, label %302, label %323

302:                                              ; preds = %294
  %303 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %304 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %21, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %21, align 4
  %308 = load i32, i32* %21, align 4
  %309 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %310 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  %311 = load i64, i64* %22, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %302
  %314 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %315 = call i64 @elf64_alpha_want_plt(%struct.alpha_elf_link_hash_entry* %314)
  %316 = icmp ne i64 %315, 0
  br label %317

317:                                              ; preds = %313, %302
  %318 = phi i1 [ false, %302 ], [ %316, %313 ]
  %319 = zext i1 %318 to i32
  %320 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %321 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 1
  store i32 %319, i32* %322, align 4
  br label %323

323:                                              ; preds = %317, %294
  br label %324

324:                                              ; preds = %323, %291
  br label %325

325:                                              ; preds = %324, %276
  %326 = load i32, i32* %23, align 4
  %327 = and i32 %326, 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %508

329:                                              ; preds = %325
  %330 = load i8*, i8** %12, align 8
  %331 = icmp eq i8* %330, null
  br i1 %331, label %332, label %364

332:                                              ; preds = %329
  %333 = load i32*, i32** %6, align 8
  %334 = load i32*, i32** %6, align 8
  %335 = call %struct.TYPE_23__* @elf_elfheader(i32* %334)
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %339 = call %struct.TYPE_21__* @elf_section_data(%struct.TYPE_30__* %338)
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i8* @bfd_elf_string_from_elf_section(i32* %333, i32 %337, i32 %342)
  store i8* %343, i8** %12, align 8
  %344 = load i8*, i8** %12, align 8
  %345 = icmp eq i8* %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %332
  %347 = load i64, i64* @FALSE, align 8
  store i64 %347, i64* %5, align 8
  br label %514

348:                                              ; preds = %332
  %349 = load i8*, i8** %12, align 8
  %350 = call i64 @CONST_STRNEQ(i8* %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %348
  %353 = load i32*, i32** %6, align 8
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %355 = call i32 @bfd_get_section_name(i32* %353, %struct.TYPE_30__* %354)
  %356 = load i8*, i8** %12, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 5
  %358 = call i64 @strcmp(i32 %355, i8* %357)
  %359 = icmp eq i64 %358, 0
  br label %360

360:                                              ; preds = %352, %348
  %361 = phi i1 [ false, %348 ], [ %359, %352 ]
  %362 = zext i1 %361 to i32
  %363 = call i32 @BFD_ASSERT(i32 %362)
  br label %364

364:                                              ; preds = %360, %329
  %365 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %366 = icmp eq %struct.TYPE_30__* %365, null
  br i1 %366, label %367, label %409

367:                                              ; preds = %364
  %368 = load i32*, i32** %10, align 8
  %369 = load i8*, i8** %12, align 8
  %370 = call %struct.TYPE_30__* @bfd_get_section_by_name(i32* %368, i8* %369)
  store %struct.TYPE_30__* %370, %struct.TYPE_30__** %11, align 8
  %371 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %372 = icmp eq %struct.TYPE_30__* %371, null
  br i1 %372, label %373, label %408

373:                                              ; preds = %367
  %374 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %375 = load i32, i32* @SEC_IN_MEMORY, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @SEC_READONLY, align 4
  %380 = or i32 %378, %379
  store i32 %380, i32* %26, align 4
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @SEC_ALLOC, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %373
  %388 = load i32, i32* @SEC_ALLOC, align 4
  %389 = load i32, i32* @SEC_LOAD, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* %26, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %26, align 4
  br label %393

393:                                              ; preds = %387, %373
  %394 = load i32*, i32** %10, align 8
  %395 = load i8*, i8** %12, align 8
  %396 = load i32, i32* %26, align 4
  %397 = call %struct.TYPE_30__* @bfd_make_section_with_flags(i32* %394, i8* %395, i32 %396)
  store %struct.TYPE_30__* %397, %struct.TYPE_30__** %11, align 8
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %399 = icmp eq %struct.TYPE_30__* %398, null
  br i1 %399, label %405, label %400

400:                                              ; preds = %393
  %401 = load i32*, i32** %10, align 8
  %402 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %403 = call i32 @bfd_set_section_alignment(i32* %401, %struct.TYPE_30__* %402, i32 3)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %400, %393
  %406 = load i64, i64* @FALSE, align 8
  store i64 %406, i64* %5, align 8
  br label %514

407:                                              ; preds = %400
  br label %408

408:                                              ; preds = %407, %367
  br label %409

409:                                              ; preds = %408, %364
  %410 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %411 = icmp ne %struct.alpha_elf_link_hash_entry* %410, null
  br i1 %411, label %412, label %481

412:                                              ; preds = %409
  %413 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %414 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %413, i32 0, i32 1
  %415 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %414, align 8
  store %struct.alpha_elf_reloc_entry* %415, %struct.alpha_elf_reloc_entry** %27, align 8
  br label %416

416:                                              ; preds = %433, %412
  %417 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %418 = icmp ne %struct.alpha_elf_reloc_entry* %417, null
  br i1 %418, label %419, label %437

419:                                              ; preds = %416
  %420 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %421 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* %19, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %432

425:                                              ; preds = %419
  %426 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %427 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %426, i32 0, i32 4
  %428 = load %struct.TYPE_30__*, %struct.TYPE_30__** %427, align 8
  %429 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %430 = icmp eq %struct.TYPE_30__* %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %425
  br label %437

432:                                              ; preds = %425, %419
  br label %433

433:                                              ; preds = %432
  %434 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %435 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %434, i32 0, i32 3
  %436 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %435, align 8
  store %struct.alpha_elf_reloc_entry* %436, %struct.alpha_elf_reloc_entry** %27, align 8
  br label %416

437:                                              ; preds = %431, %416
  %438 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %439 = icmp ne %struct.alpha_elf_reloc_entry* %438, null
  br i1 %439, label %475, label %440

440:                                              ; preds = %437
  store i32 32, i32* %17, align 4
  %441 = load i32*, i32** %6, align 8
  %442 = load i32, i32* %17, align 4
  %443 = call i64 @bfd_alloc(i32* %441, i32 %442)
  %444 = inttoptr i64 %443 to %struct.alpha_elf_reloc_entry*
  store %struct.alpha_elf_reloc_entry* %444, %struct.alpha_elf_reloc_entry** %27, align 8
  %445 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %446 = icmp ne %struct.alpha_elf_reloc_entry* %445, null
  br i1 %446, label %449, label %447

447:                                              ; preds = %440
  %448 = load i64, i64* @FALSE, align 8
  store i64 %448, i64* %5, align 8
  br label %514

449:                                              ; preds = %440
  %450 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %451 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %452 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %451, i32 0, i32 4
  store %struct.TYPE_30__* %450, %struct.TYPE_30__** %452, align 8
  %453 = load i64, i64* %19, align 8
  %454 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %455 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %454, i32 0, i32 0
  store i64 %453, i64* %455, align 8
  %456 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %457 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %456, i32 0, i32 1
  store i32 1, i32* %457, align 8
  %458 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @SEC_READONLY, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  %464 = zext i1 %463 to i32
  %465 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %466 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %465, i32 0, i32 2
  store i32 %464, i32* %466, align 4
  %467 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %468 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %467, i32 0, i32 1
  %469 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %468, align 8
  %470 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %471 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %470, i32 0, i32 3
  store %struct.alpha_elf_reloc_entry* %469, %struct.alpha_elf_reloc_entry** %471, align 8
  %472 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %473 = load %struct.alpha_elf_link_hash_entry*, %struct.alpha_elf_link_hash_entry** %20, align 8
  %474 = getelementptr inbounds %struct.alpha_elf_link_hash_entry, %struct.alpha_elf_link_hash_entry* %473, i32 0, i32 1
  store %struct.alpha_elf_reloc_entry* %472, %struct.alpha_elf_reloc_entry** %474, align 8
  br label %480

475:                                              ; preds = %437
  %476 = load %struct.alpha_elf_reloc_entry*, %struct.alpha_elf_reloc_entry** %27, align 8
  %477 = getelementptr inbounds %struct.alpha_elf_reloc_entry, %struct.alpha_elf_reloc_entry* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %477, align 8
  br label %480

480:                                              ; preds = %475, %449
  br label %507

481:                                              ; preds = %409
  %482 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %483 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %482, i32 0, i32 2
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %506

486:                                              ; preds = %481
  %487 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %488 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = add i64 %490, 4
  %492 = trunc i64 %491 to i32
  store i32 %492, i32* %488, align 4
  %493 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @SEC_READONLY, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %505

499:                                              ; preds = %486
  %500 = load i32, i32* @DF_TEXTREL, align 4
  %501 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %502 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = or i32 %503, %500
  store i32 %504, i32* %502, align 8
  br label %505

505:                                              ; preds = %499, %486
  br label %506

506:                                              ; preds = %505, %481
  br label %507

507:                                              ; preds = %506, %480
  br label %508

508:                                              ; preds = %507, %325
  br label %509

509:                                              ; preds = %508
  %510 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %511 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %510, i32 1
  store %struct.TYPE_32__* %511, %struct.TYPE_32__** %15, align 8
  br label %68

512:                                              ; preds = %68
  %513 = load i64, i64* @TRUE, align 8
  store i64 %513, i64* %5, align 8
  br label %514

514:                                              ; preds = %512, %447, %405, %346, %289, %272, %41, %32
  %515 = load i64, i64* %5, align 8
  ret i64 %515
}

declare dso_local %struct.TYPE_22__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_33__* @elf_tdata(i32*) #1

declare dso_local %struct.alpha_elf_link_hash_entry** @alpha_elf_sym_hashes(i32*) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i64 @ELF64_R_TYPE(i32) #1

declare dso_local %struct.TYPE_25__* @alpha_elf_tdata(i32*) #1

declare dso_local i32 @elf64_alpha_create_got_section(i32*, %struct.bfd_link_info*) #1

declare dso_local %struct.alpha_elf_got_entry* @get_got_entry(i32*, %struct.alpha_elf_link_hash_entry*, i64, i64, i32) #1

declare dso_local i64 @elf64_alpha_want_plt(%struct.alpha_elf_link_hash_entry*) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @elf_elfheader(i32*) #1

declare dso_local %struct.TYPE_21__* @elf_section_data(%struct.TYPE_30__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bfd_get_section_name(i32*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local %struct.TYPE_30__* @bfd_make_section_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_30__*, i32) #1

declare dso_local i64 @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
