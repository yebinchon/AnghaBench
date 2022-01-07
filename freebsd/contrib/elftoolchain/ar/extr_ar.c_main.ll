; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_ar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_ar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i8*, i8, i32, i8**, i32*, i32 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"ELF library initialization failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranlib\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tDUV\00", align 1
@longopts = common dso_local global i32 0, align 4
@AR_D = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@AR_S = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"abCcdDfF:ijlMmopqrSsTtUuVvxz\00", align 1
@AR_A = common dso_local global i32 0, align 4
@AR_B = common dso_local global i32 0, align 4
@AR_CC = common dso_local global i32 0, align 4
@AR_C = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"svr4\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@AR_BSD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"bsd\00", align 1
@AR_TR = common dso_local global i32 0, align 4
@AR_O = common dso_local global i32 0, align 4
@AR_SS = common dso_local global i32 0, align 4
@AR_U = common dso_local global i32 0, align 4
@AR_V = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"only one of -a and -[bi] options allowed\00", align 1
@AR_J = common dso_local global i32 0, align 4
@AR_Z = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"only one of -j and -z options allowed\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"only one of -s and -S options allowed\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"no position operand specified\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"basename failed\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"mqr\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"qrx\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ptx\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"%s: not found in archive\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bsdar*, align 8
  %7 = alloca %struct.bsdar, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.bsdar* %7, %struct.bsdar** %6, align 8
  %14 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %15 = call i32 @memset(%struct.bsdar* %14, i32 0, i32 56)
  %16 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %16, i32* %11, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %8, align 8
  %17 = load i32, i32* @stdout, align 4
  %18 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %19 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = call i8* (...) @ELFTC_GETPROGNAME()
  %21 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %22 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = icmp eq i8* %20, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %26 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @EV_CURRENT, align 4
  %29 = call i64 @elf_version(i32 %28)
  %30 = load i64, i64* @EV_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %34 = call i32 @elf_errmsg(i32 -1)
  %35 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %33, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %38 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = sext i32 %43 to i64
  %45 = icmp uge i64 %42, %44
  br i1 %45, label %46, label %123

46:                                               ; preds = %36
  %47 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %48 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* @longopts, align 4
  %63 = call i32 @getopt_long(i32 %60, i8** %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32* null)
  store i32 %63, i32* %13, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  switch i32 %66, label %85 [
    i32 116, label %67
    i32 68, label %68
    i32 85, label %74
    i32 86, label %81
    i32 128, label %83
  ]

67:                                               ; preds = %65
  br label %87

68:                                               ; preds = %65
  %69 = load i32, i32* @AR_D, align 4
  %70 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %71 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %87

74:                                               ; preds = %65
  %75 = load i32, i32* @AR_D, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %78 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %87

81:                                               ; preds = %65
  %82 = call i32 (...) @bsdar_version()
  br label %87

83:                                               ; preds = %65
  %84 = call i32 (...) @ranlib_usage()
  br label %85

85:                                               ; preds = %65, %83
  %86 = call i32 (...) @ranlib_usage()
  br label %87

87:                                               ; preds = %85, %81, %74, %68, %67
  br label %59

88:                                               ; preds = %59
  %89 = load i64, i64* @optind, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 %89
  store i8** %91, i8*** %5, align 8
  %92 = load i64, i64* @optind, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = call i32 (...) @ranlib_usage()
  br label %102

102:                                              ; preds = %100, %88
  %103 = load i32, i32* @AR_S, align 4
  %104 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %105 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %115, %102
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %5, align 8
  %111 = load i8*, i8** %109, align 8
  %112 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %113 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = icmp ne i8* %111, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %117 = call i32 @ar_write_archive(%struct.bsdar* %116, i8 signext 115)
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %108

120:                                              ; preds = %108
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @exit(i32 %121) #3
  unreachable

123:                                              ; preds = %46, %36
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (...) @bsdar_usage()
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 45
  br i1 %134, label %135, label %162

