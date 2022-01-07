; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_check_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_check_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_59__ = type { %struct.TYPE_60__* }
%struct.bfd_link_info = type { i32, i32, i32, i32, i64 }
%struct.TYPE_60__ = type { i32, i64, %struct.TYPE_60__* }
%struct.TYPE_62__ = type { i64, i32, i32 }
%struct.TYPE_61__ = type { i64 }
%struct.elf_link_hash_entry = type { i32, i32, %struct.TYPE_71__ }
%struct.TYPE_71__ = type { i64, %struct.TYPE_70__ }
%struct.TYPE_70__ = type { %struct.TYPE_69__ }
%struct.TYPE_69__ = type { i64 }
%struct.mips_got_info = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_65__* }
%struct.TYPE_65__ = type { i32 }
%struct.mips_elf_link_hash_table = type { i32, i64, i8* }
%struct.mips_elf_link_hash_entry = type { i8, i8*, i8*, i8*, i8*, i32, %struct.TYPE_75__, i8*, %struct.TYPE_60__*, %struct.TYPE_60__*, %struct.TYPE_60__* }
%struct.TYPE_75__ = type { i32, i32, %struct.TYPE_74__ }
%struct.TYPE_74__ = type { i64, %struct.TYPE_73__ }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i64 }
%struct.TYPE_68__ = type { %struct.TYPE_59__* }
%struct.TYPE_66__ = type { %struct.TYPE_60__**, %struct.TYPE_60__**, %struct.TYPE_61__ }
%struct.TYPE_67__ = type { %struct.TYPE_62__* }
%struct.TYPE_63__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { %struct.mips_got_info* }

@TRUE = common dso_local global i8* null, align 8
@SEC_RELOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@R_MIPS16_26 = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_KEEP = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"%B: Malformed reloc detected for section %s\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%B: GOT reloc at 0x%lx not expected in executables\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@DF_TEXTREL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%B: CALL16 reloc at 0x%lx not against global symbol\00", align 1
@STT_FUNC = common dso_local global i32 0, align 4
@DF_STATIC_TLS = common dso_local global i32 0, align 4
@GOT_TLS_GD = common dso_local global i8 0, align 1
@GOT_TLS_LDM = common dso_local global i8 0, align 1
@GOT_TLS_IE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_bfd_mips_elf_check_relocs(%struct.TYPE_59__* %0, %struct.bfd_link_info* %1, %struct.TYPE_60__* %2, %struct.TYPE_62__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_59__*, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct.TYPE_60__*, align 8
  %9 = alloca %struct.TYPE_62__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_59__*, align 8
  %12 = alloca %struct.TYPE_61__*, align 8
  %13 = alloca %struct.elf_link_hash_entry**, align 8
  %14 = alloca %struct.mips_got_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_62__*, align 8
  %17 = alloca %struct.TYPE_62__*, align 8
  %18 = alloca %struct.TYPE_60__*, align 8
  %19 = alloca %struct.TYPE_60__*, align 8
  %20 = alloca %struct.elf_backend_data*, align 8
  %21 = alloca %struct.mips_elf_link_hash_table*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_60__*, align 8
  %24 = alloca %struct.TYPE_62__*, align 8
  %25 = alloca %struct.TYPE_62__*, align 8
  %26 = alloca %struct.TYPE_62__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_60__**, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %33 = alloca %struct.TYPE_60__**, align 8
  %34 = alloca %struct.TYPE_60__*, align 8
  %35 = alloca %struct.TYPE_62__*, align 8
  %36 = alloca %struct.TYPE_62__*, align 8
  %37 = alloca %struct.TYPE_62__*, align 8
  %38 = alloca i64, align 8
  %39 = alloca %struct.TYPE_60__**, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32, align 4
  %43 = alloca %struct.elf_link_hash_entry*, align 8
  %44 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %45 = alloca i8, align 1
  %46 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %47 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %48 = alloca %struct.mips_elf_link_hash_entry*, align 8
  store %struct.TYPE_59__* %0, %struct.TYPE_59__** %6, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %7, align 8
  store %struct.TYPE_60__* %2, %struct.TYPE_60__** %8, align 8
  store %struct.TYPE_62__* %3, %struct.TYPE_62__** %9, align 8
  %49 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %50 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i8*, i8** @TRUE, align 8
  store i8* %54, i8** %5, align 8
  br label %1181

55:                                               ; preds = %4
  %56 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %57 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %56)
  store %struct.mips_elf_link_hash_table* %57, %struct.mips_elf_link_hash_table** %21, align 8
  %58 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %59 = call %struct.TYPE_68__* @elf_hash_table(%struct.bfd_link_info* %58)
  %60 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_59__*, %struct.TYPE_59__** %60, align 8
  store %struct.TYPE_59__* %61, %struct.TYPE_59__** %11, align 8
  %62 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %63 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %62)
  %64 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %63, i32 0, i32 2
  store %struct.TYPE_61__* %64, %struct.TYPE_61__** %12, align 8
  %65 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %66 = call %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_59__* %65)
  store %struct.elf_link_hash_entry** %66, %struct.elf_link_hash_entry*** %13, align 8
  %67 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %68 = call i64 @elf_bad_symtab(%struct.TYPE_59__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %75

71:                                               ; preds = %55
  %72 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %71, %70
  %76 = phi i64 [ 0, %70 ], [ %74, %71 ]
  store i64 %76, i64* %15, align 8
  %77 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %78 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %79 = call i8* @bfd_get_section_name(%struct.TYPE_59__* %77, %struct.TYPE_60__* %78)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i64 @FN_STUB_P(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %304

83:                                               ; preds = %75
  %84 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %85 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ELF_R_SYM(%struct.TYPE_59__* %84, i32 %87)
  store i64 %88, i64* %22, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %83
  %93 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %13, align 8
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %15, align 8
  %96 = sub i64 %94, %95
  %97 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %93, i64 %96
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %97, align 8
  %99 = icmp eq %struct.elf_link_hash_entry* %98, null
  br i1 %99, label %100, label %243

100:                                              ; preds = %92, %83
  %101 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_60__*, %struct.TYPE_60__** %102, align 8
  store %struct.TYPE_60__* %103, %struct.TYPE_60__** %23, align 8
  br label %104

104:                                              ; preds = %184, %100
  %105 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %106 = icmp ne %struct.TYPE_60__* %105, null
  br i1 %106, label %107, label %188

107:                                              ; preds = %104
  %108 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SEC_RELOC, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %121 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %122 = call i64 @mips16_stub_section_p(%struct.TYPE_59__* %120, %struct.TYPE_60__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119, %114, %107
  br label %184

125:                                              ; preds = %119
  %126 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %127 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %128 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %129 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.TYPE_62__* @_bfd_elf_link_read_relocs(%struct.TYPE_59__* %126, %struct.TYPE_60__* %127, i32* null, i32* null, i32 %130)
  store %struct.TYPE_62__* %131, %struct.TYPE_62__** %24, align 8
  %132 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %133 = icmp eq %struct.TYPE_62__* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i8*, i8** @FALSE, align 8
  store i8* %135, i8** %5, align 8
  br label %1181

136:                                              ; preds = %125
  %137 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %138 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %137, i64 %140
  store %struct.TYPE_62__* %141, %struct.TYPE_62__** %26, align 8
  %142 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  store %struct.TYPE_62__* %142, %struct.TYPE_62__** %25, align 8
  br label %143

143:                                              ; preds = %165, %136
  %144 = load %struct.TYPE_62__*, %struct.TYPE_62__** %25, align 8
  %145 = load %struct.TYPE_62__*, %struct.TYPE_62__** %26, align 8
  %146 = icmp ult %struct.TYPE_62__* %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %143
  %148 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %149 = load %struct.TYPE_62__*, %struct.TYPE_62__** %25, align 8
  %150 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ELF_R_SYM(%struct.TYPE_59__* %148, i32 %151)
  %153 = load i64, i64* %22, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %157 = load %struct.TYPE_62__*, %struct.TYPE_62__** %25, align 8
  %158 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ELF_R_TYPE(%struct.TYPE_59__* %156, i32 %159)
  %161 = load i32, i32* @R_MIPS16_26, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %168

164:                                              ; preds = %155, %147
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_62__*, %struct.TYPE_62__** %25, align 8
  %167 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %166, i32 1
  store %struct.TYPE_62__* %167, %struct.TYPE_62__** %25, align 8
  br label %143

168:                                              ; preds = %163, %143
  %169 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %170 = call %struct.TYPE_67__* @elf_section_data(%struct.TYPE_60__* %169)
  %171 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_62__*, %struct.TYPE_62__** %171, align 8
  %173 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %174 = icmp ne %struct.TYPE_62__* %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.TYPE_62__*, %struct.TYPE_62__** %24, align 8
  %177 = call i32 @free(%struct.TYPE_62__* %176)
  br label %178

178:                                              ; preds = %175, %168
  %179 = load %struct.TYPE_62__*, %struct.TYPE_62__** %25, align 8
  %180 = load %struct.TYPE_62__*, %struct.TYPE_62__** %26, align 8
  %181 = icmp ult %struct.TYPE_62__* %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %188

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %124
  %185 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %186 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_60__*, %struct.TYPE_60__** %186, align 8
  store %struct.TYPE_60__* %187, %struct.TYPE_60__** %23, align 8
  br label %104

188:                                              ; preds = %182, %104
  %189 = load %struct.TYPE_60__*, %struct.TYPE_60__** %23, align 8
  %190 = icmp eq %struct.TYPE_60__* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i32, i32* @SEC_EXCLUDE, align 4
  %193 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i8*, i8** @TRUE, align 8
  store i8* %197, i8** %5, align 8
  br label %1181

198:                                              ; preds = %188
  %199 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %200 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %199)
  %201 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %201, align 8
  %203 = icmp eq %struct.TYPE_60__** %202, null
  br i1 %203, label %204, label %230

204:                                              ; preds = %198
  %205 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %206 = call i64 @elf_bad_symtab(%struct.TYPE_59__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %210 = call i64 @NUM_SHDR_ENTRIES(%struct.TYPE_61__* %209)
  store i64 %210, i64* %27, align 8
  br label %215

211:                                              ; preds = %204
  %212 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %27, align 8
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i64, i64* %27, align 8
  %217 = mul i64 %216, 8
  store i64 %217, i64* %29, align 8
  %218 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %219 = load i64, i64* %29, align 8
  %220 = call %struct.TYPE_60__** @bfd_zalloc(%struct.TYPE_59__* %218, i64 %219)
  store %struct.TYPE_60__** %220, %struct.TYPE_60__*** %28, align 8
  %221 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %28, align 8
  %222 = icmp eq %struct.TYPE_60__** %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %215
  %224 = load i8*, i8** @FALSE, align 8
  store i8* %224, i8** %5, align 8
  br label %1181

225:                                              ; preds = %215
  %226 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %28, align 8
  %227 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %228 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %227)
  %229 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %228, i32 0, i32 1
  store %struct.TYPE_60__** %226, %struct.TYPE_60__*** %229, align 8
  br label %230

230:                                              ; preds = %225, %198
  %231 = load i32, i32* @SEC_KEEP, align 4
  %232 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %237 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %238 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %237)
  %239 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %239, align 8
  %241 = load i64, i64* %22, align 8
  %242 = getelementptr inbounds %struct.TYPE_60__*, %struct.TYPE_60__** %240, i64 %241
  store %struct.TYPE_60__* %236, %struct.TYPE_60__** %242, align 8
  br label %303

243:                                              ; preds = %92
  %244 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %13, align 8
  %245 = load i64, i64* %22, align 8
  %246 = load i64, i64* %15, align 8
  %247 = sub i64 %245, %246
  %248 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %244, i64 %247
  %249 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %248, align 8
  %250 = bitcast %struct.elf_link_hash_entry* %249 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %250, %struct.mips_elf_link_hash_entry** %30, align 8
  br label %251

251:                                              ; preds = %269, %243
  %252 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %30, align 8
  %253 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %252, i32 0, i32 6
  %254 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @bfd_link_hash_indirect, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %267, label %259

259:                                              ; preds = %251
  %260 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %30, align 8
  %261 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @bfd_link_hash_warning, align 8
  %266 = icmp eq i64 %264, %265
  br label %267

267:                                              ; preds = %259, %251
  %268 = phi i1 [ true, %251 ], [ %266, %259 ]
  br i1 %268, label %269, label %278

269:                                              ; preds = %267
  %270 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %30, align 8
  %271 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %270, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = inttoptr i64 %276 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %277, %struct.mips_elf_link_hash_entry** %30, align 8
  br label %251

278:                                              ; preds = %267
  %279 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %30, align 8
  %280 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %279, i32 0, i32 10
  %281 = load %struct.TYPE_60__*, %struct.TYPE_60__** %280, align 8
  %282 = icmp ne %struct.TYPE_60__* %281, null
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i32, i32* @SEC_EXCLUDE, align 4
  %285 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load i8*, i8** @TRUE, align 8
  store i8* %289, i8** %5, align 8
  br label %1181

290:                                              ; preds = %278
  %291 = load i32, i32* @SEC_KEEP, align 4
  %292 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %297 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %30, align 8
  %298 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %297, i32 0, i32 10
  store %struct.TYPE_60__* %296, %struct.TYPE_60__** %298, align 8
  %299 = load i8*, i8** @TRUE, align 8
  %300 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %301 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %300)
  %302 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %301, i32 0, i32 2
  store i8* %299, i8** %302, align 8
  br label %303

