; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_translate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CU = type { i32*, i32, i32, i8*, i8*, i32 }
%struct.Func = type { i8*, i32, i32, i32* }

@section_base = common dso_local global i64 0, align 8
@unknown = common dso_local global i8* null, align 8
@DW_DLA_DIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dwarf_tag failed: %s\00", align 1
@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"could not find DW_TAG_compile_unit die\00", align 1
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_AT_high_pc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"dwarf_dieoffset failed: %s\00", align 1
@hh = common dso_local global i32 0, align 4
@culist = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"dwarf_srclines: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"dwarf_lineaddr: %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dwarf_lineno: %s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dwarf_linesrc: %s\00", align 1
@func = common dso_local global i64 0, align 8
@inlines = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"dwarf_srcfiles: %s\00", align 1
@print_addr = common dso_local global i64 0, align 8
@ELFCLASSNONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"gelf_getclass failed: %s\00", align 1
@ELFCLASS64 = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@pretty_print = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"0x%08jx: \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"0x%08jx\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0x%016jx: \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"0x%016jx\0A\00", align 1
@demangle = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"%s at \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s:%ju\0A\00", align 1
@base = common dso_local global i64 0, align 8
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"dwarf_next_cu_header: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.CU*, align 8
  %22 = alloca %struct.Func*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [1024 x i8], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @strtoull(i8* %31, i32* null, i32 16)
  store i8* %32, i8** %14, align 8
  %33 = load i64, i64* @section_base, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr i8, i8* %34, i64 %33
  store i8* %35, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %36 = load i8*, i8** @unknown, align 8
  store i8* %36, i8** %24, align 8
  store %struct.CU* null, %struct.CU** %21, align 8
  store i32* null, i32** %7, align 8
  br label %37

37:                                               ; preds = %151, %3
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dwarf_next_cu_header(i32 %38, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %10)
  store i32 %39, i32* %30, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %152