135:                                              ; preds = %128
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %9, align 8
  %139 = load i8**, i8*** %5, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %10, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i8* @malloc(i64 %145)
  store i8* %146, i8** %8, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %135
  %149 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %150 = load i32, i32* @errno, align 4
  %151 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %149, i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %152

152:                                              ; preds = %148, %135
  %153 = load i8*, i8** %8, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @snprintf(i8* %153, i64 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %157)
  %159 = load i8*, i8** %8, align 8
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %152, %128
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %315, %163
  %165 = load i32, i32* %4, align 4
  %166 = load i8**, i8*** %5, align 8
  %167 = load i32, i32* @longopts, align 4
  %168 = call i32 @getopt_long(i32 %165, i8** %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32* null)
  store i32 %168, i32* %13, align 4
  %169 = icmp ne i32 %168, -1
  br i1 %169, label %170, label %316

170:                                              ; preds = %164
  %171 = load i32, i32* %13, align 4
  switch i32 %171, label %313 [
    i32 97, label %172
    i32 98, label %178
    i32 105, label %178
    i32 67, label %184
    i32 99, label %190
    i32 100, label %196
    i32 68, label %200
    i32 70, label %206
    i32 102, label %235
    i32 84, label %235
    i32 106, label %241
    i32 108, label %242
    i32 77, label %243
    i32 109, label %247
    i32 111, label %251
    i32 112, label %257
    i32 113, label %261
    i32 114, label %265
    i32 83, label %269
    i32 115, label %275
    i32 116, label %281
    i32 85, label %285
    i32 117, label %292
    i32 86, label %298
    i32 118, label %300
    i32 120, label %306
    i32 122, label %310
    i32 128, label %311
  ]

172:                                              ; preds = %170
  %173 = load i32, i32* @AR_A, align 4
  %174 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %175 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %315

178:                                              ; preds = %170, %170
  %179 = load i32, i32* @AR_B, align 4
  %180 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %181 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %315

184:                                              ; preds = %170
  %185 = load i32, i32* @AR_CC, align 4
  %186 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %187 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %315

190:                                              ; preds = %170
  %191 = load i32, i32* @AR_C, align 4
  %192 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %193 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %315

196:                                              ; preds = %170
  %197 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @set_mode(%struct.bsdar* %197, i32 %198)
  br label %315

200:                                              ; preds = %170
  %201 = load i32, i32* @AR_D, align 4
  %202 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %203 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %315

