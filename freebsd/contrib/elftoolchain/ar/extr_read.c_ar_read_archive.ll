; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_read.c_ar_read_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_read.c_ar_read_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i32, i8**, i32* }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.stat = type { i64 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"archive_read_new failed\00", align 1
@DEF_BLKSZ = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Retrying...\00", align 1
@ARCHIVE_FORMAT_AR_BSD = common dso_local global i64 0, align 8
@AR_BSD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"ignoring entry: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"basename failed\00", align 1
@AR_V = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%s %6d/%-6d %8ju \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%b %e %H:%M %Y\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0A<%s>\0A\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"stat %s failed\00", align 1
@AR_CC = common dso_local global i32 0, align 4
@AR_U = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"x - %s\0A\00", align 1
@ARCHIVE_EXTRACT_SECURE_SYMLINKS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_NODOTDOT = common dso_local global i32 0, align 4
@AR_O = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_TIME = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_read_archive(%struct.bsdar* %0, i32 %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca [25 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i32 %1, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 112
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 116
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 120
  br label %32

32:                                               ; preds = %29, %26, %2
  %33 = phi i1 [ true, %26 ], [ true, %2 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %36, %struct.archive** %6, align 8
  %37 = icmp eq %struct.archive* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %40 = call i32 @bsdar_errc(%struct.bsdar* %39, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.archive*, %struct.archive** %6, align 8
  %43 = call i32 @archive_read_support_format_ar(%struct.archive* %42)
  %44 = load %struct.archive*, %struct.archive** %6, align 8
  %45 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %46 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @DEF_BLKSZ, align 4
  %49 = call i32 @archive_read_open_filename(%struct.archive* %44, i8* %47, i32 %48)
  %50 = call i32 @AC(i32 %49)
  %51 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %51, i32* %20, align 4
  %52 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %53 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %346, %304, %290, %275, %173, %123, %118, %87, %41
  %56 = load %struct.archive*, %struct.archive** %6, align 8
  %57 = call i32 @archive_read_next_header(%struct.archive* %56, %struct.archive_entry** %7)
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* @ARCHIVE_WARN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* @ARCHIVE_RETRY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* @ARCHIVE_FATAL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %61, %55
  %70 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %71 = load %struct.archive*, %struct.archive** %6, align 8
  %72 = call i8* @archive_error_string(%struct.archive* %71)
  %73 = call i32 (%struct.bsdar*, i64, i8*, ...) @bsdar_warnc(%struct.bsdar* %70, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* @ARCHIVE_EOF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* @ARCHIVE_FATAL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  br label %347

83:                                               ; preds = %78
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* @ARCHIVE_RETRY, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %89 = call i32 (%struct.bsdar*, i64, i8*, ...) @bsdar_warnc(%struct.bsdar* %88, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %55

90:                                               ; preds = %83
  %91 = load %struct.archive*, %struct.archive** %6, align 8
  %92 = call i64 @archive_format(%struct.archive* %91)
  %93 = load i64, i64* @ARCHIVE_FORMAT_AR_BSD, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @AR_BSD, align 4
  %97 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %98 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %108

101:                                              ; preds = %90
  %102 = load i32, i32* @AR_BSD, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %105 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %110 = call i8* @archive_entry_pathname(%struct.archive_entry* %109)
  store i8* %110, i8** %11, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %347

113:                                              ; preds = %108
  %114 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i64 @bsdar_is_pseudomember(%struct.bsdar* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %55

119:                                              ; preds = %113
  %120 = load i8*, i8** %11, align 8
  %121 = call i64 @strchr(i8* %120, i8 signext 47)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 (%struct.bsdar*, i64, i8*, ...) @bsdar_warnc(%struct.bsdar* %124, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  br label %55

127:                                              ; preds = %119
  %128 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %129 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %175

132:                                              ; preds = %127
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %133

133:                                              ; preds = %167, %132
  %134 = load i32, i32* %21, align 4
  %135 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %136 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %133
  %140 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %141 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %140, i32 0, i32 3
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8** %145, i8*** %17, align 8
  %146 = load i8**, i8*** %17, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %167

150:                                              ; preds = %139
  %151 = load i8**, i8*** %17, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @basename(i8* %152)
  store i8* %153, i8** %10, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %157 = load i64, i64* @errno, align 8
  %158 = call i32 @bsdar_errc(%struct.bsdar* %156, i64 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i8*, i8** %10, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = call i64 @strcmp(i8* %160, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %167

165:                                              ; preds = %159
  %166 = load i8**, i8*** %17, align 8
  store i8* null, i8** %166, align 8
  store i32 1, i32* %19, align 4
  br label %170

167:                                              ; preds = %164, %149
  %168 = load i32, i32* %21, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %21, align 4
  br label %133

170:                                              ; preds = %165, %133
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  br label %55

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174, %127
  %176 = load i32, i32* %4, align 4
  %177 = icmp eq i32 %176, 116
  br i1 %177, label %178, label %246

178:                                              ; preds = %175
  %179 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %180 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @AR_V, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %213

185:                                              ; preds = %178
  %186 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %187 = call i32 @archive_entry_mode(%struct.archive_entry* %186)
  store i32 %187, i32* %12, align 4
  %188 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %189 = call i32 @archive_entry_uid(%struct.archive_entry* %188)
  store i32 %189, i32* %15, align 4
  %190 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %191 = call i32 @archive_entry_gid(%struct.archive_entry* %190)
  store i32 %191, i32* %16, align 4
  %192 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %193 = call i64 @archive_entry_size(%struct.archive_entry* %192)
  store i64 %193, i64* %13, align 8
  %194 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %195 = call i64 @archive_entry_mtime(%struct.archive_entry* %194)
  store i64 %195, i64* %14, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i8* @bsdar_strmode(i32 %197)
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i64, i64* %13, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %199, i32 %200, i32 %201, i32 %203)
  %205 = call %struct.tm* @localtime(i64* %14)
  store %struct.tm* %205, %struct.tm** %9, align 8
  %206 = getelementptr inbounds [25 x i8], [25 x i8]* %18, i64 0, i64 0
  %207 = load %struct.tm*, %struct.tm** %9, align 8
  %208 = call i32 @strftime(i8* %206, i32 25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.tm* %207)
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds [25 x i8], [25 x i8]* %18, i64 0, i64 0
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %210, i8* %211)
  br label %217

213:                                              ; preds = %178
  %214 = load i32*, i32** %5, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %213, %185
  %218 = load %struct.archive*, %struct.archive** %6, align 8
  %219 = call i32 @archive_read_data_skip(%struct.archive* %218)
  store i32 %219, i32* %23, align 4
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* @ARCHIVE_WARN, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %231, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* %23, align 4
  %225 = load i32, i32* @ARCHIVE_RETRY, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* @ARCHIVE_FATAL, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %227, %223, %217
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 (i32*, i8*, ...) @fprintf(i32* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %234 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %235 = load %struct.archive*, %struct.archive** %6, align 8
  %236 = call i8* @archive_error_string(%struct.archive* %235)
  %237 = call i32 (%struct.bsdar*, i64, i8*, ...) @bsdar_warnc(%struct.bsdar* %234, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %236)
  br label %238

238:                                              ; preds = %231, %227
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* @ARCHIVE_FATAL, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %347

243:                                              ; preds = %238
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 (i32*, i8*, ...) @fprintf(i32* %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %346

246:                                              ; preds = %175
  %247 = load i32, i32* %4, align 4
  %248 = icmp eq i32 %247, 112
  br i1 %248, label %249, label %267

249:                                              ; preds = %246
  %250 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %251 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @AR_V, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %249
  %257 = load i32*, i32** %5, align 8
  %258 = load i8*, i8** %11, align 8
  %259 = call i32 (i32*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %258)
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 @fflush(i32* %260)
  br label %262

262:                                              ; preds = %256, %249
  %263 = load %struct.archive*, %struct.archive** %6, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = call i32 @fileno(i32* %264)
  %266 = call i32 @archive_read_data_into_fd(%struct.archive* %263, i32 %265)
  store i32 %266, i32* %23, align 4
  br label %336

267:                                              ; preds = %246
  %268 = load i8*, i8** %11, align 8
  %269 = call i64 @stat(i8* %268, %struct.stat* %8)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %267
  %272 = load i64, i64* @errno, align 8
  %273 = load i64, i64* @ENOENT, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %277 = load i64, i64* @errno, align 8
  %278 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %279 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (%struct.bsdar*, i64, i8*, ...) @bsdar_warnc(%struct.bsdar* %276, i64 %277, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %280)
  br label %55

282:                                              ; preds = %271
  br label %306

283:                                              ; preds = %267
  %284 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %285 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @AR_CC, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %55

291:                                              ; preds = %283
  %292 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %293 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @AR_U, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %291
  %299 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %300 = call i64 @archive_entry_mtime(%struct.archive_entry* %299)
  %301 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp sle i64 %300, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  br label %55

305:                                              ; preds = %298, %291
  br label %306

306:                                              ; preds = %305, %282
  %307 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %308 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @AR_V, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %306
  %314 = load i32*, i32** %5, align 8
  %315 = load i8*, i8** %11, align 8
  %316 = call i32 (i32*, i8*, ...) @fprintf(i32* %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %315)
  br label %317

317:                                              ; preds = %313, %306
  %318 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_SYMLINKS, align 4
  %319 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NODOTDOT, align 4
  %320 = or i32 %318, %319
  store i32 %320, i32* %22, align 4
  %321 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %322 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @AR_O, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %317
  %328 = load i32, i32* @ARCHIVE_EXTRACT_TIME, align 4
  %329 = load i32, i32* %22, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %22, align 4
  br label %331

331:                                              ; preds = %327, %317
  %332 = load %struct.archive*, %struct.archive** %6, align 8
  %333 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %334 = load i32, i32* %22, align 4
  %335 = call i32 @archive_read_extract(%struct.archive* %332, %struct.archive_entry* %333, i32 %334)
  store i32 %335, i32* %23, align 4
  br label %336

336:                                              ; preds = %331, %262
  %337 = load i32, i32* %23, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %341 = load %struct.archive*, %struct.archive** %6, align 8
  %342 = call i8* @archive_error_string(%struct.archive* %341)
  %343 = call i32 (%struct.bsdar*, i64, i8*, ...) @bsdar_warnc(%struct.bsdar* %340, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %342)
  %344 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %344, i32* %20, align 4
  br label %345

345:                                              ; preds = %339, %336
  br label %346

346:                                              ; preds = %345, %243
  br label %55

347:                                              ; preds = %242, %112, %82
  %348 = load i32, i32* %23, align 4
  %349 = load i32, i32* @ARCHIVE_FATAL, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %352, i32* %20, align 4
  br label %353

353:                                              ; preds = %351, %347
  %354 = load %struct.archive*, %struct.archive** %6, align 8
  %355 = call i32 @archive_read_close(%struct.archive* %354)
  %356 = call i32 @AC(i32 %355)
  %357 = load %struct.archive*, %struct.archive** %6, align 8
  %358 = call i32 @archive_read_free(%struct.archive* %357)
  %359 = call i32 @ACV(i32 %358)
  %360 = load i32, i32* %20, align 4
  ret i32 %360
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i64, i8*) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @AC(i32) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i64, i8*, ...) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_format(%struct.archive*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @bsdar_is_pseudomember(%struct.bsdar*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @bsdar_strmode(i32) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @archive_read_data_into_fd(%struct.archive*, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @archive_read_extract(%struct.archive*, %struct.archive_entry*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @ACV(i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