41:                                               ; preds = %37
  store i32* null, i32** %7, align 8
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @dwarf_siblingof(i32 %43, i32* %44, i32** %8, i32* %10)
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @DW_DLA_DIE, align 4
  %54 = call i32 @dwarf_dealloc(i32 %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %8, align 8
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @dwarf_tag(i32* %57, i64* %11, i32* %10)
  %59 = icmp ne i32 %58, 128
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dwarf_errmsg(i32 %61)
  %63 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %143

64:                                               ; preds = %55
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @DW_TAG_compile_unit, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %70

69:                                               ; preds = %64
  br label %42

70:                                               ; preds = %68, %42
  %71 = load i32*, i32** %8, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %143

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @DW_AT_low_pc, align 4
  %78 = call i32 @dwarf_attrval_unsigned(i32* %76, i32 %77, i8** %12, i32* %10)
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %142

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @DW_AT_high_pc, align 4
  %83 = call i32 @dwarf_attrval_unsigned(i32* %81, i32 %82, i8** %13, i32* %10)
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32*, i32** %7, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @handle_high_pc(i32* %86, i8* %87, i8** %13)
  %89 = icmp ne i32 %88, 128
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %237

91:                                               ; preds = %85
  br label %93

92:                                               ; preds = %80
  store i8* inttoptr (i64 -1 to i8*), i8** %13, align 8
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @dwarf_dieoffset(i32* %94, i32* %20, i32* %10)
  %96 = icmp ne i32 %95, 128
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dwarf_errmsg(i32 %98)
  %100 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %237

101:                                              ; preds = %93
  %102 = load i32, i32* @hh, align 4
  %103 = load i32, i32* @culist, align 4
  %104 = load %struct.CU*, %struct.CU** %21, align 8
  %105 = call i32 @HASH_FIND(i32 %102, i32 %103, i32* %20, i32 4, %struct.CU* %104)
  %106 = load %struct.CU*, %struct.CU** %21, align 8
  %107 = icmp eq %struct.CU* %106, null
  br i1 %107, label %108, label %132

108:                                              ; preds = %101
  %109 = call %struct.CU* @calloc(i32 1, i32 40)
  store %struct.CU* %109, %struct.CU** %21, align 8
  %110 = icmp eq %struct.CU* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @EXIT_FAILURE, align 4
  %113 = call i32 @err(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %20, align 4
  %116 = load %struct.CU*, %struct.CU** %21, align 8
  %117 = getelementptr inbounds %struct.CU, %struct.CU* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load %struct.CU*, %struct.CU** %21, align 8
  %120 = getelementptr inbounds %struct.CU, %struct.CU* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load %struct.CU*, %struct.CU** %21, align 8
  %123 = getelementptr inbounds %struct.CU, %struct.CU* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.CU*, %struct.CU** %21, align 8
  %125 = getelementptr inbounds %struct.CU, %struct.CU* %124, i32 0, i32 1
  %126 = call i32 @STAILQ_INIT(i32* %125)
  %127 = load i32, i32* @hh, align 4
  %128 = load i32, i32* @culist, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load %struct.CU*, %struct.CU** %21, align 8
  %131 = call i32 @HASH_ADD(i32 %127, i32 %128, i32 %129, i32 4, %struct.CU* %130)
  br label %132

132:                                              ; preds = %114, %101
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = icmp uge i8* %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8*, i8** %14, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = icmp ult i8* %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %152

141:                                              ; preds = %136, %132
  br label %142

142:                                              ; preds = %141, %75
  br label %143

143:                                              ; preds = %142, %73, %60
  %144 = load i32*, i32** %7, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* @DW_DLA_DIE, align 4
  %150 = call i32 @dwarf_dealloc(i32 %147, i32* %148, i32 %149)
  store i32* null, i32** %7, align 8
  br label %151

151:                                              ; preds = %146, %143
  br label %37

152:                                              ; preds = %140, %37
  %153 = load i32, i32* %30, align 4
  %154 = icmp ne i32 %153, 128
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32*, i32** %7, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %152
  br label %237

159:                                              ; preds = %155
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @dwarf_srclines(i32* %160, i32** %9, i32* %17, i32* %10)
  switch i32 %161, label %164 [
    i32 128, label %162
    i32 129, label %163
  ]

162:                                              ; preds = %159
  br label %168

163:                                              ; preds = %159
  br label %237

164:                                              ; preds = %159
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @dwarf_errmsg(i32 %165)
  %167 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %237

168:                                              ; preds = %162
  store i8* inttoptr (i64 -1 to i8*), i8** %19, align 8
  store i8* null, i8** %16, align 8
  %169 = load i8*, i8** @unknown, align 8
  store i8* %169, i8** %26, align 8
  store i32 0, i32* %29, align 4
  br label %170

170:                                              ; preds = %233, %168
  %171 = load i32, i32* %29, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %236

174:                                              ; preds = %170
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %29, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @dwarf_lineaddr(i32 %179, i8** %18, i32* %10)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @dwarf_errmsg(i32 %183)
  %185 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  br label %237

186:                                              ; preds = %174
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %29, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @dwarf_lineno(i32 %191, i8** %15, i32* %10)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @dwarf_errmsg(i32 %195)
  %197 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  br label %237

198:                                              ; preds = %186
  %199 = load i32*, i32** %9, align 8
  %200 = load i32, i32* %29, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @dwarf_linesrc(i32 %203, i8** %25, i32* %10)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %198
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @dwarf_errmsg(i32 %207)
  %209 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %208)
  br label %212

210:                                              ; preds = %198
  %211 = load i8*, i8** %25, align 8
  store i8* %211, i8** %24, align 8
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %18, align 8
  %215 = icmp eq i8* %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  br label %237

217:                                              ; preds = %212
  %218 = load i8*, i8** %14, align 8
  %219 = load i8*, i8** %18, align 8
  %220 = icmp ult i8* %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load i8*, i8** %14, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = icmp ugt i8* %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i8*, i8** %16, align 8
  store i8* %226, i8** %15, align 8
  %227 = load i8*, i8** %26, align 8
  store i8* %227, i8** %24, align 8
  br label %237

228:                                              ; preds = %221, %217
  br label %229

229:                                              ; preds = %228
  %230 = load i8*, i8** %18, align 8
  store i8* %230, i8** %19, align 8
  %231 = load i8*, i8** %15, align 8
  store i8* %231, i8** %16, align 8
  %232 = load i8*, i8** %24, align 8
  store i8* %232, i8** %26, align 8
  br label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %29, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %29, align 4
  br label %170

236:                                              ; preds = %170
  br label %237

237:                                              ; preds = %236, %225, %216, %194, %182, %164, %163, %158, %97, %90
  store %struct.Func* null, %struct.Func** %22, align 8
  store i8* null, i8** %23, align 8
  %238 = load i32, i32* %30, align 4
  %239 = icmp eq i32 %238, 128
  br i1 %239, label %240, label %288

240:                                              ; preds = %237
  %241 = load i64, i64* @func, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i64, i64* @inlines, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %288

246:                                              ; preds = %243, %240
  %247 = load %struct.CU*, %struct.CU** %21, align 8
  %248 = icmp ne %struct.CU* %247, null
  br i1 %248, label %249, label %288

249:                                              ; preds = %246
  %250 = load %struct.CU*, %struct.CU** %21, align 8
  %251 = getelementptr inbounds %struct.CU, %struct.CU* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %267

254:                                              ; preds = %249
  %255 = load i32*, i32** %7, align 8
  %256 = load %struct.CU*, %struct.CU** %21, align 8
  %257 = getelementptr inbounds %struct.CU, %struct.CU* %256, i32 0, i32 0
  %258 = load %struct.CU*, %struct.CU** %21, align 8
  %259 = getelementptr inbounds %struct.CU, %struct.CU* %258, i32 0, i32 2
  %260 = call i64 @dwarf_srcfiles(i32* %255, i32** %257, i32* %259, i32* %10)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @dwarf_errmsg(i32 %263)
  %265 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %262, %254
  br label %267

267:                                              ; preds = %266, %249
  %268 = load %struct.CU*, %struct.CU** %21, align 8
  %269 = getelementptr inbounds %struct.CU, %struct.CU* %268, i32 0, i32 1
  %270 = call i64 @STAILQ_EMPTY(i32* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load i32, i32* %4, align 4
  %274 = load i32*, i32** %7, align 8
  %275 = load %struct.CU*, %struct.CU** %21, align 8
  %276 = call i32 @collect_func(i32 %273, i32* %274, i32* null, %struct.CU* %275)
  store i32* null, i32** %7, align 8
  br label %277

277:                                              ; preds = %272, %267
  %278 = load %struct.CU*, %struct.CU** %21, align 8
  %279 = load i8*, i8** %14, align 8
  %280 = call %struct.Func* @search_func(%struct.CU* %278, i8* %279)
  store %struct.Func* %280, %struct.Func** %22, align 8
  %281 = load %struct.Func*, %struct.Func** %22, align 8
  %282 = icmp ne %struct.Func* %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load %struct.Func*, %struct.Func** %22, align 8
  %285 = getelementptr inbounds %struct.Func, %struct.Func* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  store i8* %286, i8** %23, align 8
  br label %287

287:                                              ; preds = %283, %277
  br label %288

288:                                              ; preds = %287, %246, %243, %237
  %289 = load i64, i64* @print_addr, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %337

291:                                              ; preds = %288
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 @gelf_getclass(i32* %292)
  store i32 %293, i32* %28, align 4
  %294 = load i32, i32* @ELFCLASSNONE, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %291
  %297 = call i32 @elf_errmsg(i32 -1)
  %298 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %297)
  %299 = load i32, i32* @ELFCLASS64, align 4
  store i32 %299, i32* %28, align 4
  br label %300

300:                                              ; preds = %296, %291
  %301 = load i32, i32* %28, align 4
  %302 = load i32, i32* @ELFCLASS32, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %320

304:                                              ; preds = %300
  %305 = load i64, i64* @pretty_print, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load i8*, i8** %14, align 8
  %309 = ptrtoint i8* %308 to i32
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %311)
  br label %319