206:                                              ; preds = %170
  %207 = load i32, i32* @optarg, align 4
  %208 = call i32 @strcasecmp(i32 %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32, i32* @optarg, align 4
  %212 = call i32 @strcasecmp(i32 %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %210, %206
  %215 = load i32, i32* @AR_BSD, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %218 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %234

221:                                              ; preds = %210
  %222 = load i32, i32* @optarg, align 4
  %223 = call i32 @strcasecmp(i32 %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* @AR_BSD, align 4
  %227 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %228 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %233

231:                                              ; preds = %221
  %232 = call i32 (...) @bsdar_usage()
  br label %233

233:                                              ; preds = %231, %225
  br label %234

234:                                              ; preds = %233, %214
  br label %315

235:                                              ; preds = %170, %170
  %236 = load i32, i32* @AR_TR, align 4
  %237 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %238 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %315

241:                                              ; preds = %170
  br label %315

242:                                              ; preds = %170
  br label %315

243:                                              ; preds = %170
  %244 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @set_mode(%struct.bsdar* %244, i32 %245)
  br label %315

247:                                              ; preds = %170
  %248 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @set_mode(%struct.bsdar* %248, i32 %249)
  br label %315

251:                                              ; preds = %170
  %252 = load i32, i32* @AR_O, align 4
  %253 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %254 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 8
  br label %315

257:                                              ; preds = %170
  %258 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @set_mode(%struct.bsdar* %258, i32 %259)
  br label %315

261:                                              ; preds = %170
  %262 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @set_mode(%struct.bsdar* %262, i32 %263)
  br label %315

265:                                              ; preds = %170
  %266 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @set_mode(%struct.bsdar* %266, i32 %267)
  br label %315

269:                                              ; preds = %170
  %270 = load i32, i32* @AR_SS, align 4
  %271 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %272 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %315

275:                                              ; preds = %170
  %276 = load i32, i32* @AR_S, align 4
  %277 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %278 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %315

281:                                              ; preds = %170
  %282 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @set_mode(%struct.bsdar* %282, i32 %283)
  br label %315

285:                                              ; preds = %170
  %286 = load i32, i32* @AR_D, align 4
  %287 = xor i32 %286, -1
  %288 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %289 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %315

292:                                              ; preds = %170
  %293 = load i32, i32* @AR_U, align 4
  %294 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %295 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %315

298:                                              ; preds = %170
  %299 = call i32 (...) @bsdar_version()
  br label %315

300:                                              ; preds = %170
  %301 = load i32, i32* @AR_V, align 4
  %302 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %303 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  br label %315

306:                                              ; preds = %170
  %307 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @set_mode(%struct.bsdar* %307, i32 %308)
  br label %315

310:                                              ; preds = %170
  br label %315

311:                                              ; preds = %170
  %312 = call i32 (...) @bsdar_usage()
  br label %313

313:                                              ; preds = %170, %311
  %314 = call i32 (...) @bsdar_usage()
  br label %315

315:                                              ; preds = %313, %310, %306, %300, %298, %292, %285, %281, %275, %269, %265, %261, %257, %251, %247, %243, %242, %241, %235, %234, %200, %196, %190, %184, %178, %172
  br label %164

316:                                              ; preds = %164
  %317 = load i8*, i8** %8, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = load i8*, i8** %9, align 8
  %321 = load i8**, i8*** %5, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 1
  store i8* %320, i8** %322, align 8
  %323 = load i8*, i8** %8, align 8
  %324 = call i32 @free(i8* %323)
  store i8* null, i8** %9, align 8
  store i8* null, i8** %8, align 8
  br label %325

325:                                              ; preds = %319, %316
  %326 = load i64, i64* @optind, align 8
  %327 = load i8**, i8*** %5, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i64 %326
  store i8** %328, i8*** %5, align 8
  %329 = load i64, i64* @optind, align 8
  %330 = load i32, i32* %4, align 4
  %331 = sext i32 %330 to i64
  %332 = sub nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %4, align 4
  %334 = load i8**, i8*** %5, align 8
  %335 = load i8*, i8** %334, align 8
  %336 = icmp eq i8* %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %325
  %338 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %339 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %338, i32 0, i32 3
  %340 = load i8, i8* %339, align 8
  %341 = sext i8 %340 to i32
  %342 = icmp ne i32 %341, 77
  br i1 %342, label %343, label %345

343:                                              ; preds = %337
  %344 = call i32 (...) @bsdar_usage()
  br label %345

345:                                              ; preds = %343, %337, %325
  %346 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %347 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @AR_A, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %362

352:                                              ; preds = %345
  %353 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %354 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @AR_B, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %352
  %360 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %361 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %360, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %362

362:                                              ; preds = %359, %352, %345
  %363 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %364 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @AR_J, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %379

369:                                              ; preds = %362
  %370 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %371 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @AR_Z, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369
  %377 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %378 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %377, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %379

379:                                              ; preds = %376, %369, %362
  %380 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %381 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @AR_S, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %379
  %387 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %388 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @AR_SS, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %395 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %394, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %396

396:                                              ; preds = %393, %386, %379
  %397 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %398 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @AR_A, align 4
  %401 = load i32, i32* @AR_B, align 4
  %402 = or i32 %400, %401
  %403 = and i32 %399, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %428

405:                                              ; preds = %396
  %406 = load i8**, i8*** %5, align 8
  %407 = load i8*, i8** %406, align 8
  %408 = icmp eq i8* %407, null
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %411 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %410, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %412

412:                                              ; preds = %409, %405
  %413 = load i8**, i8*** %5, align 8
  %414 = load i8*, i8** %413, align 8
  %415 = call i32* @basename(i8* %414)
  %416 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %417 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %416, i32 0, i32 6
  store i32* %415, i32** %417, align 8
  %418 = icmp eq i32* %415, null
  br i1 %418, label %419, label %423

419:                                              ; preds = %412
  %420 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %421 = load i32, i32* @errno, align 4
  %422 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_errc(%struct.bsdar* %420, i32 %421, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %423

423:                                              ; preds = %419, %412
  %424 = load i32, i32* %4, align 4
  %425 = add nsw i32 %424, -1
  store i32 %425, i32* %4, align 4
  %426 = load i8**, i8*** %5, align 8
  %427 = getelementptr inbounds i8*, i8** %426, i32 1
  store i8** %427, i8*** %5, align 8
  br label %428

428:                                              ; preds = %423, %396
  %429 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %430 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @AR_A, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %428
  %436 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %437 = call i32 @only_mode(%struct.bsdar* %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %438

438:                                              ; preds = %435, %428
  %439 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %440 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @AR_B, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %438
  %446 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %447 = call i32 @only_mode(%struct.bsdar* %446, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %448

448:                                              ; preds = %445, %438
  %449 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %450 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @AR_C, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %448
  %456 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %457 = call i32 @only_mode(%struct.bsdar* %456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %458

458:                                              ; preds = %455, %448
  %459 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %460 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @AR_CC, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %458
  %466 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %467 = call i32 @only_mode(%struct.bsdar* %466, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %468

468:                                              ; preds = %465, %458
  %469 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %470 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* @AR_D, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %468
  %476 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %477 = call i32 @only_mode(%struct.bsdar* %476, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %478

478:                                              ; preds = %475, %468
  %479 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %480 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @AR_O, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %487 = call i32 @only_mode(%struct.bsdar* %486, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %488

488:                                              ; preds = %485, %478
  %489 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %490 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @AR_SS, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %488
  %496 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %497 = call i32 @only_mode(%struct.bsdar* %496, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %498

498:                                              ; preds = %495, %488
  %499 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %500 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @AR_U, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %498
  %506 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %507 = call i32 @only_mode(%struct.bsdar* %506, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %508

508:                                              ; preds = %505, %498
  %509 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %510 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %509, i32 0, i32 3
  %511 = load i8, i8* %510, align 8
  %512 = sext i8 %511 to i32
  %513 = icmp eq i32 %512, 77
  br i1 %513, label %514, label %519

514:                                              ; preds = %508
  %515 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %516 = call i32 @ar_mode_script(%struct.bsdar* %515)
  %517 = load i32, i32* @EXIT_SUCCESS, align 4
  %518 = call i32 @exit(i32 %517) #3
  unreachable

519:                                              ; preds = %508
  %520 = load i8**, i8*** %5, align 8
  %521 = load i8*, i8** %520, align 8
  %522 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %523 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %522, i32 0, i32 2
  store i8* %521, i8** %523, align 8
  %524 = icmp eq i8* %521, null
  br i1 %524, label %525, label %527

525:                                              ; preds = %519
  %526 = call i32 (...) @bsdar_usage()
  br label %527

527:                                              ; preds = %525, %519
  %528 = load i32, i32* %4, align 4
  %529 = add nsw i32 %528, -1
  store i32 %529, i32* %4, align 4
  %530 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %531 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %530, i32 0, i32 4
  store i32 %529, i32* %531, align 4
  %532 = load i8**, i8*** %5, align 8
  %533 = getelementptr inbounds i8*, i8** %532, i32 1
  store i8** %533, i8*** %5, align 8
  %534 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %535 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %534, i32 0, i32 5
  store i8** %533, i8*** %535, align 8
  %536 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %537 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %536, i32 0, i32 3
  %538 = load i8, i8* %537, align 8
  %539 = icmp ne i8 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %527
  %541 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %542 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %541, i32 0, i32 3
  %543 = load i8, i8* %542, align 8
  %544 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8 signext %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %564

546:                                              ; preds = %540, %527
  %547 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %548 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @AR_S, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %564

553:                                              ; preds = %546
  %554 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %555 = call i32 @ar_write_archive(%struct.bsdar* %554, i8 signext 115)
  store i32 %555, i32* %11, align 4
  %556 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %557 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %556, i32 0, i32 3
  %558 = load i8, i8* %557, align 8
  %559 = icmp ne i8 %558, 0
  br i1 %559, label %563, label %560

560:                                              ; preds = %553
  %561 = load i32, i32* %11, align 4
  %562 = call i32 @exit(i32 %561) #3
  unreachable

563:                                              ; preds = %553
  br label %564

564:                                              ; preds = %563, %546, %540
  %565 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %566 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %565, i32 0, i32 3
  %567 = load i8, i8* %566, align 8
  %568 = sext i8 %567 to i32
  switch i32 %568, label %581 [
    i32 100, label %569
    i32 109, label %569
    i32 113, label %569
    i32 114, label %569
    i32 112, label %575
    i32 116, label %575
    i32 120, label %575
  ]

569:                                              ; preds = %564, %564, %564, %564
  %570 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %571 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %572 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %571, i32 0, i32 3
  %573 = load i8, i8* %572, align 8
  %574 = call i32 @ar_write_archive(%struct.bsdar* %570, i8 signext %573)
  store i32 %574, i32* %11, align 4
  br label %583

575:                                              ; preds = %564, %564, %564
  %576 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %577 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %578 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %577, i32 0, i32 3
  %579 = load i8, i8* %578, align 8
  %580 = call i32 @ar_read_archive(%struct.bsdar* %576, i8 signext %579)
  store i32 %580, i32* %11, align 4
  br label %583

581:                                              ; preds = %564
  %582 = call i32 (...) @bsdar_usage()
  br label %583

583:                                              ; preds = %581, %575, %569
  store i32 0, i32* %12, align 4
  br label %584

584:                                              ; preds = %611, %583
  %585 = load i32, i32* %12, align 4
  %586 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %587 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %586, i32 0, i32 4
  %588 = load i32, i32* %587, align 4
  %589 = icmp slt i32 %585, %588
  br i1 %589, label %590, label %614

590:                                              ; preds = %584
  %591 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %592 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %591, i32 0, i32 5
  %593 = load i8**, i8*** %592, align 8
  %594 = load i32, i32* %12, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i8*, i8** %593, i64 %595
  %597 = load i8*, i8** %596, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %610

599:                                              ; preds = %590
  %600 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %601 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %602 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %601, i32 0, i32 5
  %603 = load i8**, i8*** %602, align 8
  %604 = load i32, i32* %12, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8*, i8** %603, i64 %605
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 @bsdar_warnc(%struct.bsdar* %600, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* %607)
  %609 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %609, i32* %11, align 4
  br label %610

610:                                              ; preds = %599, %590
  br label %611

611:                                              ; preds = %610
  %612 = load i32, i32* %12, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %12, align 4
  br label %584

614:                                              ; preds = %584
  %615 = load i32, i32* %11, align 4
  %616 = call i32 @exit(i32 %615) #3
  unreachable
}

declare dso_local i32 @memset(%struct.bsdar*, i32, i32) #1

declare dso_local i8* @ELFTC_GETPROGNAME(...) #1

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @bsdar_version(...) #1

declare dso_local i32 @ranlib_usage(...) #1

declare dso_local i32 @ar_write_archive(%struct.bsdar*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bsdar_usage(...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @set_mode(%struct.bsdar*, i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @basename(i8*) #1

declare dso_local i32 @only_mode(%struct.bsdar*, i8*, i8*) #1

declare dso_local i32 @ar_mode_script(%struct.bsdar*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @ar_read_archive(%struct.bsdar*, i8 signext) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