303:                                              ; preds = %290, %230
  br label %514

304:                                              ; preds = %75
  %305 = load i8*, i8** %10, align 8
  %306 = call i64 @CALL_STUB_P(i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %304
  %309 = load i8*, i8** %10, align 8
  %310 = call i64 @CALL_FP_STUB_P(i8* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %513

312:                                              ; preds = %308, %304
  %313 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %314 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @ELF_R_SYM(%struct.TYPE_59__* %313, i32 %316)
  store i64 %317, i64* %31, align 8
  %318 = load i64, i64* %31, align 8
  %319 = load i64, i64* %15, align 8
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %329, label %321

321:                                              ; preds = %312
  %322 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %13, align 8
  %323 = load i64, i64* %31, align 8
  %324 = load i64, i64* %15, align 8
  %325 = sub i64 %323, %324
  %326 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %322, i64 %325
  %327 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %326, align 8
  %328 = icmp eq %struct.elf_link_hash_entry* %327, null
  br i1 %328, label %329, label %472

329:                                              ; preds = %321, %312
  %330 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_60__*, %struct.TYPE_60__** %331, align 8
  store %struct.TYPE_60__* %332, %struct.TYPE_60__** %34, align 8
  br label %333

333:                                              ; preds = %413, %329
  %334 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %335 = icmp ne %struct.TYPE_60__* %334, null
  br i1 %335, label %336, label %417

336:                                              ; preds = %333
  %337 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %338 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @SEC_RELOC, align 4
  %341 = and i32 %339, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %353, label %343

343:                                              ; preds = %336
  %344 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %345 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %350 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %351 = call i64 @mips16_stub_section_p(%struct.TYPE_59__* %349, %struct.TYPE_60__* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %348, %343, %336
  br label %413

354:                                              ; preds = %348
  %355 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %356 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %357 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %358 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = call %struct.TYPE_62__* @_bfd_elf_link_read_relocs(%struct.TYPE_59__* %355, %struct.TYPE_60__* %356, i32* null, i32* null, i32 %359)
  store %struct.TYPE_62__* %360, %struct.TYPE_62__** %35, align 8
  %361 = load %struct.TYPE_62__*, %struct.TYPE_62__** %35, align 8
  %362 = icmp eq %struct.TYPE_62__* %361, null
  br i1 %362, label %363, label %365

363:                                              ; preds = %354
  %364 = load i8*, i8** @FALSE, align 8
  store i8* %364, i8** %5, align 8
  br label %1181

365:                                              ; preds = %354
  %366 = load %struct.TYPE_62__*, %struct.TYPE_62__** %35, align 8
  %367 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %368 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %366, i64 %369
  store %struct.TYPE_62__* %370, %struct.TYPE_62__** %37, align 8
  %371 = load %struct.TYPE_62__*, %struct.TYPE_62__** %35, align 8
  store %struct.TYPE_62__* %371, %struct.TYPE_62__** %36, align 8
  br label %372

372:                                              ; preds = %394, %365
  %373 = load %struct.TYPE_62__*, %struct.TYPE_62__** %36, align 8
  %374 = load %struct.TYPE_62__*, %struct.TYPE_62__** %37, align 8
  %375 = icmp ult %struct.TYPE_62__* %373, %374
  br i1 %375, label %376, label %397

376:                                              ; preds = %372
  %377 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %378 = load %struct.TYPE_62__*, %struct.TYPE_62__** %36, align 8
  %379 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @ELF_R_SYM(%struct.TYPE_59__* %377, i32 %380)
  %382 = load i64, i64* %31, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %393

384:                                              ; preds = %376
  %385 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %386 = load %struct.TYPE_62__*, %struct.TYPE_62__** %36, align 8
  %387 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @ELF_R_TYPE(%struct.TYPE_59__* %385, i32 %388)
  %390 = load i32, i32* @R_MIPS16_26, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  br label %397

393:                                              ; preds = %384, %376
  br label %394

394:                                              ; preds = %393
  %395 = load %struct.TYPE_62__*, %struct.TYPE_62__** %36, align 8
  %396 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %395, i32 1
  store %struct.TYPE_62__* %396, %struct.TYPE_62__** %36, align 8
  br label %372

397:                                              ; preds = %392, %372
  %398 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %399 = call %struct.TYPE_67__* @elf_section_data(%struct.TYPE_60__* %398)
  %400 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_62__*, %struct.TYPE_62__** %400, align 8
  %402 = load %struct.TYPE_62__*, %struct.TYPE_62__** %35, align 8
  %403 = icmp ne %struct.TYPE_62__* %401, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %397
  %405 = load %struct.TYPE_62__*, %struct.TYPE_62__** %35, align 8
  %406 = call i32 @free(%struct.TYPE_62__* %405)
  br label %407

407:                                              ; preds = %404, %397
  %408 = load %struct.TYPE_62__*, %struct.TYPE_62__** %36, align 8
  %409 = load %struct.TYPE_62__*, %struct.TYPE_62__** %37, align 8
  %410 = icmp ult %struct.TYPE_62__* %408, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %407
  br label %417

412:                                              ; preds = %407
  br label %413

413:                                              ; preds = %412, %353
  %414 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %415 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_60__*, %struct.TYPE_60__** %415, align 8
  store %struct.TYPE_60__* %416, %struct.TYPE_60__** %34, align 8
  br label %333

417:                                              ; preds = %411, %333
  %418 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %419 = icmp eq %struct.TYPE_60__* %418, null
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load i32, i32* @SEC_EXCLUDE, align 4
  %422 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = or i32 %424, %421
  store i32 %425, i32* %423, align 8
  %426 = load i8*, i8** @TRUE, align 8
  store i8* %426, i8** %5, align 8
  br label %1181

427:                                              ; preds = %417
  %428 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %429 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %428)
  %430 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %429, i32 0, i32 0
  %431 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %430, align 8
  %432 = icmp eq %struct.TYPE_60__** %431, null
  br i1 %432, label %433, label %459

433:                                              ; preds = %427
  %434 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %435 = call i64 @elf_bad_symtab(%struct.TYPE_59__* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %433
  %438 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %439 = call i64 @NUM_SHDR_ENTRIES(%struct.TYPE_61__* %438)
  store i64 %439, i64* %38, align 8
  br label %444

440:                                              ; preds = %433
  %441 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %38, align 8
  br label %444

444:                                              ; preds = %440, %437
  %445 = load i64, i64* %38, align 8
  %446 = mul i64 %445, 8
  store i64 %446, i64* %40, align 8
  %447 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %448 = load i64, i64* %40, align 8
  %449 = call %struct.TYPE_60__** @bfd_zalloc(%struct.TYPE_59__* %447, i64 %448)
  store %struct.TYPE_60__** %449, %struct.TYPE_60__*** %39, align 8
  %450 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %39, align 8
  %451 = icmp eq %struct.TYPE_60__** %450, null
  br i1 %451, label %452, label %454

452:                                              ; preds = %444
  %453 = load i8*, i8** @FALSE, align 8
  store i8* %453, i8** %5, align 8
  br label %1181

454:                                              ; preds = %444
  %455 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %39, align 8
  %456 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %457 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %456)
  %458 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %457, i32 0, i32 0
  store %struct.TYPE_60__** %455, %struct.TYPE_60__*** %458, align 8
  br label %459

459:                                              ; preds = %454, %427
  %460 = load i32, i32* @SEC_KEEP, align 4
  %461 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = or i32 %463, %460
  store i32 %464, i32* %462, align 8
  %465 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %466 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %467 = call %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__* %466)
  %468 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %468, align 8
  %470 = load i64, i64* %31, align 8
  %471 = getelementptr inbounds %struct.TYPE_60__*, %struct.TYPE_60__** %469, i64 %470
  store %struct.TYPE_60__* %465, %struct.TYPE_60__** %471, align 8
  br label %512

472:                                              ; preds = %321
  %473 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %13, align 8
  %474 = load i64, i64* %31, align 8
  %475 = load i64, i64* %15, align 8
  %476 = sub i64 %474, %475
  %477 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %473, i64 %476
  %478 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %477, align 8
  %479 = bitcast %struct.elf_link_hash_entry* %478 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %479, %struct.mips_elf_link_hash_entry** %32, align 8
  %480 = load i8*, i8** %10, align 8
  %481 = call i64 @CALL_FP_STUB_P(i8* %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %472
  %484 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %32, align 8
  %485 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %484, i32 0, i32 9
  store %struct.TYPE_60__** %485, %struct.TYPE_60__*** %33, align 8
  br label %489

486:                                              ; preds = %472
  %487 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %32, align 8
  %488 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %487, i32 0, i32 8
  store %struct.TYPE_60__** %488, %struct.TYPE_60__*** %33, align 8
  br label %489

489:                                              ; preds = %486, %483
  %490 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %33, align 8
  %491 = load %struct.TYPE_60__*, %struct.TYPE_60__** %490, align 8
  %492 = icmp ne %struct.TYPE_60__* %491, null
  br i1 %492, label %493, label %500

493:                                              ; preds = %489
  %494 = load i32, i32* @SEC_EXCLUDE, align 4
  %495 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %496 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = or i32 %497, %494
  store i32 %498, i32* %496, align 8
  %499 = load i8*, i8** @TRUE, align 8
  store i8* %499, i8** %5, align 8
  br label %1181

500:                                              ; preds = %489
  %501 = load i32, i32* @SEC_KEEP, align 4
  %502 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = or i32 %504, %501
  store i32 %505, i32* %503, align 8
  %506 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %507 = load %struct.TYPE_60__**, %struct.TYPE_60__*** %33, align 8
  store %struct.TYPE_60__* %506, %struct.TYPE_60__** %507, align 8
  %508 = load i8*, i8** @TRUE, align 8
  %509 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %510 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %509)
  %511 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %510, i32 0, i32 2
  store i8* %508, i8** %511, align 8
  br label %512

512:                                              ; preds = %500, %459
  br label %513

513:                                              ; preds = %512, %308
  br label %514

514:                                              ; preds = %513, %303
  %515 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %516 = icmp eq %struct.TYPE_59__* %515, null
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %18, align 8
  store %struct.mips_got_info* null, %struct.mips_got_info** %14, align 8
  br label %541

518:                                              ; preds = %514
  %519 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %520 = load i8*, i8** @FALSE, align 8
  %521 = call %struct.TYPE_60__* @mips_elf_got_section(%struct.TYPE_59__* %519, i8* %520)
  store %struct.TYPE_60__* %521, %struct.TYPE_60__** %18, align 8
  %522 = load %struct.TYPE_60__*, %struct.TYPE_60__** %18, align 8
  %523 = icmp eq %struct.TYPE_60__* %522, null
  br i1 %523, label %524, label %525

524:                                              ; preds = %518
  store %struct.mips_got_info* null, %struct.mips_got_info** %14, align 8
  br label %540

525:                                              ; preds = %518
  %526 = load %struct.TYPE_60__*, %struct.TYPE_60__** %18, align 8
  %527 = call %struct.TYPE_63__* @mips_elf_section_data(%struct.TYPE_60__* %526)
  %528 = icmp ne %struct.TYPE_63__* %527, null
  %529 = zext i1 %528 to i32
  %530 = call i32 @BFD_ASSERT(i32 %529)
  %531 = load %struct.TYPE_60__*, %struct.TYPE_60__** %18, align 8
  %532 = call %struct.TYPE_63__* @mips_elf_section_data(%struct.TYPE_60__* %531)
  %533 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %533, i32 0, i32 0
  %535 = load %struct.mips_got_info*, %struct.mips_got_info** %534, align 8
  store %struct.mips_got_info* %535, %struct.mips_got_info** %14, align 8
  %536 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %537 = icmp ne %struct.mips_got_info* %536, null
  %538 = zext i1 %537 to i32
  %539 = call i32 @BFD_ASSERT(i32 %538)
  br label %540

540:                                              ; preds = %525, %524
  br label %541

541:                                              ; preds = %540, %517
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %19, align 8
  %542 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %543 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_59__* %542)
  store %struct.elf_backend_data* %543, %struct.elf_backend_data** %20, align 8
  %544 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  %545 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.elf_backend_data*, %struct.elf_backend_data** %20, align 8
  %549 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %548, i32 0, i32 0
  %550 = load %struct.TYPE_65__*, %struct.TYPE_65__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  %554 = mul nsw i64 %547, %553
  %555 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %544, i64 %554
  store %struct.TYPE_62__* %555, %struct.TYPE_62__** %17, align 8
  %556 = load %struct.TYPE_62__*, %struct.TYPE_62__** %9, align 8
  store %struct.TYPE_62__* %556, %struct.TYPE_62__** %16, align 8
  br label %557

