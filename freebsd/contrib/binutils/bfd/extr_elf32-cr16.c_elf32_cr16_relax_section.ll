; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-cr16.c_elf32_cr16_relax_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-cr16.c_elf32_cr16_relax_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i32, i64, i16, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i16 }
%struct.bfd_link_info = type { i32, i64 }
%struct.TYPE_34__ = type { i64, i8* }
%struct.TYPE_44__ = type { i64, i16, i32, i8*, i64 }
%struct.elf_link_hash_entry = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i16, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i16, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i16 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_36__ = type { %struct.TYPE_44__*, %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_44__* }

@FALSE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@R_CR16_DISP16 = common dso_local global i64 0, align 8
@R_CR16_DISP24 = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@bfd_und_section_ptr = common dso_local global %struct.TYPE_45__* null, align 8
@SHN_ABS = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_45__* null, align 8
@SHN_COMMON = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_45__* null, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@R_CR16_DISP8 = common dso_local global i64 0, align 8
@R_CR16_IMM16 = common dso_local global i64 0, align 8
@R_CR16_IMM20 = common dso_local global i64 0, align 8
@R_CR16_IMM32 = common dso_local global i64 0, align 8
@R_CR16_IMM4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_45__*, %struct.bfd_link_info*, i32*)* @elf32_cr16_relax_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_cr16_relax_section(i32* %0, %struct.TYPE_45__* %1, %struct.bfd_link_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_44__*, align 8
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.TYPE_44__*, align 8
  %16 = alloca i16, align 2
  %17 = alloca %struct.TYPE_44__*, align 8
  %18 = alloca %struct.TYPE_45__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.elf_link_hash_entry*, align 8
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %7, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %14, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %15, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %28 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SEC_RELOC, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEC_CODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %38, %31, %4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %5, align 4
  br label %630

52:                                               ; preds = %43
  %53 = load i32*, i32** %6, align 8
  %54 = call %struct.TYPE_35__* @elf_tdata(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %54, i32 0, i32 0
  store %struct.TYPE_34__* %55, %struct.TYPE_34__** %10, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %58 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %59 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_44__* @_bfd_elf_link_read_relocs(i32* %56, %struct.TYPE_45__* %57, i32* null, i32* null, i32 %60)
  store %struct.TYPE_44__* %61, %struct.TYPE_44__** %11, align 8
  %62 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %63 = icmp eq %struct.TYPE_44__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %588

65:                                               ; preds = %52
  %66 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %67 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %66, i64 %69
  store %struct.TYPE_44__* %70, %struct.TYPE_44__** %13, align 8
  %71 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  store %struct.TYPE_44__* %71, %struct.TYPE_44__** %12, align 8
  br label %72

72:                                               ; preds = %520, %65
  %73 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %74 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %75 = icmp ult %struct.TYPE_44__* %73, %74
  br i1 %75, label %76, label %523

76:                                               ; preds = %72
  %77 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @ELF32_R_TYPE(i8* %79)
  %81 = load i64, i64* @R_CR16_DISP16, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @ELF32_R_TYPE(i8* %87)
  %89 = load i64, i64* @R_CR16_DISP24, align 8
  %90 = trunc i64 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %520

93:                                               ; preds = %84, %76
  %94 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %95 = icmp eq %struct.TYPE_44__* %94, null
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %98 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %97)
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_44__*, %struct.TYPE_44__** %100, align 8
  %102 = icmp ne %struct.TYPE_44__* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %105 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %104)
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_44__*, %struct.TYPE_44__** %107, align 8
  store %struct.TYPE_44__* %108, %struct.TYPE_44__** %14, align 8
  br label %116

