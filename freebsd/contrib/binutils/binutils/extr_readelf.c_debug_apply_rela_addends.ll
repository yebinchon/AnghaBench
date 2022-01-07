; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_debug_apply_rela_addends.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_debug_apply_rela_addends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64* }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@is_relocatable = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@EM_SH = common dso_local global i64 0, align 8
@section_headers = common dso_local global %struct.TYPE_15__* null, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"skipping relocation of unknown size against offset 0x%lx in section %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"skipping invalid relocation offset 0x%lx in section %s\0A\00", align 1
@is_32bit_elf = common dso_local global i64 0, align 8
@STT_SECTION = common dso_local global i64 0, align 8
@STT_NOTYPE = common dso_local global i64 0, align 8
@STT_OBJECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"skipping unexpected symbol type %s in relocation in section .rela%s\0A\00", align 1
@EM_MIPS = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"skipping unexpected symbol type %s in relocation in section .rela.%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_15__*, i8*)* @debug_apply_rela_addends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_apply_rela_addends(i8* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* @is_relocatable, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %291

27:                                               ; preds = %3
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @elf_header, i32 0, i32 0), align 8
  %29 = load i64, i64* @EM_SH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %291

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** @section_headers, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %8, align 8
  br label %34

34:                                               ; preds = %287, %32
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @section_headers, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @elf_header, i32 0, i32 1), align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = icmp ult %struct.TYPE_15__* %35, %39
  br i1 %40, label %41, label %290

41:                                               ; preds = %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SHT_RELA, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %75, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @SECTION_HEADER_INDEX(i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @elf_header, i32 0, i32 1), align 8
  %53 = sext i32 %52 to i64
  %54 = icmp sge i64 %51, %53
  br i1 %54, label %75, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.TYPE_15__* @SECTION_HEADER(i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = icmp ne %struct.TYPE_15__* %59, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @SECTION_HEADER_INDEX(i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @elf_header, i32 0, i32 1), align 8
  %73 = sext i32 %72 to i64
  %74 = icmp sge i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67, %62, %55, %47, %41
  br label %287

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = call i32 @slurp_rela_relocs(i8* %77, i32 %80, i64 %84, %struct.TYPE_14__** %11, i64* %10)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %291

88:                                               ; preds = %76
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_15__* @SECTION_HEADER(i32 %91)
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %13, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %95 = call %struct.TYPE_14__* @GET_ELF_SYMBOLS(i8* %93, %struct.TYPE_15__* %94)
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %14, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %12, align 8
  br label %97

97:                                               ; preds = %279, %88
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %100
  %102 = icmp ult %struct.TYPE_14__* %98, %101
  br i1 %102, label %103, label %282

103:                                              ; preds = %97
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = call i32 @get_reloc_size(%struct.TYPE_14__* %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = call i32 @SECTION_NAME(%struct.TYPE_15__* %114)
  %116 = call i32 @warn(i32 %109, i64 %113, i32 %115)
  br label %279

117:                                              ; preds = %103
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8* %123, i8** %16, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* %17, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8*, i8** %9, align 8
  %129 = icmp ugt i8* %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %117
  %131 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = call i32 @SECTION_NAME(%struct.TYPE_15__* %136)
  %138 = call i32 @warn(i32 %131, i64 %135, i32 %137)
  br label %279

139:                                              ; preds = %117
  %140 = load i64, i64* @is_32bit_elf, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %186

142:                                              ; preds = %139
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @ELF32_R_SYM(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %147
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %15, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ELF32_R_SYM(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %185

154:                                              ; preds = %142
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ELF32_ST_TYPE(i32 %157)
  %159 = load i64, i64* @STT_SECTION, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %154
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @ELF32_ST_TYPE(i32 %164)
  %166 = load i64, i64* @STT_NOTYPE, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %161
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @ELF32_ST_TYPE(i32 %171)
  %173 = load i64, i64* @STT_OBJECT, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %168
  %176 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @ELF32_ST_TYPE(i32 %179)
  %181 = call i64 @get_symbol_type(i64 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = call i32 @SECTION_NAME(%struct.TYPE_15__* %182)
  %184 = call i32 @warn(i32 %176, i64 %181, i32 %183)
  br label %279

185:                                              ; preds = %168, %161, %154, %142
  br label %272

186:                                              ; preds = %139
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @elf_header, i32 0, i32 0), align 8
  %188 = load i64, i64* @EM_MIPS, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %228

190:                                              ; preds = %186
  %191 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @elf_header, i32 0, i32 2), align 8
  %192 = load i64, i64* @EI_DATA, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ELFDATA2MSB, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %228

197:                                              ; preds = %190
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 32
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 56
  %206 = and i32 %205, 255
  %207 = or i32 %201, %206
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 40
  %212 = and i32 %211, 65280
  %213 = or i32 %207, %212
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 24
  %218 = and i32 %217, 16711680
  %219 = or i32 %213, %218
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, -16777216
  %225 = or i32 %219, %224
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %197, %190, %186
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @ELF64_R_SYM(i32 %232)
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i64 %233
  store %struct.TYPE_14__* %234, %struct.TYPE_14__** %15, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i64 @ELF64_R_SYM(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %271

240:                                              ; preds = %228
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @ELF64_ST_TYPE(i32 %243)
  %245 = load i64, i64* @STT_SECTION, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %271

247:                                              ; preds = %240
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @ELF64_ST_TYPE(i32 %250)
  %252 = load i64, i64* @STT_NOTYPE, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %271

254:                                              ; preds = %247
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @ELF64_ST_TYPE(i32 %257)
  %259 = load i64, i64* @STT_OBJECT, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %254
  %262 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @ELF64_ST_TYPE(i32 %265)
  %267 = call i64 @get_symbol_type(i64 %266)
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %269 = call i32 @SECTION_NAME(%struct.TYPE_15__* %268)
  %270 = call i32 @warn(i32 %262, i64 %267, i32 %269)
  br label %279

271:                                              ; preds = %254, %247, %240, %228
  br label %272

272:                                              ; preds = %271, %185
  %273 = load i8*, i8** %16, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %17, align 4
  %278 = call i32 @byte_put(i8* %273, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %272, %261, %175, %130, %108
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 1
  store %struct.TYPE_14__* %281, %struct.TYPE_14__** %12, align 8
  br label %97

282:                                              ; preds = %97
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %284 = call i32 @free(%struct.TYPE_14__* %283)
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %286 = call i32 @free(%struct.TYPE_14__* %285)
  br label %290

287:                                              ; preds = %75
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 1
  store %struct.TYPE_15__* %289, %struct.TYPE_15__** %8, align 8
  br label %34

290:                                              ; preds = %282, %34
  store i32 1, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %87, %31, %26
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i64 @SECTION_HEADER_INDEX(i32) #1

declare dso_local %struct.TYPE_15__* @SECTION_HEADER(i32) #1

declare dso_local i32 @slurp_rela_relocs(i8*, i32, i64, %struct.TYPE_14__**, i64*) #1

declare dso_local %struct.TYPE_14__* @GET_ELF_SYMBOLS(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @get_reloc_size(%struct.TYPE_14__*) #1

declare dso_local i32 @warn(i32, i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SECTION_NAME(%struct.TYPE_15__*) #1

declare dso_local i64 @ELF32_R_SYM(i32) #1

declare dso_local i64 @ELF32_ST_TYPE(i32) #1

declare dso_local i64 @get_symbol_type(i64) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i64 @ELF64_ST_TYPE(i32) #1

declare dso_local i32 @byte_put(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