557:                                              ; preds = %1176, %541
  %558 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %559 = load %struct.TYPE_62__*, %struct.TYPE_62__** %17, align 8
  %560 = icmp ult %struct.TYPE_62__* %558, %559
  br i1 %560, label %561, label %1179

561:                                              ; preds = %557
  %562 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %563 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %564 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 4
  %566 = call i64 @ELF_R_SYM(%struct.TYPE_59__* %562, i32 %565)
  store i64 %566, i64* %41, align 8
  %567 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %568 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %569 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @ELF_R_TYPE(%struct.TYPE_59__* %567, i32 %570)
  store i32 %571, i32* %42, align 4
  %572 = load i64, i64* %41, align 8
  %573 = load i64, i64* %15, align 8
  %574 = icmp ult i64 %572, %573
  br i1 %574, label %575, label %576

575:                                              ; preds = %561
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %43, align 8
  br label %620

576:                                              ; preds = %561
  %577 = load i64, i64* %41, align 8
  %578 = load i64, i64* %15, align 8
  %579 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %580 = call i64 @NUM_SHDR_ENTRIES(%struct.TYPE_61__* %579)
  %581 = add i64 %578, %580
  %582 = icmp uge i64 %577, %581
  br i1 %582, label %583, label %592

583:                                              ; preds = %576
  %584 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %585 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %586 = load i8*, i8** %10, align 8
  %587 = ptrtoint i8* %586 to i64
  %588 = call i32 @_bfd_error_handler(i32 %584, %struct.TYPE_59__* %585, i64 %587)
  %589 = load i32, i32* @bfd_error_bad_value, align 4
  %590 = call i32 @bfd_set_error(i32 %589)
  %591 = load i8*, i8** @FALSE, align 8
  store i8* %591, i8** %5, align 8
  br label %1181