109:                                              ; preds = %96
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %112 = call i32 @bfd_malloc_and_get_section(i32* %110, %struct.TYPE_45__* %111, %struct.TYPE_44__** %14)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %588

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %93
  %118 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %119 = icmp eq %struct.TYPE_44__* %118, null
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = bitcast i8* %128 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %129, %struct.TYPE_44__** %15, align 8
  %130 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %131 = icmp eq %struct.TYPE_44__* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call %struct.TYPE_44__* @bfd_elf_get_elf_syms(i32* %133, %struct.TYPE_34__* %134, i64 %137, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_44__* %138, %struct.TYPE_44__** %15, align 8
  br label %139

139:                                              ; preds = %132, %125
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %141 = icmp eq %struct.TYPE_44__* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %588

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %120, %117
  %145 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @ELF32_R_SYM(i8* %147)
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %149, %152
  br i1 %153, label %154, label %211

154:                                              ; preds = %144
  %155 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %156 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @ELF32_R_SYM(i8* %158)
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %155, i64 %160
  store %struct.TYPE_44__* %161, %struct.TYPE_44__** %17, align 8
  %162 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SHN_UNDEF, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %154
  %168 = load %struct.TYPE_45__*, %struct.TYPE_45__** @bfd_und_section_ptr, align 8
  store %struct.TYPE_45__* %168, %struct.TYPE_45__** %18, align 8
  br label %193

169:                                              ; preds = %154
  %170 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SHN_ABS, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load %struct.TYPE_45__*, %struct.TYPE_45__** @bfd_abs_section_ptr, align 8
  store %struct.TYPE_45__* %176, %struct.TYPE_45__** %18, align 8
  br label %192

177:                                              ; preds = %169
  %178 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @SHN_COMMON, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load %struct.TYPE_45__*, %struct.TYPE_45__** @bfd_com_section_ptr, align 8
  store %struct.TYPE_45__* %184, %struct.TYPE_45__** %18, align 8
  br label %191

185:                                              ; preds = %177
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call %struct.TYPE_45__* @bfd_section_from_elf_index(i32* %186, i64 %189)
  store %struct.TYPE_45__* %190, %struct.TYPE_45__** %18, align 8
  br label %191

191:                                              ; preds = %185, %183
  br label %192

192:                                              ; preds = %191, %175
  br label %193

193:                                              ; preds = %192, %167
  %194 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %194, i32 0, i32 1
  %196 = load i16, i16* %195, align 8
  %197 = zext i16 %196 to i32
  %198 = load %struct.TYPE_45__*, %struct.TYPE_45__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_42__*, %struct.TYPE_42__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %200, i32 0, i32 0
  %202 = load i16, i16* %201, align 2
  %203 = zext i16 %202 to i32
  %204 = add nsw i32 %197, %203
  %205 = load %struct.TYPE_45__*, %struct.TYPE_45__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %205, i32 0, i32 2
  %207 = load i16, i16* %206, align 8
  %208 = zext i16 %207 to i32
  %209 = add nsw i32 %204, %208
  %210 = trunc i32 %209 to i16
  store i16 %210, i16* %16, align 2
  br label %275

211:                                              ; preds = %144
  %212 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @ELF32_R_SYM(i8* %214)
  %216 = sext i32 %215 to i64
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %216, %219
  store i64 %220, i64* %19, align 8
  %221 = load i32*, i32** %6, align 8
  %222 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %221)
  %223 = load i64, i64* %19, align 8
  %224 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %222, i64 %223
  %225 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %224, align 8
  store %struct.elf_link_hash_entry* %225, %struct.elf_link_hash_entry** %20, align 8
  %226 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %227 = icmp ne %struct.elf_link_hash_entry* %226, null
  %228 = zext i1 %227 to i32
  %229 = call i32 @BFD_ASSERT(i32 %228)
  %230 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %231 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @bfd_link_hash_defined, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %211
  %237 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %238 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @bfd_link_hash_defweak, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %520

244:                                              ; preds = %236, %211
  %245 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %246 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %248, i32 0, i32 0
  %250 = load i16, i16* %249, align 8
  %251 = zext i16 %250 to i32
  %252 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %253 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_38__*, %struct.TYPE_38__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 0
  %261 = load i16, i16* %260, align 2
  %262 = zext i16 %261 to i32
  %263 = add nsw i32 %251, %262
  %264 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %20, align 8
  %265 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %269, i32 0, i32 0
  %271 = load i16, i16* %270, align 8
  %272 = zext i16 %271 to i32
  %273 = add nsw i32 %263, %272
  %274 = trunc i32 %273 to i16
  store i16 %274, i16* %16, align 2
  br label %275

