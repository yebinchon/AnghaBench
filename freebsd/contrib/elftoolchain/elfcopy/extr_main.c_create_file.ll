; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_create_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, i64, i64, i64, i32, i32*, i32* }
%struct.stat = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"internal: src == NULL\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"open %s failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fstat %s failed\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"lseek failed\00", align 1
@ETF_ELF = common dso_local global i64 0, align 8
@ELFCLASSNONE = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@ELFDATANONE = common dso_local global i64 0, align 8
@ELFDATA2LSB = common dso_local global i64 0, align 8
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_LAYOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Internal: invalid target flavour\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unlink %s failed\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"file format not recognized\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"lseek failed for the output object\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"PE/EFI support not enabled at compile time\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Internal: unsupported output flavour %d\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"file format not supported\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"creation of %s failed\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"fchmod %s failed\00", align 1
@PRESERVE_DATE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"setting timestamps failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i8*, i8*)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_file(%struct.elfcopy* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.elfcopy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 (i32, i8*, ...) @errx(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 (i8*, i32, ...) @open(i8* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i32, i8*, ...) @err(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @fstat(i32 %31, %struct.stat* %7)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32, i8*, ...) @err(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @create_tempfile(i8** %8, i32* %12)
  br label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = load i32, i32* @O_CREAT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 (i8*, i32, ...) @open(i8* %44, i32 %47, i32 493)
  store i32 %48, i32* %12, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (i32, i8*, ...) @err(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @ac_detect_ar(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ac_create_ar(%struct.elfcopy* %60, i32 %61, i32 %62)
  br label %306

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i64 @lseek(i32 %65, i32 0, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = call i32 (i32, i8*, ...) @err(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %74 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ETF_ELF, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %185

78:                                               ; preds = %72
  %79 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %80 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ETF_ELF, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %86 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ELFCLASSNONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i64, i64* @ELFCLASS64, align 8
  %92 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %93 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %96 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ELFDATANONE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i64, i64* @ELFDATA2LSB, align 8
  %102 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %103 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %78
  %106 = call i32 @create_tempfile(i8** %9, i32* %10)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @ELF_C_WRITE, align 4
  %109 = call i8* @elf_begin(i32 %107, i32 %108, i32* null)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %112 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %111, i32 0, i32 6
  store i32* %110, i32** %112, align 8
  %113 = icmp eq i32* %110, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  %116 = call i32 @elf_errmsg(i32 -1)
  %117 = call i32 (i32, i8*, ...) @errx(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %105
  %119 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %120 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @ELF_C_SET, align 4
  %123 = load i32, i32* @ELF_F_LAYOUT, align 4
  %124 = call i32 @elf_flagelf(i32* %121, i32 %122, i32 %123)
  %125 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %126 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 132
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @create_elf_from_binary(%struct.elfcopy* %130, i32 %131, i8* %132)
  br label %157

134:                                              ; preds = %118
  %135 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %136 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 130
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @create_elf_from_ihex(%struct.elfcopy* %140, i32 %141)
  br label %156

143:                                              ; preds = %134
  %144 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %145 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 128
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @create_elf_from_srec(%struct.elfcopy* %149, i32 %150)
  br label %155

152:                                              ; preds = %143
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  %154 = call i32 (i32, i8*, ...) @errx(i32 %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %148
  br label %156

156:                                              ; preds = %155, %139
  br label %157

157:                                              ; preds = %156, %129
  %158 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %159 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @elf_end(i32* %160)
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @close(i32 %162)
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* @O_RDONLY, align 4
  %166 = call i32 (i8*, i32, ...) @open(i8* %164, i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load i32, i32* @EXIT_FAILURE, align 4
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 (i32, i8*, ...) @err(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %168, %157
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @close(i32 %173)
  %175 = load i8*, i8** %9, align 8
  %176 = call i64 @unlink(i8* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* @EXIT_FAILURE, align 4
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 (i32, i8*, ...) @err(i32 %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %178, %172
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %182, %72
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @ELF_C_READ, align 4
  %188 = call i8* @elf_begin(i32 %186, i32 %187, i32* null)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %191 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %190, i32 0, i32 5
  store i32* %189, i32** %191, align 8
  %192 = icmp eq i32* %189, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load i32, i32* @EXIT_FAILURE, align 4
  %195 = call i32 @elf_errmsg(i32 -1)
  %196 = call i32 (i32, i8*, ...) @errx(i32 %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %193, %185
  %198 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %199 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @elf_kind(i32* %200)
  switch i32 %201, label %298 [
    i32 133, label %202
    i32 134, label %205
    i32 135, label %297
  ]

202:                                              ; preds = %197
  %203 = load i32, i32* @EXIT_FAILURE, align 4
  %204 = call i32 (i32, i8*, ...) @errx(i32 %203, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %205

205:                                              ; preds = %197, %202
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @ELF_C_WRITE, align 4
  %208 = call i8* @elf_begin(i32 %206, i32 %207, i32* null)
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %211 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %210, i32 0, i32 6
  store i32* %209, i32** %211, align 8
  %212 = icmp eq i32* %209, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load i32, i32* @EXIT_FAILURE, align 4
  %215 = call i32 @elf_errmsg(i32 -1)
  %216 = call i32 (i32, i8*, ...) @errx(i32 %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %213, %205
  %218 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %219 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* @ELF_C_SET, align 4
  %222 = load i32, i32* @ELF_F_LAYOUT, align 4
  %223 = call i32 @elf_flagelf(i32* %220, i32 %221, i32 %222)
  %224 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %225 = call i32 @create_elf(%struct.elfcopy* %224)
  %226 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %227 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @elf_end(i32* %228)
  %230 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %231 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @ETF_ELF, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %296

235:                                              ; preds = %217
  %236 = load i8*, i8** %8, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %249

238:                                              ; preds = %235
  %239 = load i8*, i8** %8, align 8
  %240 = call i64 @unlink(i8* %239)
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i32, i32* @EXIT_FAILURE, align 4
  %244 = load i8*, i8** %8, align 8
  %245 = call i32 (i32, i8*, ...) @err(i32 %243, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %244)
  br label %246

246:                                              ; preds = %242, %238
  %247 = load i8*, i8** %8, align 8
  %248 = call i32 @free(i8* %247)
  br label %249

249:                                              ; preds = %246, %235
  %250 = call i32 @create_tempfile(i8** %8, i32* %13)
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @SEEK_SET, align 4
  %253 = call i64 @lseek(i32 %251, i32 0, i32 %252)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load i32, i32* @EXIT_FAILURE, align 4
  %257 = call i32 (i32, i8*, ...) @err(i32 %256, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %258

258:                                              ; preds = %255, %249
  %259 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %260 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  switch i64 %261, label %286 [
    i64 132, label %262
    i64 130, label %266
    i64 128, label %270
    i64 129, label %283
    i64 131, label %283
  ]

262:                                              ; preds = %258
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @create_binary(i32 %263, i32 %264)
  br label %292

266:                                              ; preds = %258
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @create_ihex(i32 %267, i32 %268)
  br label %292

270:                                              ; preds = %258
  %271 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load i8*, i8** %6, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = load i8*, i8** %6, align 8
  br label %280

278:                                              ; preds = %270
  %279 = load i8*, i8** %5, align 8
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i8* [ %277, %276 ], [ %279, %278 ]
  %282 = call i32 @create_srec(%struct.elfcopy* %271, i32 %272, i32 %273, i8* %281)
  br label %292

283:                                              ; preds = %258, %258
  %284 = load i32, i32* @EXIT_FAILURE, align 4
  %285 = call i32 (i32, i8*, ...) @errx(i32 %284, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %292

286:                                              ; preds = %258
  %287 = load i32, i32* @EXIT_FAILURE, align 4
  %288 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %289 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = call i32 (i32, i8*, ...) @errx(i32 %287, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %290)
  br label %292

292:                                              ; preds = %286, %283, %280, %266, %262
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @close(i32 %293)
  %295 = load i32, i32* %13, align 4
  store i32 %295, i32* %12, align 4
  br label %296

296:                                              ; preds = %292, %217
  br label %301

297:                                              ; preds = %197
  br label %301

298:                                              ; preds = %197
  %299 = load i32, i32* @EXIT_FAILURE, align 4
  %300 = call i32 (i32, i8*, ...) @errx(i32 %299, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %297, %296
  %302 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %303 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %302, i32 0, i32 5
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @elf_end(i32* %304)
  br label %306

306:                                              ; preds = %301, %59
  %307 = load i8*, i8** %8, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %343

309:                                              ; preds = %306
  store i32 0, i32* %15, align 4
  %310 = load i8*, i8** %6, align 8
  %311 = icmp eq i8* %310, null
  br i1 %311, label %312, label %328

312:                                              ; preds = %309
  %313 = load i8*, i8** %5, align 8
  store i8* %313, i8** %6, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = call i32 @lstat(i8* %314, %struct.stat* %7)
  %316 = icmp ne i32 %315, -1
  br i1 %316, label %317, label %327

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, 1
  br i1 %320, label %326, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @S_ISLNK(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %321, %317
  store i32 1, i32* %15, align 4
  br label %327

327:                                              ; preds = %326, %321, %312
  br label %328

328:                                              ; preds = %327, %309
  %329 = load i8*, i8** %8, align 8
  %330 = load i8*, i8** %6, align 8
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %15, align 4
  %333 = call i64 @copy_from_tempfile(i8* %329, i8* %330, i32 %331, i32* %14, i32 %332)
  %334 = icmp slt i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %328
  %336 = load i32, i32* @EXIT_FAILURE, align 4
  %337 = load i8*, i8** %6, align 8
  %338 = call i32 (i32, i8*, ...) @err(i32 %336, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %337)
  br label %339

339:                                              ; preds = %335, %328
  %340 = load i8*, i8** %8, align 8
  %341 = call i32 @free(i8* %340)
  store i8* null, i8** %8, align 8
  %342 = load i32, i32* %14, align 4
  store i32 %342, i32* %12, align 4
  br label %343

343:                                              ; preds = %339, %306
  %344 = load i8*, i8** %6, align 8
  %345 = call i64 @strcmp(i8* %344, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %357

347:                                              ; preds = %343
  %348 = load i32, i32* %12, align 4
  %349 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @fchmod(i32 %348, i32 %350)
  %352 = icmp eq i32 %351, -1
  br i1 %352, label %353, label %357

353:                                              ; preds = %347
  %354 = load i32, i32* @EXIT_FAILURE, align 4
  %355 = load i8*, i8** %6, align 8
  %356 = call i32 (i32, i8*, ...) @err(i32 %354, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %353, %347, %343
  %358 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %359 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @PRESERVE_DATE, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %357
  %365 = load i8*, i8** %6, align 8
  %366 = call i64 @elftc_set_timestamps(i8* %365, %struct.stat* %7)
  %367 = icmp slt i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = load i32, i32* @EXIT_FAILURE, align 4
  %370 = call i32 (i32, i8*, ...) @err(i32 %369, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %371

371:                                              ; preds = %368, %364, %357
  %372 = load i32, i32* %11, align 4
  %373 = call i32 @close(i32 %372)
  %374 = load i32, i32* %12, align 4
  %375 = call i32 @close(i32 %374)
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @create_tempfile(i8**, i32*) #1

declare dso_local i64 @ac_detect_ar(i32) #1

declare dso_local i32 @ac_create_ar(%struct.elfcopy*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i8* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_flagelf(i32*, i32, i32) #1

declare dso_local i32 @create_elf_from_binary(%struct.elfcopy*, i32, i8*) #1

declare dso_local i32 @create_elf_from_ihex(%struct.elfcopy*, i32) #1

declare dso_local i32 @create_elf_from_srec(%struct.elfcopy*, i32) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @elf_kind(i32*) #1

declare dso_local i32 @create_elf(%struct.elfcopy*) #1

declare dso_local i32 @create_binary(i32, i32) #1

declare dso_local i32 @create_ihex(i32, i32) #1

declare dso_local i32 @create_srec(%struct.elfcopy*, i32, i32, i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @copy_from_tempfile(i8*, i8*, i32, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i64 @elftc_set_timestamps(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