592:                                              ; preds = %576
  %593 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %13, align 8
  %594 = load i64, i64* %41, align 8
  %595 = load i64, i64* %15, align 8
  %596 = sub i64 %594, %595
  %597 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %593, i64 %596
  %598 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %597, align 8
  store %struct.elf_link_hash_entry* %598, %struct.elf_link_hash_entry** %43, align 8
  %599 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %600 = icmp ne %struct.elf_link_hash_entry* %599, null
  br i1 %600, label %601, label %618

601:                                              ; preds = %592
  br label %602

602:                                              ; preds = %609, %601
  %603 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %604 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @bfd_link_hash_indirect, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %609, label %617

609:                                              ; preds = %602
  %610 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %611 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %610, i32 0, i32 2
  %612 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = inttoptr i64 %615 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %616, %struct.elf_link_hash_entry** %43, align 8
  br label %602

617:                                              ; preds = %602
  br label %618

618:                                              ; preds = %617, %592
  br label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619, %575
  %621 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %622 = icmp eq %struct.TYPE_59__* %621, null
  br i1 %622, label %626, label %623

623:                                              ; preds = %620
  %624 = load %struct.TYPE_60__*, %struct.TYPE_60__** %18, align 8
  %625 = icmp eq %struct.TYPE_60__* %624, null
  br i1 %625, label %626, label %698

626:                                              ; preds = %623, %620
  %627 = load i32, i32* %42, align 4
  switch i32 %627, label %696 [
    i32 142, label %628
    i32 147, label %628
    i32 146, label %628
    i32 145, label %628
    i32 140, label %628
    i32 139, label %628
    i32 137, label %628
    i32 138, label %628
    i32 141, label %628
    i32 129, label %628
    i32 130, label %628
    i32 128, label %628
    i32 149, label %667
    i32 131, label %667
    i32 148, label %667
  ]

628:                                              ; preds = %626, %626, %626, %626, %626, %626, %626, %626, %626, %626, %626, %626
  %629 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %630 = icmp eq %struct.TYPE_59__* %629, null
  br i1 %630, label %631, label %636

631:                                              ; preds = %628
  %632 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  store %struct.TYPE_59__* %632, %struct.TYPE_59__** %11, align 8
  %633 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %634 = call %struct.TYPE_68__* @elf_hash_table(%struct.bfd_link_info* %633)
  %635 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %634, i32 0, i32 0
  store %struct.TYPE_59__* %632, %struct.TYPE_59__** %635, align 8
  br label %636

636:                                              ; preds = %631, %628
  %637 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %638 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %639 = load i8*, i8** @FALSE, align 8
  %640 = call i32 @mips_elf_create_got_section(%struct.TYPE_59__* %637, %struct.bfd_link_info* %638, i8* %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %644, label %642

642:                                              ; preds = %636
  %643 = load i8*, i8** @FALSE, align 8
  store i8* %643, i8** %5, align 8
  br label %1181

644:                                              ; preds = %636
  %645 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %646 = call %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_59__* %645, %struct.TYPE_60__** %18)
  store %struct.mips_got_info* %646, %struct.mips_got_info** %14, align 8
  %647 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %648 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %647, i32 0, i32 1
  %649 = load i64, i64* %648, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %666

651:                                              ; preds = %644
  %652 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %653 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %666, label %656

656:                                              ; preds = %651
  %657 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %658 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %659 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %660 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %659, i32 0, i32 0
  %661 = load i64, i64* %660, align 8
  %662 = call i32 @_bfd_error_handler(i32 %657, %struct.TYPE_59__* %658, i64 %661)
  %663 = load i32, i32* @bfd_error_bad_value, align 4
  %664 = call i32 @bfd_set_error(i32 %663)
  %665 = load i8*, i8** @FALSE, align 8
  store i8* %665, i8** %5, align 8
  br label %1181

666:                                              ; preds = %651, %644
  br label %697

667:                                              ; preds = %626, %626, %626
  %668 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %669 = icmp eq %struct.TYPE_59__* %668, null
  br i1 %669, label %670, label %695

670:                                              ; preds = %667
  %671 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %672 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %683, label %675

675:                                              ; preds = %670
  %676 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %677 = icmp ne %struct.elf_link_hash_entry* %676, null
  br i1 %677, label %678, label %695

