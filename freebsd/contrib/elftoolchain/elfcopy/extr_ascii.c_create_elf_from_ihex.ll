; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_elf_from_ihex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_create_elf_from_ihex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32* }
%struct.section = type { i32 }

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
@.str.6 = private unnamed_addr constant [20 x i8] c"Invalid ihex record\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Invalid ihex record or mismatched checksum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"new_data_section failed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fgets failed\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"elf_newscn failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"gelf_update_ehdr() failed: %s\00", align 1
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"elf_update() failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_elf_from_ihex(%struct.elfcopy* %0, i32 %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.section*, align 8
  %10 = alloca %struct.section*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i32 %1, i32* %4, align 4
  %24 = load i32, i32* @_LINE_BUFSZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %5, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %28 = load i32, i32* @_DATA_BUFSZ, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dup(i32 %31)
  store i32 %32, i32* %20, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @err(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i32, i32* %20, align 4
  %39 = call i32* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @err(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %46 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %49 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @gelf_newehdr(i32 %47, i32 %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 @elf_errmsg(i32 -1)
  %56 = call i32 @errx(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %59 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @gelf_getehdr(i32 %60, %struct.TYPE_5__* %8)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @elf_errmsg(i32 -1)
  %66 = call i32 @errx(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %69 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @EI_CLASS, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %76 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @EI_DATA, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @ELFOSABI_NONE, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @EI_OSABI, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %88 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @ET_REL, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @RELOCATABLE, align 4
  %95 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %96 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %100 = call i32 @init_shstrtab(%struct.elfcopy* %99)
  %101 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %102 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %106 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ELF_T_EHDR, align 4
  %109 = load i32, i32* @EV_CURRENT, align 4
  %110 = call i64 @gelf_fsize(i32 %107, i32 %108, i32 1, i32 %109)
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %16, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %67
  %114 = load i32, i32* @EXIT_FAILURE, align 4
  %115 = call i32 @elf_errmsg(i32 -1)
  %116 = call i32 @errx(i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %67
  store %struct.section* null, %struct.section** %9, align 8
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %13, align 8
  br label %118

118:                                              ; preds = %204, %144, %139, %133, %117
  %119 = load i32, i32* @_LINE_BUFSZ, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = call i32* @fgets(i8* %27, i32 %119, i32* %120)
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %205

123:                                              ; preds = %118
  %124 = getelementptr inbounds i8, i8* %27, i64 0
  %125 = load i8, i8* %124, align 16
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 13
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds i8, i8* %27, i64 0
  %130 = load i8, i8* %129, align 16
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %123
  br label %118

134:                                              ; preds = %128
  %135 = getelementptr inbounds i8, i8* %27, i64 0
  %136 = load i8, i8* %135, align 16
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 58
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %118

141:                                              ; preds = %134
  %142 = call i64 @ihex_read(i8* %27, i8* %23, i64* %12, i64* %15, i32* %30, i64* %19)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %118

146:                                              ; preds = %141
  %147 = load i8, i8* %23, align 1
  %148 = sext i8 %147 to i32
  switch i32 %148, label %203 [
    i32 48, label %149
    i32 49, label %193
    i32 50, label %194
    i32 51, label %197
    i32 52, label %198
    i32 53, label %201
  ]

149:                                              ; preds = %146
  %150 = load i64, i64* %19, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %204

153:                                              ; preds = %149
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* %12, align 8
  %156 = add nsw i64 %154, %155
  store i64 %156, i64* %17, align 8
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %153
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %17, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %159, %153
  %164 = load %struct.section*, %struct.section** %9, align 8
  %165 = icmp ne %struct.section* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.section*, %struct.section** %9, align 8
  %168 = call i32 @finalize_data_section(%struct.section* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %171 = load i32, i32* %22, align 4
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %17, align 8
  %174 = call %struct.section* @new_data_section(%struct.elfcopy* %170, i32 %171, i64 %172, i64 %173)
  store %struct.section* %174, %struct.section** %9, align 8
  %175 = load %struct.section*, %struct.section** %9, align 8
  %176 = icmp eq %struct.section* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %204

179:                                              ; preds = %169
  %180 = load i32, i32* %22, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %22, align 4
  %182 = load i64, i64* %17, align 8
  store i64 %182, i64* %18, align 8
  store i32 0, i32* %21, align 4
  br label %183

183:                                              ; preds = %179, %159
  %184 = load %struct.section*, %struct.section** %9, align 8
  %185 = load i64, i64* %19, align 8
  %186 = call i32 @append_data(%struct.section* %184, i32* %30, i64 %185)
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* %16, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %16, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %18, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %18, align 8
  br label %204

193:                                              ; preds = %146
  br label %206

194:                                              ; preds = %146
  %195 = load i64, i64* %12, align 8
  %196 = shl i64 %195, 4
  store i64 %196, i64* %13, align 8
  br label %204

197:                                              ; preds = %146
  br label %204

198:                                              ; preds = %146
  %199 = load i64, i64* %15, align 8
  %200 = shl i64 %199, 16
  store i64 %200, i64* %13, align 8
  br label %204

201:                                              ; preds = %146
  %202 = load i64, i64* %15, align 8
  store i64 %202, i64* %14, align 8
  br label %204

203:                                              ; preds = %146
  br label %204

204:                                              ; preds = %203, %201, %198, %197, %194, %183, %177, %152
  br label %118

205:                                              ; preds = %118
  br label %206

206:                                              ; preds = %205, %193
  %207 = load %struct.section*, %struct.section** %9, align 8
  %208 = icmp ne %struct.section* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.section*, %struct.section** %9, align 8
  %211 = call i32 @finalize_data_section(%struct.section* %210)
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i32*, i32** %11, align 8
  %214 = call i64 @ferror(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %212
  %219 = load i32*, i32** %11, align 8
  %220 = call i32 @fclose(i32* %219)
  %221 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %222 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32* @elf_newscn(i32 %223)
  %225 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %226 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %225, i32 0, i32 1
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  store i32* %224, i32** %228, align 8
  %229 = icmp eq i32* %224, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %218
  %231 = load i32, i32* @EXIT_FAILURE, align 4
  %232 = call i32 @elf_errmsg(i32 -1)
  %233 = call i32 @errx(i32 %231, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %230, %218
  %235 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %236 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %237 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %236, i32 0, i32 1
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = call i32 @insert_to_sec_list(%struct.elfcopy* %235, %struct.TYPE_6__* %238, i32 1)
  %240 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %241 = call %struct.section* @insert_shtab(%struct.elfcopy* %240, i32 1)
  store %struct.section* %241, %struct.section** %10, align 8
  %242 = load i64, i64* %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i64 %242, i64* %243, align 8
  %244 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %245 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @gelf_update_ehdr(i32 %246, %struct.TYPE_5__* %8)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %234
  %250 = load i32, i32* @EXIT_FAILURE, align 4
  %251 = call i32 @elf_errmsg(i32 -1)
  %252 = call i32 @errx(i32 %250, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %249, %234
  %254 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %255 = call i32 @update_shdr(%struct.elfcopy* %254, i32 0)
  %256 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %257 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32* @gelf_getehdr(i32 %258, %struct.TYPE_5__* %8)
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %253
  %262 = load i32, i32* @EXIT_FAILURE, align 4
  %263 = call i32 @elf_errmsg(i32 -1)
  %264 = call i32 @errx(i32 %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %261, %253
  %266 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %267 = call i32 @resync_sections(%struct.elfcopy* %266)
  %268 = load %struct.section*, %struct.section** %10, align 8
  %269 = getelementptr inbounds %struct.section, %struct.section* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %270, i32* %271, align 8
  %272 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %273 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i64 @gelf_update_ehdr(i32 %274, %struct.TYPE_5__* %8)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %265
  %278 = load i32, i32* @EXIT_FAILURE, align 4
  %279 = call i32 @elf_errmsg(i32 -1)
  %280 = call i32 @errx(i32 %278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %279)
  br label %281

281:                                              ; preds = %277, %265
  %282 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %283 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @ELF_C_WRITE, align 4
  %286 = call i64 @elf_update(i32 %284, i32 %285)
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load i32, i32* @EXIT_FAILURE, align 4
  %290 = call i32 @elf_errmsg(i32 -1)
  %291 = call i32 @errx(i32 %289, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %290)
  br label %292

292:                                              ; preds = %288, %281
  %293 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %294 = call i32 @free_elf(%struct.elfcopy* %293)
  %295 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %295)
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

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @ihex_read(i8*, i8*, i64*, i64*, i32*, i64*) #2

declare dso_local i32 @finalize_data_section(%struct.section*) #2

declare dso_local %struct.section* @new_data_section(%struct.elfcopy*, i32, i64, i64) #2

declare dso_local i32 @append_data(%struct.section*, i32*, i64) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32* @elf_newscn(i32) #2

declare dso_local i32 @insert_to_sec_list(%struct.elfcopy*, %struct.TYPE_6__*, i32) #2

declare dso_local %struct.section* @insert_shtab(%struct.elfcopy*, i32) #2

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
