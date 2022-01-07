; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_relax_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_relax_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }
%struct.bfd_link_info = type { i32, i32, i64, i64 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.mips_elf_link_hash_entry = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i64, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_33__ }
%struct.TYPE_34__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_31__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@R_MIPS_JALR = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_ABS = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_40__* null, align 8
@SHN_COMMON = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_40__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_mips_relax_section(i32* %0, %struct.TYPE_40__* %1, %struct.bfd_link_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_40__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %26 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %7, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %14, align 8
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %17, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %18, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %40 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %435

45:                                               ; preds = %4
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %48 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %49 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_28__* @_bfd_elf_link_read_relocs(i32* %46, %struct.TYPE_40__* %47, i32* null, i32* null, i32 %50)
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %10, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %53 = icmp eq %struct.TYPE_28__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %5, align 4
  br label %435

56:                                               ; preds = %45
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call %struct.TYPE_29__* @get_elf_backend_data(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %60, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i64 %68
  store %struct.TYPE_28__* %69, %struct.TYPE_28__** %12, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call %struct.TYPE_30__* @elf_tdata(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  store %struct.TYPE_27__* %72, %struct.TYPE_27__** %13, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @elf_bad_symtab(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %56
  br label %81

77:                                               ; preds = %56
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %77, %76
  %82 = phi i64 [ 0, %76 ], [ %80, %77 ]
  store i64 %82, i64* %15, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %83, %struct.TYPE_28__** %11, align 8
  br label %84

84:                                               ; preds = %385, %81
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %87 = icmp ult %struct.TYPE_28__* %85, %86
  br i1 %87, label %88, label %388

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ELF_R_TYPE(i32* %89, i32 %92)
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* @R_MIPS_JALR, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %385

98:                                               ; preds = %88
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ELF_R_SYM(i32* %99, i32 %102)
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* %22, align 8
  %105 = load i64, i64* %15, align 8
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %224

107:                                              ; preds = %98
  %108 = load i32*, i32** %6, align 8
  %109 = call i64* @elf_sym_hashes(i32* %108)
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %15, align 8
  %112 = sub i64 %110, %111
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %115, %struct.mips_elf_link_hash_entry** %25, align 8
  br label %116

116:                                              ; preds = %134, %107
  %117 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %118 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @bfd_link_hash_indirect, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %126 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @bfd_link_hash_warning, align 8
  %131 = icmp eq i64 %129, %130
  br label %132

132:                                              ; preds = %124, %116
  %133 = phi i1 [ true, %116 ], [ %131, %124 ]
  br i1 %133, label %134, label %143

134:                                              ; preds = %132
  %135 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %136 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %142, %struct.mips_elf_link_hash_entry** %25, align 8
  br label %116

143:                                              ; preds = %132
  %144 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %145 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @bfd_link_hash_defined, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %159, label %151

151:                                              ; preds = %143
  %152 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %153 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @bfd_link_hash_defweak, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %151, %143
  %160 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %161 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %165, align 8
  %167 = icmp ne %struct.TYPE_40__* %166, null
  br i1 %167, label %168, label %184

168:                                              ; preds = %159
  %169 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %170 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %175 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %173
  %179 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %180 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %178, %159, %151
  br label %385

185:                                              ; preds = %178, %173, %168
  %186 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %187 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_40__*, %struct.TYPE_40__** %191, align 8
  store %struct.TYPE_40__* %192, %struct.TYPE_40__** %23, align 8
  %193 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %194 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %194, align 8
  %196 = icmp ne %struct.TYPE_38__* %195, null
  br i1 %196, label %197, label %215

197:                                              ; preds = %185
  %198 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %199 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %206 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %204, %209
  %211 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %212 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %210, %213
  store i32 %214, i32* %19, align 4
  br label %223

215:                                              ; preds = %185
  %216 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %25, align 8
  %217 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %215, %197
  br label %299

224:                                              ; preds = %98
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %226 = icmp eq %struct.TYPE_26__* %225, null
  br i1 %226, label %227, label %251

227:                                              ; preds = %224
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %227
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %236, %struct.TYPE_26__** %18, align 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %238 = icmp eq %struct.TYPE_26__* %237, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %232
  %240 = load i32*, i32** %6, align 8
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call %struct.TYPE_26__* @bfd_elf_get_elf_syms(i32* %240, %struct.TYPE_27__* %241, i64 %244, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_26__* %245, %struct.TYPE_26__** %18, align 8
  br label %246

246:                                              ; preds = %239, %232
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %248 = icmp eq %struct.TYPE_26__* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %419

250:                                              ; preds = %246
  br label %251

251:                                              ; preds = %250, %227, %224
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %253 = load i64, i64* %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i64 %253
  store %struct.TYPE_26__* %254, %struct.TYPE_26__** %26, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @SHN_UNDEF, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %251
  br label %385

261:                                              ; preds = %251
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @SHN_ABS, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load %struct.TYPE_40__*, %struct.TYPE_40__** @bfd_abs_section_ptr, align 8
  store %struct.TYPE_40__* %268, %struct.TYPE_40__** %23, align 8
  br label %284

269:                                              ; preds = %261
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SHN_COMMON, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load %struct.TYPE_40__*, %struct.TYPE_40__** @bfd_com_section_ptr, align 8
  store %struct.TYPE_40__* %276, %struct.TYPE_40__** %23, align 8
  br label %283

277:                                              ; preds = %269
  %278 = load i32*, i32** %6, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = call %struct.TYPE_40__* @bfd_section_from_elf_index(i32* %278, i64 %281)
  store %struct.TYPE_40__* %282, %struct.TYPE_40__** %23, align 8
  br label %283

283:                                              ; preds = %277, %275
  br label %284

284:                                              ; preds = %283, %267
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %290 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_38__*, %struct.TYPE_38__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %288, %293
  %295 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %296 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %294, %297
  store i32 %298, i32* %19, align 4
  br label %299

299:                                              ; preds = %285, %223
  %300 = load i32, i32* %19, align 4
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %300, %303
  %305 = load i32, i32* %17, align 4
  %306 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %305, %308
  %310 = add nsw i32 %309, 4
  %311 = sub nsw i32 %304, %310
  store i32 %311, i32* %20, align 4
  %312 = load i32, i32* %20, align 4
  %313 = and i32 %312, 3
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %299
  br label %385

316:                                              ; preds = %299
  %317 = load i32, i32* %20, align 4
  %318 = ashr i32 %317, 2
  store i32 %318, i32* %20, align 4
  %319 = load i32, i32* %20, align 4
  %320 = icmp slt i32 %319, -32768
  br i1 %320, label %324, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %20, align 4
  %323 = icmp sge i32 %322, 32768
  br i1 %323, label %324, label %325

324:                                              ; preds = %321, %316
  br label %385

325:                                              ; preds = %321
  %326 = load i32*, i32** %14, align 8
  %327 = icmp eq i32* %326, null
  br i1 %327, label %328, label %349

328:                                              ; preds = %325
  %329 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %330 = call %struct.TYPE_31__* @elf_section_data(%struct.TYPE_40__* %329)
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %341

335:                                              ; preds = %328
  %336 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %337 = call %struct.TYPE_31__* @elf_section_data(%struct.TYPE_40__* %336)
  %338 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  store i32* %340, i32** %14, align 8
  br label %348

341:                                              ; preds = %328
  %342 = load i32*, i32** %6, align 8
  %343 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %344 = call i32 @bfd_malloc_and_get_section(i32* %342, %struct.TYPE_40__* %343, i32** %14)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  br label %419

347:                                              ; preds = %341
  br label %348

348:                                              ; preds = %347, %335
  br label %349

349:                                              ; preds = %348, %325
  %350 = load i32*, i32** %6, align 8
  %351 = load i32*, i32** %14, align 8
  %352 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %353 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %351, i64 %355
  %357 = call i64 @bfd_get_32(i32* %350, i32* %356)
  store i64 %357, i64* %24, align 8
  %358 = load i64, i64* %24, align 8
  %359 = and i64 %358, 4229955583
  %360 = icmp eq i64 %359, 63497
  br i1 %360, label %361, label %362

361:                                              ; preds = %349
  store i64 68222976, i64* %24, align 8
  br label %369

362:                                              ; preds = %349
  %363 = load i64, i64* %24, align 8
  %364 = and i64 %363, 4229955583
  %365 = icmp eq i64 %364, 8
  br i1 %365, label %366, label %367

366:                                              ; preds = %362
  store i64 268435456, i64* %24, align 8
  br label %368

367:                                              ; preds = %362
  br label %385

368:                                              ; preds = %366
  br label %369

369:                                              ; preds = %368, %361
  %370 = load i32, i32* %20, align 4
  %371 = and i32 %370, 65535
  %372 = sext i32 %371 to i64
  %373 = load i64, i64* %24, align 8
  %374 = or i64 %373, %372
  store i64 %374, i64* %24, align 8
  %375 = load i32*, i32** %6, align 8
  %376 = load i64, i64* %24, align 8
  %377 = load i32*, i32** %14, align 8
  %378 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  %383 = call i32 @bfd_put_32(i32* %375, i64 %376, i32* %382)
  %384 = load i32, i32* @TRUE, align 4
  store i32 %384, i32* %16, align 4
  br label %385

385:                                              ; preds = %369, %367, %324, %315, %260, %184, %97
  %386 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i32 1
  store %struct.TYPE_28__* %387, %struct.TYPE_28__** %11, align 8
  br label %84

388:                                              ; preds = %84
  %389 = load i32*, i32** %14, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %417

391:                                              ; preds = %388
  %392 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %393 = call %struct.TYPE_31__* @elf_section_data(%struct.TYPE_40__* %392)
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = load i32*, i32** %14, align 8
  %398 = icmp ne i32* %396, %397
  br i1 %398, label %399, label %417

399:                                              ; preds = %391
  %400 = load i32, i32* %16, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %410, label %402

402:                                              ; preds = %399
  %403 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %404 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %402
  %408 = load i32*, i32** %14, align 8
  %409 = call i32 @free(i32* %408)
  br label %416

410:                                              ; preds = %402, %399
  %411 = load i32*, i32** %14, align 8
  %412 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %413 = call %struct.TYPE_31__* @elf_section_data(%struct.TYPE_40__* %412)
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %414, i32 0, i32 0
  store i32* %411, i32** %415, align 8
  br label %416

416:                                              ; preds = %410, %407
  br label %417

417:                                              ; preds = %416, %391, %388
  %418 = load i32, i32* @TRUE, align 4
  store i32 %418, i32* %5, align 4
  br label %435

419:                                              ; preds = %346, %249
  %420 = load i32*, i32** %14, align 8
  %421 = icmp ne i32* %420, null
  br i1 %421, label %422, label %433

422:                                              ; preds = %419
  %423 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %424 = call %struct.TYPE_31__* @elf_section_data(%struct.TYPE_40__* %423)
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = load i32*, i32** %14, align 8
  %429 = icmp ne i32* %427, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %422
  %431 = load i32*, i32** %14, align 8
  %432 = call i32 @free(i32* %431)
  br label %433

433:                                              ; preds = %430, %422, %419
  %434 = load i32, i32* @FALSE, align 4
  store i32 %434, i32* %5, align 4
  br label %435

435:                                              ; preds = %433, %417, %54, %43
  %436 = load i32, i32* %5, align 4
  ret i32 %436
}

declare dso_local %struct.TYPE_28__* @_bfd_elf_link_read_relocs(i32*, %struct.TYPE_40__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_29__* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_30__* @elf_tdata(i32*) #1

declare dso_local i64 @elf_bad_symtab(i32*) #1

declare dso_local i32 @ELF_R_TYPE(i32*, i32) #1

declare dso_local i64 @ELF_R_SYM(i32*, i32) #1

declare dso_local i64* @elf_sym_hashes(i32*) #1

declare dso_local %struct.TYPE_26__* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_27__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_40__* @bfd_section_from_elf_index(i32*, i64) #1

declare dso_local %struct.TYPE_31__* @elf_section_data(%struct.TYPE_40__*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_40__*, i32**) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