678:                                              ; preds = %675
  %679 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %680 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %679, i32 0, i32 1
  %681 = load i64, i64* %680, align 8
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %695, label %683

683:                                              ; preds = %678, %670
  %684 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %685 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 8
  %687 = load i32, i32* @SEC_ALLOC, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %695

690:                                              ; preds = %683
  %691 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  store %struct.TYPE_59__* %691, %struct.TYPE_59__** %11, align 8
  %692 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %693 = call %struct.TYPE_68__* @elf_hash_table(%struct.bfd_link_info* %692)
  %694 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %693, i32 0, i32 0
  store %struct.TYPE_59__* %691, %struct.TYPE_59__** %694, align 8
  br label %695

695:                                              ; preds = %690, %683, %678, %675, %667
  br label %697

696:                                              ; preds = %626
  br label %697

697:                                              ; preds = %696, %695, %666
  br label %698

698:                                              ; preds = %697, %623
  %699 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %700 = icmp ne %struct.elf_link_hash_entry* %699, null
  br i1 %700, label %701, label %737

701:                                              ; preds = %698
  %702 = load i8*, i8** @TRUE, align 8
  %703 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %704 = bitcast %struct.elf_link_hash_entry* %703 to %struct.mips_elf_link_hash_entry*
  %705 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %704, i32 0, i32 7
  store i8* %702, i8** %705, align 8
  %706 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %707 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %708 = call i64 @is_gott_symbol(%struct.bfd_link_info* %706, %struct.elf_link_hash_entry* %707)
  %709 = icmp ne i64 %708, 0
  br i1 %709, label %710, label %736

710:                                              ; preds = %701
  %711 = load %struct.TYPE_60__*, %struct.TYPE_60__** %19, align 8
  %712 = icmp eq %struct.TYPE_60__* %711, null
  br i1 %712, label %713, label %722

713:                                              ; preds = %710
  %714 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %715 = load i8*, i8** @TRUE, align 8
  %716 = call %struct.TYPE_60__* @mips_elf_rel_dyn_section(%struct.bfd_link_info* %714, i8* %715)
  store %struct.TYPE_60__* %716, %struct.TYPE_60__** %19, align 8
  %717 = load %struct.TYPE_60__*, %struct.TYPE_60__** %19, align 8
  %718 = icmp eq %struct.TYPE_60__* %717, null
  br i1 %718, label %719, label %721

719:                                              ; preds = %713
  %720 = load i8*, i8** @FALSE, align 8
  store i8* %720, i8** %5, align 8
  br label %1181

721:                                              ; preds = %713
  br label %722

722:                                              ; preds = %721, %710
  %723 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %724 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %725 = call i32 @mips_elf_allocate_dynamic_relocations(%struct.TYPE_59__* %723, %struct.bfd_link_info* %724, i32 1)
  %726 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %727 = call i64 @MIPS_ELF_READONLY_SECTION(%struct.TYPE_60__* %726)
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %735

729:                                              ; preds = %722
  %730 = load i32, i32* @DF_TEXTREL, align 4
  %731 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %732 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 8
  %734 = or i32 %733, %730
  store i32 %734, i32* %732, align 8
  br label %735

735:                                              ; preds = %729, %722
  br label %736

736:                                              ; preds = %735, %701
  br label %767

737:                                              ; preds = %698
  %738 = load i32, i32* %42, align 4
  %739 = icmp eq i32 %738, 145
  br i1 %739, label %754, label %740

740:                                              ; preds = %737
  %741 = load i32, i32* %42, align 4
  %742 = icmp eq i32 %741, 139
  br i1 %742, label %754, label %743

743:                                              ; preds = %740
  %744 = load i32, i32* %42, align 4
  %745 = icmp eq i32 %744, 141
  br i1 %745, label %754, label %746

746:                                              ; preds = %743
  %747 = load i32, i32* %42, align 4
  %748 = icmp eq i32 %747, 142
  br i1 %748, label %749, label %766

749:                                              ; preds = %746
  %750 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %751 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %750, i32 0, i32 1
  %752 = load i64, i64* %751, align 8
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %766

754:                                              ; preds = %749, %743, %740, %737
  %755 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %756 = load i64, i64* %41, align 8
  %757 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %758 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %757, i32 0, i32 1
  %759 = load i32, i32* %758, align 8
  %760 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %761 = call i32 @mips_elf_record_local_got_symbol(%struct.TYPE_59__* %755, i64 %756, i32 %759, %struct.mips_got_info* %760, i8 zeroext 0)
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %765, label %763

763:                                              ; preds = %754
  %764 = load i8*, i8** @FALSE, align 8
  store i8* %764, i8** %5, align 8
  br label %1181

765:                                              ; preds = %754
  br label %766

766:                                              ; preds = %765, %749, %746
  br label %767

767:                                              ; preds = %766, %736
  %768 = load i32, i32* %42, align 4
  switch i32 %768, label %1139 [
    i32 147, label %769
    i32 146, label %783
    i32 145, label %783
    i32 137, label %807
    i32 142, label %866
    i32 140, label %866
    i32 139, label %866
    i32 141, label %866
    i32 129, label %879
    i32 128, label %891
    i32 130, label %896
    i32 149, label %968
    i32 131, label %968
    i32 148, label %968
    i32 132, label %1084
    i32 150, label %1093
    i32 136, label %1102
    i32 133, label %1102
    i32 135, label %1102
    i32 143, label %1115
    i32 144, label %1127
  ]

769:                                              ; preds = %767
  %770 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %771 = icmp eq %struct.elf_link_hash_entry* %770, null
  br i1 %771, label %772, label %782

772:                                              ; preds = %769
  %773 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %774 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %775 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %776 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %775, i32 0, i32 0
  %777 = load i64, i64* %776, align 8
  %778 = call i32 @_bfd_error_handler(i32 %773, %struct.TYPE_59__* %774, i64 %777)
  %779 = load i32, i32* @bfd_error_bad_value, align 4
  %780 = call i32 @bfd_set_error(i32 %779)
  %781 = load i8*, i8** @FALSE, align 8
  store i8* %781, i8** %5, align 8
  br label %1181

782:                                              ; preds = %769
  br label %783

783:                                              ; preds = %767, %767, %782
  %784 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %785 = icmp ne %struct.elf_link_hash_entry* %784, null
  br i1 %785, label %786, label %806

786:                                              ; preds = %783
  %787 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %788 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %787, i32 0, i32 1
  %789 = load i64, i64* %788, align 8
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %800, label %791

791:                                              ; preds = %786
  %792 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %793 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %794 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %795 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %796 = call i32 @mips_elf_record_global_got_symbol(%struct.elf_link_hash_entry* %792, %struct.TYPE_59__* %793, %struct.bfd_link_info* %794, %struct.mips_got_info* %795, i8 zeroext 0)
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %791
  %799 = load i8*, i8** @FALSE, align 8
  store i8* %799, i8** %5, align 8
  br label %1181

800:                                              ; preds = %791, %786
  %801 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %802 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %801, i32 0, i32 0
  store i32 1, i32* %802, align 8
  %803 = load i32, i32* @STT_FUNC, align 4
  %804 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %805 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %804, i32 0, i32 1
  store i32 %803, i32* %805, align 4
  br label %806

806:                                              ; preds = %800, %783
  br label %1140

807:                                              ; preds = %767
  %808 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %809 = icmp eq %struct.elf_link_hash_entry* %808, null
  br i1 %809, label %810, label %811

810:                                              ; preds = %807
  br label %1140

811:                                              ; preds = %807
  %812 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %813 = bitcast %struct.elf_link_hash_entry* %812 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %813, %struct.mips_elf_link_hash_entry** %44, align 8
  br label %814

814:                                              ; preds = %832, %811
  %815 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %44, align 8
  %816 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %815, i32 0, i32 6
  %817 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %816, i32 0, i32 2
  %818 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %817, i32 0, i32 0
  %819 = load i64, i64* %818, align 8
  %820 = load i64, i64* @bfd_link_hash_indirect, align 8
  %821 = icmp eq i64 %819, %820
  br i1 %821, label %830, label %822