275:                                              ; preds = %244, %193
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @ELF32_R_TYPE(i8* %278)
  %280 = load i64, i64* @R_CR16_DISP24, align 8
  %281 = trunc i64 %280 to i32
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %396

283:                                              ; preds = %275
  %284 = load i16, i16* %16, align 2
  store i16 %284, i16* %21, align 2
  %285 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_42__*, %struct.TYPE_42__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %287, i32 0, i32 0
  %289 = load i16, i16* %288, align 2
  %290 = zext i16 %289 to i32
  %291 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %291, i32 0, i32 2
  %293 = load i16, i16* %292, align 8
  %294 = zext i16 %293 to i32
  %295 = add nsw i32 %290, %294
  %296 = load i16, i16* %21, align 2
  %297 = zext i16 %296 to i32
  %298 = sub nsw i32 %297, %295
  %299 = trunc i32 %298 to i16
  store i16 %299, i16* %21, align 2
  %300 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load i16, i16* %21, align 2
  %304 = zext i16 %303 to i32
  %305 = sub nsw i32 %304, %302
  %306 = trunc i32 %305 to i16
  store i16 %306, i16* %21, align 2
  %307 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = load i16, i16* %21, align 2
  %311 = zext i16 %310 to i64
  %312 = add nsw i64 %311, %309
  %313 = trunc i64 %312 to i16
  store i16 %313, i16* %21, align 2
  %314 = load i16, i16* %21, align 2
  %315 = zext i16 %314 to i64
  %316 = icmp slt i64 %315, 65536
  br i1 %316, label %317, label %395

317:                                              ; preds = %283
  %318 = load i16, i16* %21, align 2
  %319 = zext i16 %318 to i64
  %320 = icmp sgt i64 %319, -65538
  br i1 %320, label %321, label %395

321:                                              ; preds = %317
  %322 = load i32*, i32** %6, align 8
  %323 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %324 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %323, i64 %327
  %329 = call i64 @bfd_get_32(i32* %322, %struct.TYPE_44__* %328)
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %22, align 4
  %331 = load i32, i32* %22, align 4
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 16
  br i1 %333, label %334, label %359

334:                                              ; preds = %321
  %335 = load i32*, i32** %6, align 8
  %336 = load i32, i32* %22, align 4
  %337 = lshr i32 %336, 20
  %338 = and i32 15, %337
  %339 = shl i32 %338, 4
  %340 = or i32 6144, %339
  %341 = trunc i32 %340 to i16
  %342 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %343 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %342, i64 %346
  %348 = call i32 @bfd_put_16(i32* %335, i16 zeroext %341, %struct.TYPE_44__* %347)
  %349 = load i32*, i32** %6, align 8
  %350 = load i16, i16* %21, align 2
  %351 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %352 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %351, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %356, i64 2
  %358 = call i32 @bfd_put_16(i32* %349, i16 zeroext %350, %struct.TYPE_44__* %357)
  br label %360

359:                                              ; preds = %321
  br label %520

360:                                              ; preds = %334
  %361 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %362 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %363 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %362)
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 0
  store %struct.TYPE_44__* %361, %struct.TYPE_44__** %364, align 8
  %365 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %366 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %367 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %366)
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %368, i32 0, i32 0
  store %struct.TYPE_44__* %365, %struct.TYPE_44__** %369, align 8
  %370 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %371 = bitcast %struct.TYPE_44__* %370 to i8*
  %372 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %372, i32 0, i32 1
  store i8* %371, i8** %373, align 8
  %374 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @ELF32_R_SYM(i8* %376)
  %378 = load i64, i64* @R_CR16_DISP16, align 8
  %379 = call i8* @ELF32_R_INFO(i32 %377, i64 %378)
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %380, i32 0, i32 3
  store i8* %379, i8** %381, align 8
  %382 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %383 = load i32*, i32** %6, align 8
  %384 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %385 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, 2
  %389 = call i32 @elf32_cr16_relax_delete_bytes(%struct.bfd_link_info* %382, i32* %383, %struct.TYPE_45__* %384, i32 %388, i32 2)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %360
  br label %588

