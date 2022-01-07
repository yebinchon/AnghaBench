; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MY_STAT = type { i32 }

@False = common dso_local global i32 0, align 4
@deleteOutputOnInterrupt = common dso_local global i32 0, align 4
@srcMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@inName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@outName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@noisy = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BZ_N_SUFFIX_PAIRS = common dso_local global i64 0, align 8
@zSuffix = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@forceOverwrite = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@outputHandleJustInCase = common dso_local global i32* null, align 8
@True = common dso_local global i32 0, align 4
@keepInputFiles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.MY_STAT, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @False, align 4
  store i32 %9, i32* @deleteOutputOnInterrupt, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @srcMode, align 4
  %14 = icmp ne i32 %13, 128
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12, %1
  %18 = load i32, i32* @srcMode, align 4
  switch i32 %18, label %39 [
    i32 128, label %19
    i32 130, label %24
    i32 129, label %33
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @inName, align 8
  %21 = call i32 @copyFileName(i8* %20, i32* bitcast ([8 x i8]* @.str.1 to i32*))
  %22 = load i8*, i8** @outName, align 8
  %23 = call i32 @copyFileName(i8* %22, i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %39

24:                                               ; preds = %17
  %25 = load i8*, i8** @inName, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @copyFileName(i8* %25, i32* %26)
  %28 = load i8*, i8** @outName, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @copyFileName(i8* %28, i32* %29)
  %31 = load i8*, i8** @outName, align 8
  %32 = call i32 @strcat(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %39

33:                                               ; preds = %17
  %34 = load i8*, i8** @inName, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @copyFileName(i8* %34, i32* %35)
  %37 = load i8*, i8** @outName, align 8
  %38 = call i32 @copyFileName(i8* %37, i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %39

39:                                               ; preds = %17, %33, %24, %19
  %40 = load i32, i32* @srcMode, align 4
  %41 = icmp ne i32 %40, 128
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i8*, i8** @inName, align 8
  %44 = call i64 @containsDubiousChars(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i64, i64* @noisy, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** @progName, align 8
  %52 = load i8*, i8** @inName, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = call i32 @setExit(i32 1)
  br label %317

56:                                               ; preds = %42, %39
  %57 = load i32, i32* @srcMode, align 4
  %58 = icmp ne i32 %57, 128
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i8*, i8** @inName, align 8
  %61 = call i64 @fileExists(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** @progName, align 8
  %66 = load i8*, i8** @inName, align 8
  %67 = load i32, i32* @errno, align 4
  %68 = call i8* @strerror(i32 %67)
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %65, i8* %66, i8* %68)
  %70 = call i32 @setExit(i32 1)
  br label %317

71:                                               ; preds = %59, %56
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %99, %71
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @BZ_N_SUFFIX_PAIRS, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %72
  %77 = load i8*, i8** @inName, align 8
  %78 = load i8**, i8*** @zSuffix, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @hasSuffix(i8* %77, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load i64, i64* @noisy, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** @progName, align 8
  %90 = load i8*, i8** @inName, align 8
  %91 = load i8**, i8*** @zSuffix, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %89, i8* %90, i8* %94)
  br label %96

96:                                               ; preds = %87, %84
  %97 = call i32 @setExit(i32 1)
  br label %317

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %72

102:                                              ; preds = %72
  %103 = load i32, i32* @srcMode, align 4
  %104 = icmp eq i32 %103, 130
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @srcMode, align 4
  %107 = icmp eq i32 %106, 129
  br i1 %107, label %108, label %122

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** @inName, align 8
  %110 = call i32 @MY_STAT(i8* %109, %struct.MY_STAT* %7)
  %111 = getelementptr inbounds %struct.MY_STAT, %struct.MY_STAT* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @MY_S_ISDIR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** @progName, align 8
  %118 = load i8*, i8** @inName, align 8
  %119 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %117, i8* %118)
  %120 = call i32 @setExit(i32 1)
  br label %317

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i32, i32* @srcMode, align 4
  %124 = icmp eq i32 %123, 130
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i64, i64* @forceOverwrite, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** @inName, align 8
  %130 = call i64 @notAStandardFile(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i64, i64* @noisy, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* @stderr, align 4
  %137 = load i8*, i8** @progName, align 8
  %138 = load i8*, i8** @inName, align 8
  %139 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %135, %132
  %141 = call i32 @setExit(i32 1)
  br label %317

142:                                              ; preds = %128, %125, %122
  %143 = load i32, i32* @srcMode, align 4
  %144 = icmp eq i32 %143, 130
  br i1 %144, label %145, label %162

145:                                              ; preds = %142
  %146 = load i8*, i8** @outName, align 8
  %147 = call i64 @fileExists(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load i64, i64* @forceOverwrite, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** @outName, align 8
  %154 = call i32 @remove(i8* %153)
  br label %161

155:                                              ; preds = %149
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8*, i8** @progName, align 8
  %158 = load i8*, i8** @outName, align 8
  %159 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %157, i8* %158)
  %160 = call i32 @setExit(i32 1)
  br label %317

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %145, %142
  %163 = load i32, i32* @srcMode, align 4
  %164 = icmp eq i32 %163, 130
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load i64, i64* @forceOverwrite, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %165
  %169 = load i8*, i8** @inName, align 8
  %170 = call i64 @countHardLinks(i8* %169)
  store i64 %170, i64* %5, align 8
  %171 = icmp ugt i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load i32, i32* @stderr, align 4
  %174 = load i8*, i8** @progName, align 8
  %175 = load i8*, i8** @inName, align 8
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* %5, align 8
  %178 = icmp ugt i64 %177, 1
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %181 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %174, i8* %175, i64 %176, i8* %180)
  %182 = call i32 @setExit(i32 1)
  br label %317

183:                                              ; preds = %168, %165, %162
  %184 = load i32, i32* @srcMode, align 4
  %185 = icmp eq i32 %184, 130
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i8*, i8** @inName, align 8
  %188 = call i32 @saveInputFileMetaInfo(i8* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* @srcMode, align 4
  switch i32 %190, label %282 [
    i32 128, label %191
    i32 129, label %208
    i32 130, label %243
  ]

191:                                              ; preds = %189
  %192 = load i32*, i32** @stdin, align 8
  store i32* %192, i32** %3, align 8
  %193 = load i32*, i32** @stdout, align 8
  store i32* %193, i32** %4, align 8
  %194 = load i32*, i32** @stdout, align 8
  %195 = call i32 @fileno(i32* %194)
  %196 = call i32 @isatty(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load i32, i32* @stderr, align 4
  %200 = load i8*, i8** @progName, align 8
  %201 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %199, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %200)
  %202 = load i32, i32* @stderr, align 4
  %203 = load i8*, i8** @progName, align 8
  %204 = load i8*, i8** @progName, align 8
  %205 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %203, i8* %204)
  %206 = call i32 @setExit(i32 1)
  br label %317

207:                                              ; preds = %191
  br label %284

208:                                              ; preds = %189
  %209 = load i8*, i8** @inName, align 8
  %210 = call i32* @fopen(i8* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %210, i32** %3, align 8
  %211 = load i32*, i32** @stdout, align 8
  store i32* %211, i32** %4, align 8
  %212 = load i32*, i32** @stdout, align 8
  %213 = call i32 @fileno(i32* %212)
  %214 = call i32 @isatty(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %208
  %217 = load i32, i32* @stderr, align 4
  %218 = load i8*, i8** @progName, align 8
  %219 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %217, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %218)
  %220 = load i32, i32* @stderr, align 4
  %221 = load i8*, i8** @progName, align 8
  %222 = load i8*, i8** @progName, align 8
  %223 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %221, i8* %222)
  %224 = load i32*, i32** %3, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %216
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @fclose(i32* %227)
  br label %229

229:                                              ; preds = %226, %216
  %230 = call i32 @setExit(i32 1)
  br label %317

231:                                              ; preds = %208
  %232 = load i32*, i32** %3, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i32, i32* @stderr, align 4
  %236 = load i8*, i8** @progName, align 8
  %237 = load i8*, i8** @inName, align 8
  %238 = load i32, i32* @errno, align 4
  %239 = call i8* @strerror(i32 %238)
  %240 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %236, i8* %237, i8* %239)
  %241 = call i32 @setExit(i32 1)
  br label %317

242:                                              ; preds = %231
  br label %284

243:                                              ; preds = %189
  %244 = load i8*, i8** @inName, align 8
  %245 = call i32* @fopen(i8* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %245, i32** %3, align 8
  %246 = load i8*, i8** @outName, align 8
  %247 = call i32* @fopen_output_safely(i8* %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  store i32* %247, i32** %4, align 8
  %248 = load i32*, i32** %4, align 8
  %249 = icmp eq i32* %248, null
  br i1 %249, label %250, label %264

250:                                              ; preds = %243
  %251 = load i32, i32* @stderr, align 4
  %252 = load i8*, i8** @progName, align 8
  %253 = load i8*, i8** @outName, align 8
  %254 = load i32, i32* @errno, align 4
  %255 = call i8* @strerror(i32 %254)
  %256 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* %252, i8* %253, i8* %255)
  %257 = load i32*, i32** %3, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %250
  %260 = load i32*, i32** %3, align 8
  %261 = call i32 @fclose(i32* %260)
  br label %262

262:                                              ; preds = %259, %250
  %263 = call i32 @setExit(i32 1)
  br label %317

264:                                              ; preds = %243
  %265 = load i32*, i32** %3, align 8
  %266 = icmp eq i32* %265, null
  br i1 %266, label %267, label %281

267:                                              ; preds = %264
  %268 = load i32, i32* @stderr, align 4
  %269 = load i8*, i8** @progName, align 8
  %270 = load i8*, i8** @inName, align 8
  %271 = load i32, i32* @errno, align 4
  %272 = call i8* @strerror(i32 %271)
  %273 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %269, i8* %270, i8* %272)
  %274 = load i32*, i32** %4, align 8
  %275 = icmp ne i32* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %267
  %277 = load i32*, i32** %4, align 8
  %278 = call i32 @fclose(i32* %277)
  br label %279

279:                                              ; preds = %276, %267
  %280 = call i32 @setExit(i32 1)
  br label %317

281:                                              ; preds = %264
  br label %284

282:                                              ; preds = %189
  %283 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %281, %242, %207
  %285 = load i32, i32* @verbosity, align 4
  %286 = icmp sge i32 %285, 1
  br i1 %286, label %287, label %295

287:                                              ; preds = %284
  %288 = load i32, i32* @stderr, align 4
  %289 = load i8*, i8** @inName, align 8
  %290 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %289)
  %291 = load i8*, i8** @inName, align 8
  %292 = call i32 @pad(i8* %291)
  %293 = load i32, i32* @stderr, align 4
  %294 = call i32 @fflush(i32 %293)
  br label %295

295:                                              ; preds = %287, %284
  %296 = load i32*, i32** %4, align 8
  store i32* %296, i32** @outputHandleJustInCase, align 8
  %297 = load i32, i32* @True, align 4
  store i32 %297, i32* @deleteOutputOnInterrupt, align 4
  %298 = load i32*, i32** %3, align 8
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 @compressStream(i32* %298, i32* %299)
  store i32* null, i32** @outputHandleJustInCase, align 8
  %301 = load i32, i32* @srcMode, align 4
  %302 = icmp eq i32 %301, 130
  br i1 %302, label %303, label %315

303:                                              ; preds = %295
  %304 = load i8*, i8** @outName, align 8
  %305 = call i32 @applySavedTimeInfoToOutputFile(i8* %304)
  %306 = load i32, i32* @False, align 4
  store i32 %306, i32* @deleteOutputOnInterrupt, align 4
  %307 = load i32, i32* @keepInputFiles, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %303
  %310 = load i8*, i8** @inName, align 8
  %311 = call i32 @remove(i8* %310)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @ERROR_IF_NOT_ZERO(i32 %312)
  br label %314

314:                                              ; preds = %309, %303
  br label %315

315:                                              ; preds = %314, %295
  %316 = load i32, i32* @False, align 4
  store i32 %316, i32* @deleteOutputOnInterrupt, align 4
  br label %317

317:                                              ; preds = %315, %279, %262, %234, %229, %198, %172, %155, %140, %115, %96, %63, %54
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @copyFileName(i8*, i32*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @containsDubiousChars(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @setExit(i32) #1

declare dso_local i64 @fileExists(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @hasSuffix(i8*, i8*) #1

declare dso_local i32 @MY_STAT(i8*, %struct.MY_STAT*) #1

declare dso_local i64 @MY_S_ISDIR(i32) #1

declare dso_local i64 @notAStandardFile(i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i64 @countHardLinks(i8*) #1

declare dso_local i32 @saveInputFileMetaInfo(i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen_output_safely(i8*, i8*) #1

declare dso_local i32 @pad(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @compressStream(i32*, i32*) #1

declare dso_local i32 @applySavedTimeInfoToOutputFile(i8*) #1

declare dso_local i32 @ERROR_IF_NOT_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