822:                                              ; preds = %814
  %823 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %44, align 8
  %824 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %823, i32 0, i32 6
  %825 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %824, i32 0, i32 2
  %826 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %825, i32 0, i32 0
  %827 = load i64, i64* %826, align 8
  %828 = load i64, i64* @bfd_link_hash_warning, align 8
  %829 = icmp eq i64 %827, %828
  br label %830

830:                                              ; preds = %822, %814
  %831 = phi i1 [ true, %814 ], [ %829, %822 ]
  br i1 %831, label %832, label %841

832:                                              ; preds = %830
  %833 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %44, align 8
  %834 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %833, i32 0, i32 6
  %835 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %834, i32 0, i32 2
  %836 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %835, i32 0, i32 1
  %837 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %836, i32 0, i32 0
  %838 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %837, i32 0, i32 0
  %839 = load i64, i64* %838, align 8
  %840 = inttoptr i64 %839 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %840, %struct.mips_elf_link_hash_entry** %44, align 8
  br label %814

841:                                              ; preds = %830
  %842 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %44, align 8
  %843 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %842, i32 0, i32 6
  %844 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %843, i32 0, i32 1
  %845 = load i32, i32* %844, align 4
  %846 = icmp ne i32 %845, 0
  br i1 %846, label %847, label %864

847:                                              ; preds = %841
  %848 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %849 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %848, i32 0, i32 1
  %850 = load i32, i32* %849, align 4
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %852, label %863

852:                                              ; preds = %847
  %853 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %854 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %853, i32 0, i32 2
  %855 = load i32, i32* %854, align 8
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %863, label %857

857:                                              ; preds = %852
  %858 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %44, align 8
  %859 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %858, i32 0, i32 6
  %860 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %859, i32 0, i32 0
  %861 = load i32, i32* %860, align 8
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %864

863:                                              ; preds = %857, %852, %847
  br label %1140

864:                                              ; preds = %857, %841
  br label %865

865:                                              ; preds = %864
  br label %866

866:                                              ; preds = %767, %767, %767, %767, %865
  %867 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %868 = icmp ne %struct.elf_link_hash_entry* %867, null
  br i1 %868, label %869, label %878

869:                                              ; preds = %866
  %870 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %871 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %872 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %873 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %874 = call i32 @mips_elf_record_global_got_symbol(%struct.elf_link_hash_entry* %870, %struct.TYPE_59__* %871, %struct.bfd_link_info* %872, %struct.mips_got_info* %873, i8 zeroext 0)
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %878, label %876

876:                                              ; preds = %869
  %877 = load i8*, i8** @FALSE, align 8
  store i8* %877, i8** %5, align 8
  br label %1181

878:                                              ; preds = %869, %866
  br label %1140

879:                                              ; preds = %767
  %880 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %881 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %880, i32 0, i32 1
  %882 = load i32, i32* %881, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %890

884:                                              ; preds = %879
  %885 = load i32, i32* @DF_STATIC_TLS, align 4
  %886 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %887 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %886, i32 0, i32 0
  %888 = load i32, i32* %887, align 8
  %889 = or i32 %888, %885
  store i32 %889, i32* %887, align 8
  br label %890

890:                                              ; preds = %884, %879
  br label %891

891:                                              ; preds = %767, %890
  %892 = load i32, i32* %42, align 4
  %893 = icmp eq i32 %892, 128
  br i1 %893, label %894, label %895

894:                                              ; preds = %891
  store i64 0, i64* %41, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %43, align 8
  br label %895

895:                                              ; preds = %894, %891
  br label %896

896:                                              ; preds = %767, %895
  %897 = load i32, i32* %42, align 4
  %898 = icmp eq i32 %897, 130
  br i1 %898, label %899, label %902

899:                                              ; preds = %896
  %900 = load i8, i8* @GOT_TLS_GD, align 1
  %901 = zext i8 %900 to i32
  br label %913

902:                                              ; preds = %896
  %903 = load i32, i32* %42, align 4
  %904 = icmp eq i32 %903, 128
  br i1 %904, label %905, label %908

905:                                              ; preds = %902
  %906 = load i8, i8* @GOT_TLS_LDM, align 1
  %907 = zext i8 %906 to i32
  br label %911

908:                                              ; preds = %902
  %909 = load i8, i8* @GOT_TLS_IE, align 1
  %910 = zext i8 %909 to i32
  br label %911

911:                                              ; preds = %908, %905
  %912 = phi i32 [ %907, %905 ], [ %910, %908 ]
  br label %913

913:                                              ; preds = %911, %899
  %914 = phi i32 [ %901, %899 ], [ %912, %911 ]
  %915 = trunc i32 %914 to i8
  store i8 %915, i8* %45, align 1
  %916 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %917 = icmp ne %struct.elf_link_hash_entry* %916, null
  br i1 %917, label %918, label %942

918:                                              ; preds = %913
  %919 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %920 = bitcast %struct.elf_link_hash_entry* %919 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %920, %struct.mips_elf_link_hash_entry** %46, align 8
  %921 = load i8, i8* %45, align 1
  %922 = zext i8 %921 to i32
  %923 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %46, align 8
  %924 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %923, i32 0, i32 0
  %925 = load i8, i8* %924, align 8
  %926 = zext i8 %925 to i32
  %927 = or i32 %926, %922
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %924, align 8
  %929 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %930 = icmp ne %struct.elf_link_hash_entry* %929, null
  br i1 %930, label %931, label %941

931:                                              ; preds = %918
  %932 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %933 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %934 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %935 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %936 = load i8, i8* %45, align 1
  %937 = call i32 @mips_elf_record_global_got_symbol(%struct.elf_link_hash_entry* %932, %struct.TYPE_59__* %933, %struct.bfd_link_info* %934, %struct.mips_got_info* %935, i8 zeroext %936)
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %941, label %939

939:                                              ; preds = %931
  %940 = load i8*, i8** @FALSE, align 8
  store i8* %940, i8** %5, align 8
  br label %1181

941:                                              ; preds = %931, %918
  br label %967

942:                                              ; preds = %913
  %943 = load i8, i8* %45, align 1
  %944 = zext i8 %943 to i32
  %945 = load i8, i8* @GOT_TLS_LDM, align 1
  %946 = zext i8 %945 to i32
  %947 = icmp eq i32 %944, %946
  br i1 %947, label %951, label %948

948:                                              ; preds = %942
  %949 = load i64, i64* %41, align 8
  %950 = icmp ne i64 %949, 0
  br label %951

951:                                              ; preds = %948, %942
  %952 = phi i1 [ true, %942 ], [ %950, %948 ]
  %953 = zext i1 %952 to i32
  %954 = call i32 @BFD_ASSERT(i32 %953)
  %955 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %956 = load i64, i64* %41, align 8
  %957 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %958 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %957, i32 0, i32 1
  %959 = load i32, i32* %958, align 8
  %960 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %961 = load i8, i8* %45, align 1
  %962 = call i32 @mips_elf_record_local_got_symbol(%struct.TYPE_59__* %955, i64 %956, i32 %959, %struct.mips_got_info* %960, i8 zeroext %961)
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %966, label %964

964:                                              ; preds = %951
  %965 = load i8*, i8** @FALSE, align 8
  store i8* %965, i8** %5, align 8
  br label %1181

966:                                              ; preds = %951
  br label %967

967:                                              ; preds = %966, %941
  br label %1140

968:                                              ; preds = %767, %767, %767
  %969 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %970 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %969, i32 0, i32 1
  %971 = load i32, i32* %970, align 4
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %981, label %973

973:                                              ; preds = %968
  %974 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %975 = icmp ne %struct.elf_link_hash_entry* %974, null
  br i1 %975, label %976, label %1071

976:                                              ; preds = %973
  %977 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %978 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %977, i32 0, i32 1
  %979 = load i64, i64* %978, align 8
  %980 = icmp ne i64 %979, 0
  br i1 %980, label %1071, label %981

981:                                              ; preds = %976, %968
  %982 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %983 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %982, i32 0, i32 0
  %984 = load i32, i32* %983, align 8
  %985 = load i32, i32* @SEC_ALLOC, align 4
  %986 = and i32 %984, %985
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %988, label %1071