392:                                              ; preds = %360
  %393 = load i32, i32* @TRUE, align 4
  %394 = load i32*, i32** %9, align 8
  store i32 %393, i32* %394, align 4
  br label %395

395:                                              ; preds = %392, %317, %283
  br label %396

396:                                              ; preds = %395, %275
  %397 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %397, i32 0, i32 3
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @ELF32_R_TYPE(i8* %399)
  %401 = load i64, i64* @R_CR16_DISP16, align 8
  %402 = trunc i64 %401 to i32
  %403 = icmp eq i32 %400, %402
  br i1 %403, label %404, label %519

404:                                              ; preds = %396
  %405 = load i16, i16* %16, align 2
  store i16 %405, i16* %23, align 2
  %406 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %406, i32 0, i32 3
  %408 = load %struct.TYPE_42__*, %struct.TYPE_42__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %408, i32 0, i32 0
  %410 = load i16, i16* %409, align 2
  %411 = zext i16 %410 to i32
  %412 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %412, i32 0, i32 2
  %414 = load i16, i16* %413, align 8
  %415 = zext i16 %414 to i32
  %416 = add nsw i32 %411, %415
  %417 = load i16, i16* %23, align 2
  %418 = zext i16 %417 to i32
  %419 = sub nsw i32 %418, %416
  %420 = trunc i32 %419 to i16
  store i16 %420, i16* %23, align 2
  %421 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %422 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = load i16, i16* %23, align 2
  %425 = zext i16 %424 to i32
  %426 = sub nsw i32 %425, %423
  %427 = trunc i32 %426 to i16
  store i16 %427, i16* %23, align 2
  %428 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %429 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %428, i32 0, i32 4
  %430 = load i64, i64* %429, align 8
  %431 = load i16, i16* %23, align 2
  %432 = zext i16 %431 to i64
  %433 = add nsw i64 %432, %430
  %434 = trunc i64 %433 to i16
  store i16 %434, i16* %23, align 2
  %435 = load i16, i16* %23, align 2
  %436 = zext i16 %435 to i64
  %437 = icmp slt i64 %436, 254
  br i1 %437, label %438, label %518

438:                                              ; preds = %404
  %439 = load i16, i16* %23, align 2
  %440 = zext i16 %439 to i64
  %441 = icmp sgt i64 %440, -256
  br i1 %441, label %442, label %518

442:                                              ; preds = %438
  %443 = load i32*, i32** %6, align 8
  %444 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %445 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %444, i64 %448
  %450 = call i64 @bfd_get_16(i32* %443, %struct.TYPE_44__* %449)
  %451 = trunc i64 %450 to i16
  store i16 %451, i16* %24, align 2
  %452 = load i16, i16* %24, align 2
  %453 = zext i16 %452 to i32
  %454 = and i32 %453, 65280
  %455 = icmp eq i32 %454, 6144
  br i1 %455, label %456, label %482

456:                                              ; preds = %442
  %457 = load i32*, i32** %6, align 8
  %458 = load i16, i16* %24, align 2
  %459 = zext i16 %458 to i32
  %460 = ashr i32 %459, 4
  %461 = and i32 15, %460
  %462 = shl i32 %461, 4
  %463 = or i32 1, %462
  %464 = trunc i32 %463 to i16
  %465 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %466 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %467 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %465, i64 %469
  %471 = call i32 @bfd_put_8(i32* %457, i16 zeroext %464, %struct.TYPE_44__* %470)
  %472 = load i32*, i32** %6, align 8
  %473 = load i16, i16* %23, align 2
  %474 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %475 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %474, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %479, i64 2
  %481 = call i32 @bfd_put_8(i32* %472, i16 zeroext %473, %struct.TYPE_44__* %480)
  br label %483

482:                                              ; preds = %442
  br label %520