313:                                              ; preds = %304
  %314 = load i8*, i8** %14, align 8
  %315 = ptrtoint i8* %314 to i32
  %316 = sext i32 %315 to i64
  %317 = inttoptr i64 %316 to i8*
  %318 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %317)
  br label %319

319:                                              ; preds = %313, %307
  br label %336

320:                                              ; preds = %300
  %321 = load i64, i64* @pretty_print, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %320
  %324 = load i8*, i8** %14, align 8
  %325 = ptrtoint i8* %324 to i32
  %326 = sext i32 %325 to i64
  %327 = inttoptr i64 %326 to i8*
  %328 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %327)
  br label %335

329:                                              ; preds = %320
  %330 = load i8*, i8** %14, align 8
  %331 = ptrtoint i8* %330 to i32
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to i8*
  %334 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %333)
  br label %335

335:                                              ; preds = %329, %323
  br label %336

336:                                              ; preds = %335, %319
  br label %337

337:                                              ; preds = %336, %288
  %338 = load i64, i64* @func, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %374

340:                                              ; preds = %337
  %341 = load i8*, i8** %23, align 8
  %342 = icmp eq i8* %341, null
  br i1 %342, label %343, label %345

343:                                              ; preds = %340
  %344 = load i8*, i8** @unknown, align 8
  store i8* %344, i8** %23, align 8
  br label %345

