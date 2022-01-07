; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i64 }

@do_reloc = common dso_local global i32 0, align 4
@do_using_dynamic = common dso_local global i64 0, align 8
@dynamic_relocations = common dso_local global %struct.TYPE_11__* null, align 8
@dynamic_info = common dso_local global i64* null, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@DT_JMPREL = common dso_local global i64 0, align 8
@DT_PLTREL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"\0A'%s' relocation section at offset 0x%lx contains %ld bytes:\0A\00", align 1
@dynamic_symbols = common dso_local global i8* null, align 8
@num_dynamic_syms = common dso_local global i64 0, align 8
@dynamic_strings = common dso_local global i8* null, align 8
@dynamic_strings_length = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"\0AThere are no dynamic relocations in this file.\0A\00", align 1
@section_headers = common dso_local global %struct.TYPE_9__* null, align 8
@elf_header = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"\0ARelocation section \00", align 1
@string_table = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c" at offset 0x%lx contains %lu entries:\0A\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHT_DYNSYM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"string table\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\0AThere are no relocations in this file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @process_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_relocs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %20 = load i32, i32* @do_reloc, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %292

23:                                               ; preds = %1
  %24 = load i64, i64* @do_using_dynamic, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %123

26:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %113, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_relocations, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %29)
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %116

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_relocations, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_relocations, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %7, align 8
  %45 = load i64*, i64** @dynamic_info, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_relocations, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %45, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  %54 = load i64*, i64** @dynamic_info, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_relocations, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %54, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = or i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @UNKNOWN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %32
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dynamic_relocations, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DT_JMPREL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i64*, i64** @dynamic_info, align 8
  %82 = load i64, i64* @DT_PLTREL, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  switch i64 %84, label %89 [
    i64 129, label %85
    i64 128, label %87
  ]

85:                                               ; preds = %80
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %6, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %80, %87, %85
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %32
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %96 = load i8*, i8** %7, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 (i8*, ...) @printf(i8* %95, i8* %96, i64 %97, i64 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @offset_from_vma(i32* %101, i64 %102, i64 %103)
  %105 = load i64, i64* %4, align 8
  %106 = load i8*, i8** @dynamic_symbols, align 8
  %107 = load i64, i64* @num_dynamic_syms, align 8
  %108 = load i8*, i8** @dynamic_strings, align 8
  %109 = load i64, i64* @dynamic_strings_length, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dump_relocations(i32* %100, i64 %104, i64 %105, i8* %106, i64 %107, i8* %108, i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %94, %91
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %27

116:                                              ; preds = %27
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %121 = call i32 (i8*, ...) @printf(i8* %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %291

123:                                              ; preds = %23
  store i32 0, i32* %12, align 4
  store i64 0, i64* %11, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @section_headers, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %10, align 8
  br label %125

125:                                              ; preds = %279, %123
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @elf_header, i32 0, i32 0), align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %284

129:                                              ; preds = %125
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SHT_RELA, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SHT_REL, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %279

142:                                              ; preds = %135, %129
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %5, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %4, align 8
  %149 = load i64, i64* %4, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %278

151:                                              ; preds = %142
  %152 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %153 = call i32 (i8*, ...) @printf(i8* %152)
  %154 = load i32*, i32** @string_table, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  br label %166

161:                                              ; preds = %151
  %162 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %164 = call i8* @SECTION_NAME(%struct.TYPE_9__* %163)
  %165 = call i32 (i8*, ...) @printf(i8* %162, i8* %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %4, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = udiv i64 %169, %172
  %174 = call i32 (i8*, ...) @printf(i8* %167, i64 %168, i64 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SHT_RELA, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %14, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %271

185:                                              ; preds = %166
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @SECTION_HEADER_INDEX(i64 %188)
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @elf_header, i32 0, i32 0), align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %271

192:                                              ; preds = %185
  store i64 0, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = call %struct.TYPE_9__* @SECTION_HEADER(i64 %195)
  store %struct.TYPE_9__* %196, %struct.TYPE_9__** %15, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SHT_SYMTAB, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %192
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SHT_DYNSYM, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %279

209:                                              ; preds = %202, %192
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = udiv i64 %212, %215
  store i64 %216, i64* %17, align 8
  %217 = load i32*, i32** %3, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %219 = call i8* @GET_ELF_SYMBOLS(i32* %217, %struct.TYPE_9__* %218)
  store i8* %219, i8** %16, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %279

223:                                              ; preds = %209
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @SECTION_HEADER_INDEX(i64 %226)
  %228 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @elf_header, i32 0, i32 0), align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %253

230:                                              ; preds = %223
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = call %struct.TYPE_9__* @SECTION_HEADER(i64 %233)
  store %struct.TYPE_9__* %234, %struct.TYPE_9__** %13, align 8
  %235 = load i32*, i32** %3, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %243 = call i8* @get_data(i32* null, i32* %235, i64 %238, i32 1, i64 %241, i8* %242)
  store i8* %243, i8** %19, align 8
  %244 = load i8*, i8** %19, align 8
  %245 = icmp eq i8* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %230
  br label %251

247:                                              ; preds = %230
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  br label %251

251:                                              ; preds = %247, %246
  %252 = phi i64 [ 0, %246 ], [ %250, %247 ]
  store i64 %252, i64* %18, align 8
  br label %253

253:                                              ; preds = %251, %223
  %254 = load i32*, i32** %3, align 8
  %255 = load i64, i64* %5, align 8
  %256 = load i64, i64* %4, align 8
  %257 = load i8*, i8** %16, align 8
  %258 = load i64, i64* %17, align 8
  %259 = load i8*, i8** %19, align 8
  %260 = load i64, i64* %18, align 8
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @dump_relocations(i32* %254, i64 %255, i64 %256, i8* %257, i64 %258, i8* %259, i64 %260, i32 %261)
  %263 = load i8*, i8** %19, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %253
  %266 = load i8*, i8** %19, align 8
  %267 = call i32 @free(i8* %266)
  br label %268

268:                                              ; preds = %265, %253
  %269 = load i8*, i8** %16, align 8
  %270 = call i32 @free(i8* %269)
  br label %277

271:                                              ; preds = %185, %166
  %272 = load i32*, i32** %3, align 8
  %273 = load i64, i64* %5, align 8
  %274 = load i64, i64* %4, align 8
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @dump_relocations(i32* %272, i64 %273, i64 %274, i8* null, i64 0, i8* null, i64 0, i32 %275)
  br label %277

277:                                              ; preds = %271, %268
  store i32 1, i32* %12, align 4
  br label %278

278:                                              ; preds = %277, %142
  br label %279

279:                                              ; preds = %278, %222, %208, %141
  %280 = load i64, i64* %11, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %11, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 1
  store %struct.TYPE_9__* %283, %struct.TYPE_9__** %10, align 8
  br label %125

284:                                              ; preds = %125
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %289 = call i32 (i8*, ...) @printf(i8* %288)
  br label %290

290:                                              ; preds = %287, %284
  br label %291

291:                                              ; preds = %290, %122
  store i32 1, i32* %2, align 4
  br label %292

292:                                              ; preds = %291, %22
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @dump_relocations(i32*, i64, i64, i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @offset_from_vma(i32*, i64, i64) #1

declare dso_local i8* @SECTION_NAME(%struct.TYPE_9__*) #1

declare dso_local i64 @SECTION_HEADER_INDEX(i64) #1

declare dso_local %struct.TYPE_9__* @SECTION_HEADER(i64) #1

declare dso_local i8* @GET_ELF_SYMBOLS(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @get_data(i32*, i32*, i64, i32, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