483:                                              ; preds = %456
  %484 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %485 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %486 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %485)
  %487 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %486, i32 0, i32 0
  store %struct.TYPE_44__* %484, %struct.TYPE_44__** %487, align 8
  %488 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %489 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %490 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %489)
  %491 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %491, i32 0, i32 0
  store %struct.TYPE_44__* %488, %struct.TYPE_44__** %492, align 8
  %493 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %494 = bitcast %struct.TYPE_44__* %493 to i8*
  %495 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %496 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %495, i32 0, i32 1
  store i8* %494, i8** %496, align 8
  %497 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %498 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %497, i32 0, i32 3
  %499 = load i8*, i8** %498, align 8
  %500 = call i32 @ELF32_R_SYM(i8* %499)
  %501 = load i64, i64* @R_CR16_DISP8, align 8
  %502 = call i8* @ELF32_R_INFO(i32 %500, i64 %501)
  %503 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %504 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %503, i32 0, i32 3
  store i8* %502, i8** %504, align 8
  %505 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %506 = load i32*, i32** %6, align 8
  %507 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %508 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %509 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 4
  %511 = add nsw i32 %510, 2
  %512 = call i32 @elf32_cr16_relax_delete_bytes(%struct.bfd_link_info* %505, i32* %506, %struct.TYPE_45__* %507, i32 %511, i32 2)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %515, label %514

514:                                              ; preds = %483
  br label %588

515:                                              ; preds = %483
  %516 = load i32, i32* @TRUE, align 4
  %517 = load i32*, i32** %9, align 8
  store i32 %516, i32* %517, align 4
  br label %518

518:                                              ; preds = %515, %438, %404
  br label %519

519:                                              ; preds = %518, %396
  br label %520

520:                                              ; preds = %519, %482, %359, %243, %92
  %521 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %522 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %521, i32 1
  store %struct.TYPE_44__* %522, %struct.TYPE_44__** %12, align 8
  br label %72

523:                                              ; preds = %72
  %524 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %525 = icmp ne %struct.TYPE_44__* %524, null
  br i1 %525, label %526, label %547

526:                                              ; preds = %523
  %527 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %528 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %527, i32 0, i32 1
  %529 = load i8*, i8** %528, align 8
  %530 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %531 = bitcast %struct.TYPE_44__* %530 to i8*
  %532 = icmp ne i8* %529, %531
  br i1 %532, label %533, label %547

533:                                              ; preds = %526
  %534 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %535 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %541, label %538

538:                                              ; preds = %533
  %539 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %540 = call i32 @free(%struct.TYPE_44__* %539)
  br label %546

541:                                              ; preds = %533
  %542 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %543 = bitcast %struct.TYPE_44__* %542 to i8*
  %544 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %545 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %544, i32 0, i32 1
  store i8* %543, i8** %545, align 8
  br label %546

546:                                              ; preds = %541, %538
  br label %547

547:                                              ; preds = %546, %526, %523
  %548 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %549 = icmp ne %struct.TYPE_44__* %548, null
  br i1 %549, label %550, label %573

550:                                              ; preds = %547
  %551 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %552 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %551)
  %553 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %553, i32 0, i32 0
  %555 = load %struct.TYPE_44__*, %struct.TYPE_44__** %554, align 8
  %556 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %557 = icmp ne %struct.TYPE_44__* %555, %556
  br i1 %557, label %558, label %573

558:                                              ; preds = %550
  %559 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %560 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %558
  %564 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %565 = call i32 @free(%struct.TYPE_44__* %564)
  br label %572

566:                                              ; preds = %558
  %567 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %568 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %569 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %568)
  %570 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %570, i32 0, i32 0
  store %struct.TYPE_44__* %567, %struct.TYPE_44__** %571, align 8
  br label %572

572:                                              ; preds = %566, %563
  br label %573

573:                                              ; preds = %572, %550, %547
  %574 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %575 = icmp ne %struct.TYPE_44__* %574, null
  br i1 %575, label %576, label %586

576:                                              ; preds = %573
  %577 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %578 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %577)
  %579 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %578, i32 0, i32 0
  %580 = load %struct.TYPE_44__*, %struct.TYPE_44__** %579, align 8
  %581 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %582 = icmp ne %struct.TYPE_44__* %580, %581
  br i1 %582, label %583, label %586