345:                                              ; preds = %343, %340
  %346 = load i64, i64* @demangle, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %363

348:                                              ; preds = %345
  %349 = load i8*, i8** %23, align 8
  %350 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %351 = call i32 @elftc_demangle(i8* %349, i8* %350, i32 1024, i32 0)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %363, label %353

353:                                              ; preds = %348
  %354 = load i64, i64* @pretty_print, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %358 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %357)
  br label %362

359:                                              ; preds = %353
  %360 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %361 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %360)
  br label %362

362:                                              ; preds = %359, %356
  br label %373

363:                                              ; preds = %348, %345
  %364 = load i64, i64* @pretty_print, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load i8*, i8** %23, align 8
  %368 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %367)
  br label %372

369:                                              ; preds = %363
  %370 = load i8*, i8** %23, align 8
  %371 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %370)
  br label %372

372:                                              ; preds = %369, %366
  br label %373

373:                                              ; preds = %372, %362
  br label %374

374:                                              ; preds = %373, %337
  %375 = load i64, i64* @base, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  %378 = load i8*, i8** %24, align 8
  %379 = call i8* @basename(i8* %378)
  br label %382

380:                                              ; preds = %374
  %381 = load i8*, i8** %24, align 8
  br label %382

382:                                              ; preds = %380, %377
  %383 = phi i8* [ %379, %377 ], [ %381, %380 ]
  %384 = load i8*, i8** %15, align 8
  %385 = ptrtoint i8* %384 to i32
  %386 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %383, i32 %385)
  %387 = load i32, i32* %30, align 4
  %388 = icmp eq i32 %387, 128
  br i1 %388, label %389, label %420

389:                                              ; preds = %382
  %390 = load i64, i64* @inlines, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %420

392:                                              ; preds = %389
  %393 = load %struct.CU*, %struct.CU** %21, align 8
  %394 = icmp ne %struct.CU* %393, null
  br i1 %394, label %395, label %420

395:                                              ; preds = %392
  %396 = load %struct.CU*, %struct.CU** %21, align 8
  %397 = getelementptr inbounds %struct.CU, %struct.CU* %396, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = icmp ne i32* %398, null
  br i1 %399, label %400, label %420

400:                                              ; preds = %395
  %401 = load %struct.Func*, %struct.Func** %22, align 8
  %402 = icmp ne %struct.Func* %401, null
  br i1 %402, label %403, label %420