988:                                              ; preds = %981
  %989 = load %struct.TYPE_60__*, %struct.TYPE_60__** %19, align 8
  %990 = icmp eq %struct.TYPE_60__* %989, null
  br i1 %990, label %991, label %1000

991:                                              ; preds = %988
  %992 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %993 = load i8*, i8** @TRUE, align 8
  %994 = call %struct.TYPE_60__* @mips_elf_rel_dyn_section(%struct.bfd_link_info* %992, i8* %993)
  store %struct.TYPE_60__* %994, %struct.TYPE_60__** %19, align 8
  %995 = load %struct.TYPE_60__*, %struct.TYPE_60__** %19, align 8
  %996 = icmp eq %struct.TYPE_60__* %995, null
  br i1 %996, label %997, label %999

997:                                              ; preds = %991
  %998 = load i8*, i8** @FALSE, align 8
  store i8* %998, i8** %5, align 8
  br label %1181

999:                                              ; preds = %991
  br label %1000

1000:                                             ; preds = %999, %988
  %1001 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1002 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %1001, i32 0, i32 1
  %1003 = load i32, i32* %1002, align 4
  %1004 = icmp ne i32 %1003, 0
  br i1 %1004, label %1005, label %1019

1005:                                             ; preds = %1000
  %1006 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %1007 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1008 = call i32 @mips_elf_allocate_dynamic_relocations(%struct.TYPE_59__* %1006, %struct.bfd_link_info* %1007, i32 1)
  %1009 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %1010 = call i64 @MIPS_ELF_READONLY_SECTION(%struct.TYPE_60__* %1009)
  %1011 = icmp ne i64 %1010, 0
  br i1 %1011, label %1012, label %1018

1012:                                             ; preds = %1005
  %1013 = load i32, i32* @DF_TEXTREL, align 4
  %1014 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1015 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %1014, i32 0, i32 0
  %1016 = load i32, i32* %1015, align 8
  %1017 = or i32 %1016, %1013
  store i32 %1017, i32* %1015, align 8
  br label %1018

1018:                                             ; preds = %1012, %1005
  br label %1034

1019:                                             ; preds = %1000
  %1020 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1021 = bitcast %struct.elf_link_hash_entry* %1020 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %1021, %struct.mips_elf_link_hash_entry** %47, align 8
  %1022 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %47, align 8
  %1023 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %1022, i32 0, i32 5
  %1024 = load i32, i32* %1023, align 8
  %1025 = add nsw i32 %1024, 1
  store i32 %1025, i32* %1023, align 8
  %1026 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %1027 = call i64 @MIPS_ELF_READONLY_SECTION(%struct.TYPE_60__* %1026)
  %1028 = icmp ne i64 %1027, 0
  br i1 %1028, label %1029, label %1033

1029:                                             ; preds = %1019
  %1030 = load i8*, i8** @TRUE, align 8
  %1031 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %47, align 8
  %1032 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %1031, i32 0, i32 4
  store i8* %1030, i8** %1032, align 8
  br label %1033

1033:                                             ; preds = %1029, %1019
  br label %1034

1034:                                             ; preds = %1033, %1018
  %1035 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1036 = icmp ne %struct.elf_link_hash_entry* %1035, null
  br i1 %1036, label %1037, label %1070

1037:                                             ; preds = %1034
  %1038 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %1039 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %1038, i32 0, i32 1
  %1040 = load i64, i64* %1039, align 8
  %1041 = icmp ne i64 %1040, 0
  br i1 %1041, label %1070, label %1042

1042:                                             ; preds = %1037
  %1043 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %1044 = icmp eq %struct.TYPE_59__* %1043, null
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1042
  %1046 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  store %struct.TYPE_59__* %1046, %struct.TYPE_59__** %11, align 8
  %1047 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1048 = call %struct.TYPE_68__* @elf_hash_table(%struct.bfd_link_info* %1047)
  %1049 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1048, i32 0, i32 0
  store %struct.TYPE_59__* %1046, %struct.TYPE_59__** %1049, align 8
  br label %1050

1050:                                             ; preds = %1045, %1042
  %1051 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %1052 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1053 = load i8*, i8** @TRUE, align 8
  %1054 = call i32 @mips_elf_create_got_section(%struct.TYPE_59__* %1051, %struct.bfd_link_info* %1052, i8* %1053)
  %1055 = icmp ne i32 %1054, 0
  br i1 %1055, label %1058, label %1056

1056:                                             ; preds = %1050
  %1057 = load i8*, i8** @FALSE, align 8
  store i8* %1057, i8** %5, align 8
  br label %1181

1058:                                             ; preds = %1050
  %1059 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %1060 = call %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_59__* %1059, %struct.TYPE_60__** %18)
  store %struct.mips_got_info* %1060, %struct.mips_got_info** %14, align 8
  %1061 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1062 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %1063 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1064 = load %struct.mips_got_info*, %struct.mips_got_info** %14, align 8
  %1065 = call i32 @mips_elf_record_global_got_symbol(%struct.elf_link_hash_entry* %1061, %struct.TYPE_59__* %1062, %struct.bfd_link_info* %1063, %struct.mips_got_info* %1064, i8 zeroext 0)
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1069, label %1067

1067:                                             ; preds = %1058
  %1068 = load i8*, i8** @FALSE, align 8
  store i8* %1068, i8** %5, align 8
  br label %1181

1069:                                             ; preds = %1058
  br label %1070

1070:                                             ; preds = %1069, %1037, %1034
  br label %1071

1071:                                             ; preds = %1070, %981, %976, %973
  %1072 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %1073 = call i32 @SGI_COMPAT(%struct.TYPE_59__* %1072)
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1075, label %1083

1075:                                             ; preds = %1071
  %1076 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1077 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %1076)
  %1078 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %1077, i32 0, i32 0
  %1079 = load i32, i32* %1078, align 8
  %1080 = sext i32 %1079 to i64
  %1081 = add i64 %1080, 4
  %1082 = trunc i64 %1081 to i32
  store i32 %1082, i32* %1078, align 8
  br label %1083

1083:                                             ; preds = %1075, %1071
  br label %1140

1084:                                             ; preds = %767
  %1085 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1086 = icmp ne %struct.elf_link_hash_entry* %1085, null
  br i1 %1086, label %1087, label %1092

1087:                                             ; preds = %1084
  %1088 = load i8*, i8** @TRUE, align 8
  %1089 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1090 = bitcast %struct.elf_link_hash_entry* %1089 to %struct.mips_elf_link_hash_entry*
  %1091 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %1090, i32 0, i32 3
  store i8* %1088, i8** %1091, align 8
  br label %1092

1092:                                             ; preds = %1087, %1084
  br label %1140

1093:                                             ; preds = %767
  %1094 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1095 = icmp ne %struct.elf_link_hash_entry* %1094, null
  br i1 %1095, label %1096, label %1101

1096:                                             ; preds = %1093
  %1097 = load i8*, i8** @TRUE, align 8
  %1098 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1099 = bitcast %struct.elf_link_hash_entry* %1098 to %struct.mips_elf_link_hash_entry*
  %1100 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %1099, i32 0, i32 3
  store i8* %1097, i8** %1100, align 8
  br label %1101

1101:                                             ; preds = %1096, %1093
  br label %1102

1102:                                             ; preds = %767, %767, %767, %1101
  %1103 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %1104 = call i32 @SGI_COMPAT(%struct.TYPE_59__* %1103)
  %1105 = icmp ne i32 %1104, 0
  br i1 %1105, label %1106, label %1114

1106:                                             ; preds = %1102
  %1107 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %1108 = call %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info* %1107)
  %1109 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %1108, i32 0, i32 0
  %1110 = load i32, i32* %1109, align 8
  %1111 = sext i32 %1110 to i64
  %1112 = add i64 %1111, 4
  %1113 = trunc i64 %1112 to i32
  store i32 %1113, i32* %1109, align 8
  br label %1114

1114:                                             ; preds = %1106, %1102
  br label %1140