583:                                              ; preds = %576
  %584 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %585 = call i32 @free(%struct.TYPE_44__* %584)
  br label %586

586:                                              ; preds = %583, %576, %573
  %587 = load i32, i32* @TRUE, align 4
  store i32 %587, i32* %5, align 4
  br label %630

588:                                              ; preds = %514, %391, %142, %114, %64
  %589 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %590 = icmp ne %struct.TYPE_44__* %589, null
  br i1 %590, label %591, label %601

591:                                              ; preds = %588
  %592 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %593 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %592, i32 0, i32 1
  %594 = load i8*, i8** %593, align 8
  %595 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %596 = bitcast %struct.TYPE_44__* %595 to i8*
  %597 = icmp ne i8* %594, %596
  br i1 %597, label %598, label %601

598:                                              ; preds = %591
  %599 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %600 = call i32 @free(%struct.TYPE_44__* %599)
  br label %601

601:                                              ; preds = %598, %591, %588
  %602 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %603 = icmp ne %struct.TYPE_44__* %602, null
  br i1 %603, label %604, label %615

604:                                              ; preds = %601
  %605 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %606 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %605)
  %607 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %606, i32 0, i32 1
  %608 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %607, i32 0, i32 0
  %609 = load %struct.TYPE_44__*, %struct.TYPE_44__** %608, align 8
  %610 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %611 = icmp ne %struct.TYPE_44__* %609, %610
  br i1 %611, label %612, label %615

612:                                              ; preds = %604
  %613 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %614 = call i32 @free(%struct.TYPE_44__* %613)
  br label %615

615:                                              ; preds = %612, %604, %601
  %616 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %617 = icmp ne %struct.TYPE_44__* %616, null
  br i1 %617, label %618, label %628

618:                                              ; preds = %615
  %619 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %620 = call %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__* %619)
  %621 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %620, i32 0, i32 0
  %622 = load %struct.TYPE_44__*, %struct.TYPE_44__** %621, align 8
  %623 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %624 = icmp ne %struct.TYPE_44__* %622, %623
  br i1 %624, label %625, label %628

625:                                              ; preds = %618
  %626 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %627 = call i32 @free(%struct.TYPE_44__* %626)
  br label %628

628:                                              ; preds = %625, %618, %615
  %629 = load i32, i32* @FALSE, align 4
  store i32 %629, i32* %5, align 4
  br label %630

630:                                              ; preds = %628, %586, %50
  %631 = load i32, i32* %5, align 4
  ret i32 %631
}

declare dso_local %struct.TYPE_35__* @elf_tdata(i32*) #1

declare dso_local %struct.TYPE_44__* @_bfd_elf_link_read_relocs(i32*, %struct.TYPE_45__*, i32*, i32*, i32) #1

declare dso_local i32 @ELF32_R_TYPE(i8*) #1

declare dso_local %struct.TYPE_36__* @elf_section_data(%struct.TYPE_45__*) #1

declare dso_local i32 @bfd_malloc_and_get_section(i32*, %struct.TYPE_45__*, %struct.TYPE_44__**) #1

declare dso_local %struct.TYPE_44__* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_34__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ELF32_R_SYM(i8*) #1

declare dso_local %struct.TYPE_45__* @bfd_section_from_elf_index(i32*, i64) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_get_32(i32*, %struct.TYPE_44__*) #1

declare dso_local i32 @bfd_put_16(i32*, i16 zeroext, %struct.TYPE_44__*) #1

declare dso_local i8* @ELF32_R_INFO(i32, i64) #1

declare dso_local i32 @elf32_cr16_relax_delete_bytes(%struct.bfd_link_info*, i32*, %struct.TYPE_45__*, i32, i32) #1

declare dso_local i64 @bfd_get_16(i32*, %struct.TYPE_44__*) #1

declare dso_local i32 @bfd_put_8(i32*, i16 zeroext, %struct.TYPE_44__*) #1

declare dso_local i32 @free(%struct.TYPE_44__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
