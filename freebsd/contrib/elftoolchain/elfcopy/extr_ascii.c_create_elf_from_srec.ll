; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_elf_from_srec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_elf_from_srec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32* }
%struct.section = type { i32, i32 }

@_LINE_BUFSZ = common dso_local global i32 0, align 4
@_DATA_BUFSZ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dup failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fdopen failed\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gelf_newehdr failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"gelf_getehdr() failed: %s\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELFOSABI_NONE = common dso_local global i32 0, align 4
@EI_OSABI = common dso_local global i64 0, align 8
@ET_REL = common dso_local global i32 0, align 4
@RELOCATABLE = common dso_local global i32 0, align 4
@ELF_T_EHDR = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"gelf_fsize() failed: %s\00", align 1
@SYMTAB_EXIST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Invalid srec record\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Invalid srec record or mismatched checksum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"new_data_section failed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fgets failed\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"elf_newscn failed: %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"fseek failed\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s $%jx\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Invalid symbolsrec record\00", align 1
@SHN_ABS = common dso_local global i32 0, align 4
@STB_GLOBAL = common dso_local global i32 0, align 4
@STT_NOTYPE = common dso_local global i32 0, align 4
@ELF_T_SHDR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"gelf_update_ehdr() failed: %s\00", align 1
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"elf_update() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_elf_from_srec(%struct.elfcopy* %0, i32 %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.section*, align 8
  %11 = alloca %struct.section*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i32 %1, i32* %4, align 4
  %26 = load i32, i32* @_LINE_BUFSZ, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %5, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  %30 = load i32, i32* @_LINE_BUFSZ, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %7, align 8
  %33 = load i32, i32* @_DATA_BUFSZ, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %8, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dup(i32 %36)
  store i32 %37, i32* %19, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = call i32 @err(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* %19, align 4
  %44 = call i32* @fdopen(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %44, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @err(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %51 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %54 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @gelf_newehdr(i32 %52, i32 %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @elf_errmsg(i32 -1)
  %61 = call i32 @errx(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %64 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @gelf_getehdr(i32 %65, %struct.TYPE_5__* %9)
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = call i32 @elf_errmsg(i32 -1)
  %71 = call i32 @errx(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %74 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @EI_CLASS, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %81 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @EI_DATA, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @ELFOSABI_NONE, align 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @EI_OSABI, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %93 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @ET_REL, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @RELOCATABLE, align 4
  %100 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %101 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %105 = call i32 @init_shstrtab(%struct.elfcopy* %104)
  %106 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %107 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %111 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ELF_T_EHDR, align 4
  %114 = load i32, i32* @EV_CURRENT, align 4
  %115 = call i64 @gelf_fsize(i32 %112, i32 %113, i32 1, i32 %114)
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %72
  %119 = load i32, i32* @EXIT_FAILURE, align 4
  %120 = call i32 @elf_errmsg(i32 -1)
  %121 = call i32 @errx(i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %72
  store %struct.section* null, %struct.section** %10, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %123

123:                                              ; preds = %246, %197, %192, %176, %138, %122
  %124 = load i32, i32* @_LINE_BUFSZ, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i8* @fgets(i8* %29, i32 %124, i32* %125)
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %247

128:                                              ; preds = %123
  store i64 0, i64* %18, align 8
  %129 = getelementptr inbounds i8, i8* %29, i64 0
  %130 = load i8, i8* %129, align 16
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 13
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds i8, i8* %29, i64 0
  %135 = load i8, i8* %134, align 16
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %138, label %139

138:                                              ; preds = %133, %128
  br label %123

139:                                              ; preds = %133
  %140 = getelementptr inbounds i8, i8* %29, i64 0
  %141 = load i8, i8* %140, align 16
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 36
  br i1 %143, label %144, label %177

144:                                              ; preds = %139
  %145 = getelementptr inbounds i8, i8* %29, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 36
  br i1 %148, label %149, label %177

149:                                              ; preds = %144
  %150 = load i32, i32* @SYMTAB_EXIST, align 4
  %151 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %152 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %171, %149
  %156 = load i32, i32* @_LINE_BUFSZ, align 4
  %157 = load i32*, i32** %12, align 8
  %158 = call i8* @fgets(i8* %29, i32 %156, i32* %157)
  store i8* %158, i8** %24, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = getelementptr inbounds i8, i8* %29, i64 0
  %162 = load i8, i8* %161, align 16
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 36
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = getelementptr inbounds i8, i8* %29, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 36
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %172

171:                                              ; preds = %165, %160
  br label %155

172:                                              ; preds = %170, %155
  %173 = load i8*, i8** %24, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %247

176:                                              ; preds = %172
  br label %123

177:                                              ; preds = %144, %139
  %178 = getelementptr inbounds i8, i8* %29, i64 0
  %179 = load i8, i8* %178, align 16
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 83
  br i1 %181, label %192, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds i8, i8* %29, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp slt i32 %185, 48
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds i8, i8* %29, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sgt i32 %190, 57
  br i1 %191, label %192, label %194

192:                                              ; preds = %187, %182, %177
  %193 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %123

194:                                              ; preds = %187
  %195 = call i64 @srec_read(i8* %29, i8* %25, i64* %13, i32* %35, i64* %18)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %123

199:                                              ; preds = %194
  %200 = load i8, i8* %25, align 1
  %201 = sext i8 %200 to i32
  switch i32 %201, label %245 [
    i32 49, label %202
    i32 50, label %202
    i32 51, label %202
    i32 55, label %243
    i32 56, label %243
    i32 57, label %243
  ]

202:                                              ; preds = %199, %199, %199
  %203 = load i64, i64* %18, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %246

206:                                              ; preds = %202
  %207 = load i32, i32* %20, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = load i64, i64* %16, align 8
  %211 = load i64, i64* %13, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %209, %206
  %214 = load %struct.section*, %struct.section** %10, align 8
  %215 = icmp ne %struct.section* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.section*, %struct.section** %10, align 8
  %218 = call i32 @finalize_data_section(%struct.section* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %221 = load i32, i32* %21, align 4
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* %13, align 8
  %224 = call %struct.section* @new_data_section(%struct.elfcopy* %220, i32 %221, i64 %222, i64 %223)
  store %struct.section* %224, %struct.section** %10, align 8
  %225 = load %struct.section*, %struct.section** %10, align 8
  %226 = icmp eq %struct.section* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %246

229:                                              ; preds = %219
  %230 = load i32, i32* %21, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %21, align 4
  %232 = load i64, i64* %13, align 8
  store i64 %232, i64* %16, align 8
  store i32 0, i32* %20, align 4
  br label %233

233:                                              ; preds = %229, %209
  %234 = load %struct.section*, %struct.section** %10, align 8
  %235 = load i64, i64* %18, align 8
  %236 = call i32 @append_data(%struct.section* %234, i32* %35, i64 %235)
  %237 = load i64, i64* %18, align 8
  %238 = load i64, i64* %15, align 8
  %239 = add i64 %238, %237
  store i64 %239, i64* %15, align 8
  %240 = load i64, i64* %18, align 8
  %241 = load i64, i64* %16, align 8
  %242 = add i64 %241, %240
  store i64 %242, i64* %16, align 8
  br label %246

243:                                              ; preds = %199, %199, %199
  %244 = load i64, i64* %13, align 8
  store i64 %244, i64* %14, align 8
  br label %246

245:                                              ; preds = %199
  br label %246

246:                                              ; preds = %245, %243, %233, %227, %205
  br label %123

247:                                              ; preds = %175, %123
  %248 = load %struct.section*, %struct.section** %10, align 8
  %249 = icmp ne %struct.section* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load %struct.section*, %struct.section** %10, align 8
  %252 = call i32 @finalize_data_section(%struct.section* %251)
  br label %253

253:                                              ; preds = %250, %247
  %254 = load i32*, i32** %12, align 8
  %255 = call i64 @ferror(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %253
  %260 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %261 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32* @elf_newscn(i32 %262)
  %264 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %265 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %264, i32 0, i32 2
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  store i32* %263, i32** %267, align 8
  %268 = icmp eq i32* %263, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %259
  %270 = load i32, i32* @EXIT_FAILURE, align 4
  %271 = call i32 @elf_errmsg(i32 -1)
  %272 = call i32 @errx(i32 %270, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %269, %259
  %274 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %275 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %276 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %275, i32 0, i32 2
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = call i32 @insert_to_sec_list(%struct.elfcopy* %274, %struct.TYPE_6__* %277, i32 1)
  %279 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %280 = call %struct.section* @insert_shtab(%struct.elfcopy* %279, i32 1)
  store %struct.section* %280, %struct.section** %11, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  %281 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %282 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @SYMTAB_EXIST, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %352

287:                                              ; preds = %273
  %288 = load i32*, i32** %12, align 8
  %289 = load i32, i32* @SEEK_SET, align 4
  %290 = call i64 @fseek(i32* %288, i32 0, i32 %289)
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %294 = load i32, i32* @SYMTAB_EXIST, align 4
  %295 = xor i32 %294, -1
  %296 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %297 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, %295
  store i32 %299, i32* %297, align 8
  br label %386

300:                                              ; preds = %287
  br label %301

301:                                              ; preds = %350, %349, %323, %319, %300
  %302 = load i32, i32* @_LINE_BUFSZ, align 4
  %303 = load i32*, i32** %12, align 8
  %304 = call i8* @fgets(i8* %29, i32 %302, i32* %303)
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %351

306:                                              ; preds = %301
  %307 = load i32, i32* %22, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %339

309:                                              ; preds = %306
  %310 = getelementptr inbounds i8, i8* %29, i64 0
  %311 = load i8, i8* %310, align 16
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 36
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = getelementptr inbounds i8, i8* %29, i64 1
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 36
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  store i32 0, i32* %22, align 4
  br label %301

320:                                              ; preds = %314, %309
  %321 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %32, i32* %17)
  %322 = icmp ne i32 %321, 2
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %301

325:                                              ; preds = %320
  %326 = load i32, i32* %23, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %330 = call i32 @create_external_symtab(%struct.elfcopy* %329)
  store i32 1, i32* %23, align 4
  br label %331

331:                                              ; preds = %328, %325
  %332 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %333 = load i32, i32* %17, align 4
  %334 = load i32, i32* @SHN_ABS, align 4
  %335 = load i32, i32* @STB_GLOBAL, align 4
  %336 = load i32, i32* @STT_NOTYPE, align 4
  %337 = call i32 @ELF32_ST_INFO(i32 %335, i32 %336)
  %338 = call i32 @add_to_symtab(%struct.elfcopy* %332, i8* %32, i32 %333, i32 0, i32 %334, i32 %337, i32 0, i32 1)
  br label %339

339:                                              ; preds = %331, %306
  %340 = getelementptr inbounds i8, i8* %29, i64 0
  %341 = load i8, i8* %340, align 16
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 36
  br i1 %343, label %344, label %350

344:                                              ; preds = %339
  %345 = getelementptr inbounds i8, i8* %29, i64 1
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 36
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  store i32 1, i32* %22, align 4
  br label %301

350:                                              ; preds = %344, %339
  br label %301

351:                                              ; preds = %301
  br label %352

352:                                              ; preds = %351, %273
  %353 = load i32*, i32** %12, align 8
  %354 = call i64 @ferror(i32* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %352
  %357 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %358

358:                                              ; preds = %356, %352
  %359 = load i32, i32* %23, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %378

361:                                              ; preds = %358
  %362 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %363 = call i32 @finalize_external_symtab(%struct.elfcopy* %362)
  %364 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %365 = call i32 @create_symtab_data(%struct.elfcopy* %364)
  %366 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %367 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @ELF_T_SHDR, align 4
  %370 = load i32, i32* @EV_CURRENT, align 4
  %371 = call i64 @gelf_fsize(i32 %368, i32 %369, i32 2, i32 %370)
  %372 = load %struct.section*, %struct.section** %11, align 8
  %373 = getelementptr inbounds %struct.section, %struct.section* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = add nsw i64 %375, %371
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* %373, align 4
  br label %385

378:                                              ; preds = %358
  %379 = load i32, i32* @SYMTAB_EXIST, align 4
  %380 = xor i32 %379, -1
  %381 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %382 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = and i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %385

385:                                              ; preds = %378, %361
  br label %386

386:                                              ; preds = %385, %292
  %387 = load i32*, i32** %12, align 8
  %388 = call i32 @fclose(i32* %387)
  %389 = load i64, i64* %14, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i64 %389, i64* %390, align 8
  %391 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %392 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i64 @gelf_update_ehdr(i32 %393, %struct.TYPE_5__* %9)
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %386
  %397 = load i32, i32* @EXIT_FAILURE, align 4
  %398 = call i32 @elf_errmsg(i32 -1)
  %399 = call i32 @errx(i32 %397, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %398)
  br label %400

400:                                              ; preds = %396, %386
  %401 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %402 = call i32 @update_shdr(%struct.elfcopy* %401, i32 0)
  %403 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %404 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32* @gelf_getehdr(i32 %405, %struct.TYPE_5__* %9)
  %407 = icmp eq i32* %406, null
  br i1 %407, label %408, label %412

408:                                              ; preds = %400
  %409 = load i32, i32* @EXIT_FAILURE, align 4
  %410 = call i32 @elf_errmsg(i32 -1)
  %411 = call i32 @errx(i32 %409, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %410)
  br label %412

412:                                              ; preds = %408, %400
  %413 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %414 = call i32 @resync_sections(%struct.elfcopy* %413)
  %415 = load %struct.section*, %struct.section** %11, align 8
  %416 = getelementptr inbounds %struct.section, %struct.section* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %417, i32* %418, align 8
  %419 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %420 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i64 @gelf_update_ehdr(i32 %421, %struct.TYPE_5__* %9)
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %412
  %425 = load i32, i32* @EXIT_FAILURE, align 4
  %426 = call i32 @elf_errmsg(i32 -1)
  %427 = call i32 @errx(i32 %425, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %426)
  br label %428

428:                                              ; preds = %424, %412
  %429 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %430 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @ELF_C_WRITE, align 4
  %433 = call i64 @elf_update(i32 %431, i32 %432)
  %434 = icmp slt i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %428
  %436 = load i32, i32* @EXIT_FAILURE, align 4
  %437 = call i32 @elf_errmsg(i32 -1)
  %438 = call i32 @errx(i32 %436, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %437)
  br label %439

439:                                              ; preds = %435, %428
  %440 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %441 = call i32 @free_elf(%struct.elfcopy* %440)
  %442 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %442)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32* @gelf_newehdr(i32, i32) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @elf_errmsg(i32) #2

declare dso_local i32* @gelf_getehdr(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @init_shstrtab(%struct.elfcopy*) #2

declare dso_local i64 @gelf_fsize(i32, i32, i32, i32) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @srec_read(i8*, i8*, i64*, i32*, i64*) #2

declare dso_local i32 @finalize_data_section(%struct.section*) #2

declare dso_local %struct.section* @new_data_section(%struct.elfcopy*, i32, i64, i64) #2

declare dso_local i32 @append_data(%struct.section*, i32*, i64) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32* @elf_newscn(i32) #2

declare dso_local i32 @insert_to_sec_list(%struct.elfcopy*, %struct.TYPE_6__*, i32) #2

declare dso_local %struct.section* @insert_shtab(%struct.elfcopy*, i32) #2

declare dso_local i64 @fseek(i32*, i32, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @create_external_symtab(%struct.elfcopy*) #2

declare dso_local i32 @add_to_symtab(%struct.elfcopy*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ELF32_ST_INFO(i32, i32) #2

declare dso_local i32 @finalize_external_symtab(%struct.elfcopy*) #2

declare dso_local i32 @create_symtab_data(%struct.elfcopy*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @gelf_update_ehdr(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @update_shdr(%struct.elfcopy*, i32) #2

declare dso_local i32 @resync_sections(%struct.elfcopy*) #2

declare dso_local i64 @elf_update(i32, i32) #2

declare dso_local i32 @free_elf(%struct.elfcopy*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