403:                                              ; preds = %400
  %404 = load %struct.Func*, %struct.Func** %22, align 8
  %405 = getelementptr inbounds %struct.Func, %struct.Func* %404, i32 0, i32 3
  %406 = load i32*, i32** %405, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %420

408:                                              ; preds = %403
  %409 = load %struct.CU*, %struct.CU** %21, align 8
  %410 = load %struct.Func*, %struct.Func** %22, align 8
  %411 = getelementptr inbounds %struct.Func, %struct.Func* %410, i32 0, i32 3
  %412 = load i32*, i32** %411, align 8
  %413 = load %struct.Func*, %struct.Func** %22, align 8
  %414 = getelementptr inbounds %struct.Func, %struct.Func* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.Func*, %struct.Func** %22, align 8
  %417 = getelementptr inbounds %struct.Func, %struct.Func* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @print_inlines(%struct.CU* %409, i32* %412, i32 %415, i32 %418)
  br label %420

420:                                              ; preds = %408, %403, %400, %395, %392, %389, %382
  %421 = load i32*, i32** %7, align 8
  %422 = icmp ne i32* %421, null
  br i1 %422, label %423, label %428

423:                                              ; preds = %420
  %424 = load i32, i32* %4, align 4
  %425 = load i32*, i32** %7, align 8
  %426 = load i32, i32* @DW_DLA_DIE, align 4
  %427 = call i32 @dwarf_dealloc(i32 %424, i32* %425, i32 %426)
  br label %428

428:                                              ; preds = %423, %420
  br label %429

429:                                              ; preds = %441, %428
  %430 = load i32, i32* %30, align 4
  %431 = icmp ne i32 %430, 129
  br i1 %431, label %432, label %444

432:                                              ; preds = %429
  %433 = load i32, i32* %30, align 4
  %434 = load i32, i32* @DW_DLV_ERROR, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %441

436:                                              ; preds = %432
  %437 = load i32, i32* @EXIT_FAILURE, align 4
  %438 = load i32, i32* %10, align 4
  %439 = call i32 @dwarf_errmsg(i32 %438)
  %440 = call i32 @errx(i32 %437, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %439)
  br label %441

441:                                              ; preds = %436, %432
  %442 = load i32, i32* %4, align 4
  %443 = call i32 @dwarf_next_cu_header(i32 %442, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %10)
  store i32 %443, i32* %30, align 4
  br label %429

444:                                              ; preds = %429
  ret void
}

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @dwarf_next_cu_header(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32*, i32**, i32*) #1

declare dso_local i32 @dwarf_dealloc(i32, i32*, i32) #1

declare dso_local i32 @dwarf_tag(i32*, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_attrval_unsigned(i32*, i32, i8**, i32*) #1

declare dso_local i32 @handle_high_pc(i32*, i8*, i8**) #1

declare dso_local i32 @dwarf_dieoffset(i32*, i32*, i32*) #1

declare dso_local i32 @HASH_FIND(i32, i32, i32*, i32, %struct.CU*) #1

declare dso_local %struct.CU* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @HASH_ADD(i32, i32, i32, i32, %struct.CU*) #1

declare dso_local i32 @dwarf_srclines(i32*, i32**, i32*, i32*) #1

declare dso_local i64 @dwarf_lineaddr(i32, i8**, i32*) #1

declare dso_local i64 @dwarf_lineno(i32, i8**, i32*) #1

declare dso_local i64 @dwarf_linesrc(i32, i8**, i32*) #1

declare dso_local i64 @dwarf_srcfiles(i32*, i32**, i32*, i32*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @collect_func(i32, i32*, i32*, %struct.CU*) #1

declare dso_local %struct.Func* @search_func(%struct.CU*, i8*) #1

declare dso_local i32 @gelf_getclass(i32*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @elftc_demangle(i8*, i8*, i32, i32) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @print_inlines(%struct.CU*, i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