1115:                                             ; preds = %767
  %1116 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %1117 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %1118 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1119 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %1120 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1119, i32 0, i32 0
  %1121 = load i64, i64* %1120, align 8
  %1122 = call i32 @bfd_elf_gc_record_vtinherit(%struct.TYPE_59__* %1116, %struct.TYPE_60__* %1117, %struct.elf_link_hash_entry* %1118, i64 %1121)
  %1123 = icmp ne i32 %1122, 0
  br i1 %1123, label %1126, label %1124

1124:                                             ; preds = %1115
  %1125 = load i8*, i8** @FALSE, align 8
  store i8* %1125, i8** %5, align 8
  br label %1181

1126:                                             ; preds = %1115
  br label %1140

1127:                                             ; preds = %767
  %1128 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %1129 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %1130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1131 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %1132 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1131, i32 0, i32 0
  %1133 = load i64, i64* %1132, align 8
  %1134 = call i32 @bfd_elf_gc_record_vtentry(%struct.TYPE_59__* %1128, %struct.TYPE_60__* %1129, %struct.elf_link_hash_entry* %1130, i64 %1133)
  %1135 = icmp ne i32 %1134, 0
  br i1 %1135, label %1138, label %1136

1136:                                             ; preds = %1127
  %1137 = load i8*, i8** @FALSE, align 8
  store i8* %1137, i8** %5, align 8
  br label %1181

1138:                                             ; preds = %1127
  br label %1140

1139:                                             ; preds = %767
  br label %1140

1140:                                             ; preds = %1139, %1138, %1126, %1114, %1092, %1083, %967, %878, %863, %810, %806
  %1141 = load %struct.mips_elf_link_hash_table*, %struct.mips_elf_link_hash_table** %21, align 8
  %1142 = getelementptr inbounds %struct.mips_elf_link_hash_table, %struct.mips_elf_link_hash_table* %1141, i32 0, i32 1
  %1143 = load i64, i64* %1142, align 8
  %1144 = icmp ne i64 %1143, 0
  br i1 %1144, label %1157, label %1145

1145:                                             ; preds = %1140
  %1146 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1147 = icmp ne %struct.elf_link_hash_entry* %1146, null
  br i1 %1147, label %1148, label %1157

1148:                                             ; preds = %1145
  %1149 = load i32, i32* %42, align 4
  switch i32 %1149, label %1150 [
    i32 147, label %1155
    i32 146, label %1155
    i32 145, label %1155
    i32 134, label %1155
  ]

1150:                                             ; preds = %1148
  %1151 = load i8*, i8** @TRUE, align 8
  %1152 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1153 = bitcast %struct.elf_link_hash_entry* %1152 to %struct.mips_elf_link_hash_entry*
  %1154 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %1153, i32 0, i32 2
  store i8* %1151, i8** %1154, align 8
  br label %1156

1155:                                             ; preds = %1148, %1148, %1148, %1148
  br label %1156

1156:                                             ; preds = %1155, %1150
  br label %1157

1157:                                             ; preds = %1156, %1145, %1140
  %1158 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1159 = icmp ne %struct.elf_link_hash_entry* %1158, null
  br i1 %1159, label %1160, label %1175

1160:                                             ; preds = %1157
  %1161 = load i32, i32* %42, align 4
  %1162 = load i32, i32* @R_MIPS16_26, align 4
  %1163 = icmp ne i32 %1161, %1162
  br i1 %1163, label %1164, label %1175

1164:                                             ; preds = %1160
  %1165 = load %struct.TYPE_59__*, %struct.TYPE_59__** %6, align 8
  %1166 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %1167 = call i64 @mips16_stub_section_p(%struct.TYPE_59__* %1165, %struct.TYPE_60__* %1166)
  %1168 = icmp ne i64 %1167, 0
  br i1 %1168, label %1175, label %1169

1169:                                             ; preds = %1164
  %1170 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %43, align 8
  %1171 = bitcast %struct.elf_link_hash_entry* %1170 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %1171, %struct.mips_elf_link_hash_entry** %48, align 8
  %1172 = load i8*, i8** @TRUE, align 8
  %1173 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %48, align 8
  %1174 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %1173, i32 0, i32 1
  store i8* %1172, i8** %1174, align 8
  br label %1175

1175:                                             ; preds = %1169, %1164, %1160, %1157
  br label %1176

1176:                                             ; preds = %1175
  %1177 = load %struct.TYPE_62__*, %struct.TYPE_62__** %16, align 8
  %1178 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1177, i32 1
  store %struct.TYPE_62__* %1178, %struct.TYPE_62__** %16, align 8
  br label %557

1179:                                             ; preds = %557
  %1180 = load i8*, i8** @TRUE, align 8
  store i8* %1180, i8** %5, align 8
  br label %1181

1181:                                             ; preds = %1179, %1136, %1124, %1067, %1056, %997, %964, %939, %876, %798, %772, %763, %719, %656, %642, %583, %493, %452, %420, %363, %283, %223, %191, %134, %53
  %1182 = load i8*, i8** %5, align 8
  ret i8* %1182
}

declare dso_local %struct.mips_elf_link_hash_table* @mips_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_68__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_66__* @elf_tdata(%struct.TYPE_59__*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(%struct.TYPE_59__*) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_59__*) #1

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_59__*, %struct.TYPE_60__*) #1

declare dso_local i64 @FN_STUB_P(i8*) #1

declare dso_local i64 @ELF_R_SYM(%struct.TYPE_59__*, i32) #1

declare dso_local i64 @mips16_stub_section_p(%struct.TYPE_59__*, %struct.TYPE_60__*) #1

declare dso_local %struct.TYPE_62__* @_bfd_elf_link_read_relocs(%struct.TYPE_59__*, %struct.TYPE_60__*, i32*, i32*, i32) #1

declare dso_local i32 @ELF_R_TYPE(%struct.TYPE_59__*, i32) #1

declare dso_local %struct.TYPE_67__* @elf_section_data(%struct.TYPE_60__*) #1

declare dso_local i32 @free(%struct.TYPE_62__*) #1

declare dso_local i64 @NUM_SHDR_ENTRIES(%struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_60__** @bfd_zalloc(%struct.TYPE_59__*, i64) #1

declare dso_local i64 @CALL_STUB_P(i8*) #1

declare dso_local i64 @CALL_FP_STUB_P(i8*) #1

declare dso_local %struct.TYPE_60__* @mips_elf_got_section(%struct.TYPE_59__*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.TYPE_63__* @mips_elf_section_data(%struct.TYPE_60__*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_59__*) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_59__*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @mips_elf_create_got_section(%struct.TYPE_59__*, %struct.bfd_link_info*, i8*) #1

declare dso_local %struct.mips_got_info* @mips_elf_got_info(%struct.TYPE_59__*, %struct.TYPE_60__**) #1

declare dso_local i64 @is_gott_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*) #1

declare dso_local %struct.TYPE_60__* @mips_elf_rel_dyn_section(%struct.bfd_link_info*, i8*) #1

declare dso_local i32 @mips_elf_allocate_dynamic_relocations(%struct.TYPE_59__*, %struct.bfd_link_info*, i32) #1

declare dso_local i64 @MIPS_ELF_READONLY_SECTION(%struct.TYPE_60__*) #1

declare dso_local i32 @mips_elf_record_local_got_symbol(%struct.TYPE_59__*, i64, i32, %struct.mips_got_info*, i8 zeroext) #1

declare dso_local i32 @mips_elf_record_global_got_symbol(%struct.elf_link_hash_entry*, %struct.TYPE_59__*, %struct.bfd_link_info*, %struct.mips_got_info*, i8 zeroext) #1

declare dso_local i32 @SGI_COMPAT(%struct.TYPE_59__*) #1

declare dso_local i32 @bfd_elf_gc_record_vtinherit(%struct.TYPE_59__*, %struct.TYPE_60__*, %struct.elf_link_hash_entry*, i64) #1

declare dso_local i32 @bfd_elf_gc_record_vtentry(%struct.TYPE_59__*, %struct.TYPE_60__*, %struct.elf_link_hash_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
