; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_scan_prog_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_scan_prog_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32 }

@PASS_SECOND = common dso_local global i32 0, align 4
@nm_file_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot find 'nm'\00", align 1
@NM_FLAGS = common dso_local global i8* null, align 8
@vflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@PEX_USE_PIPES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"collect2\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"pex_init failed\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"can't open nm output\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"\0Anm output with constructors/destructors.\0A\00", align 1
@PASS_LIB = common dso_local global i32 0, align 4
@constructors = common dso_local global i32 0, align 4
@destructors = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"init function found in object %s\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"fini function found in object %s\00", align 1
@frame_tables = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@SIGQUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @scan_prog_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_prog_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (i32)*, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pex_obj*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  store i8** %21, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PASS_SECOND, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %262

26:                                               ; preds = %2
  %27 = load i8*, i8** @nm_file_name, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** @nm_file_name, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  store i8* %32, i8** %37, align 8
  %38 = load i8*, i8** @NM_FLAGS, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load i8*, i8** @NM_FLAGS, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %44, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %31
  %51 = load i8*, i8** %3, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  store i8* %51, i8** %56, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  store i8* null, i8** %61, align 8
  %62 = load i64, i64* @vflag, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %50
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8** %66, i8*** %15, align 8
  br label %67

67:                                               ; preds = %75, %64
  %68 = load i8**, i8*** %15, align 8
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %16, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i8**, i8*** %15, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %15, align 8
  br label %67

78:                                               ; preds = %67
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %50
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 @fflush(i32 %82)
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @fflush(i32 %84)
  %86 = load i32, i32* @PEX_USE_PIPES, align 4
  %87 = call %struct.pex_obj* @pex_init(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.pex_obj* %87, %struct.pex_obj** %9, align 8
  %88 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  %89 = icmp eq %struct.pex_obj* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 (i8*, ...) @fatal_perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %81
  %93 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  %94 = load i8*, i8** @nm_file_name, align 8
  %95 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %96 = call i8* @pex_run(%struct.pex_obj* %93, i32 0, i8* %94, i8** %95, i32* null, i32* null, i32* %11)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* @errno, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 (i8*, ...) @fatal_perror(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %109

106:                                              ; preds = %99
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %102
  br label %110

110:                                              ; preds = %109, %92
  %111 = load i32, i32* @SIGINT, align 4
  %112 = call i64 @signal(i32 %111, void (i32)* @SIG_IGN)
  %113 = inttoptr i64 %112 to void (i32)*
  store void (i32)* %113, void (i32)** %5, align 8
  %114 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  %115 = call i32* @pex_read_output(%struct.pex_obj* %114, i32 0)
  store i32* %115, i32** %14, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 (i8*, ...) @fatal_perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %110
  %121 = load i64, i64* @debug, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %248, %240, %170, %126
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %129 = load i32*, i32** %14, align 8
  %130 = call i8* @fgets(i8* %128, i32 1024, i32* %129)
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %249

132:                                              ; preds = %127
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  store i8* %133, i8** %12, align 8
  br label %134

134:                                              ; preds = %164, %132
  %135 = load i8*, i8** %12, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 10
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 95
  br label %145

145:                                              ; preds = %142, %139, %134
  %146 = phi i1 [ false, %139 ], [ false, %134 ], [ %144, %142 ]
  br i1 %146, label %147, label %167

147:                                              ; preds = %145
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i8*, i8** %12, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 85
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load i8*, i8** %12, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %167

163:                                              ; preds = %156, %150, %147
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %12, align 8
  br label %134

167:                                              ; preds = %162, %145
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 95
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %127

171:                                              ; preds = %167
  %172 = load i8*, i8** %12, align 8
  store i8* %172, i8** %19, align 8
  %173 = load i8*, i8** %12, align 8
  store i8* %173, i8** %20, align 8
  br label %174

174:                                              ; preds = %189, %171
  %175 = load i8*, i8** %20, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  store i32 %177, i32* %18, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @ISSPACE(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 124
  br label %186

186:                                              ; preds = %183, %179, %174
  %187 = phi i1 [ false, %179 ], [ false, %174 ], [ %185, %183 ]
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %188
  %190 = load i8*, i8** %20, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %20, align 8
  br label %174

192:                                              ; preds = %186
  %193 = load i8*, i8** %20, align 8
  store i8 0, i8* %193, align 1
  %194 = load i8*, i8** %19, align 8
  %195 = call i32 @is_ctor_dtor(i8* %194)
  switch i32 %195, label %240 [
    i32 1, label %196
    i32 2, label %204
    i32 3, label %212
    i32 4, label %222
    i32 5, label %232
  ]

196:                                              ; preds = %192
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @PASS_LIB, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i8*, i8** %19, align 8
  %202 = call i32 @add_to_list(i32* @constructors, i8* %201)
  br label %203

203:                                              ; preds = %200, %196
  br label %241

204:                                              ; preds = %192
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @PASS_LIB, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i8*, i8** %19, align 8
  %210 = call i32 @add_to_list(i32* @destructors, i8* %209)
  br label %211

211:                                              ; preds = %208, %204
  br label %241

212:                                              ; preds = %192
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @PASS_LIB, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8
  %218 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %216, %212
  %220 = load i8*, i8** %19, align 8
  %221 = call i32 @add_to_list(i32* @constructors, i8* %220)
  br label %241

222:                                              ; preds = %192
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @PASS_LIB, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %227)
  br label %229

229:                                              ; preds = %226, %222
  %230 = load i8*, i8** %19, align 8
  %231 = call i32 @add_to_list(i32* @destructors, i8* %230)
  br label %241

232:                                              ; preds = %192
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @PASS_LIB, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i8*, i8** %19, align 8
  %238 = call i32 @add_to_list(i32* @frame_tables, i8* %237)
  br label %239

239:                                              ; preds = %236, %232
  br label %241

240:                                              ; preds = %192
  br label %127

241:                                              ; preds = %239, %229, %219, %211, %203
  %242 = load i64, i64* @debug, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i32, i32* @stderr, align 4
  %246 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %247 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %244, %241
  br label %127

249:                                              ; preds = %127
  %250 = load i64, i64* @debug, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* @stderr, align 4
  %254 = call i32 (i32, i8*, ...) @fprintf(i32 %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %249
  %256 = load i8*, i8** @nm_file_name, align 8
  %257 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  %258 = call i32 @do_wait(i8* %256, %struct.pex_obj* %257)
  %259 = load i32, i32* @SIGINT, align 4
  %260 = load void (i32)*, void (i32)** %5, align 8
  %261 = call i64 @signal(i32 %259, void (i32)* %260)
  br label %262

262:                                              ; preds = %255, %25
  ret void
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local %struct.pex_obj* @pex_init(i32, i8*, i32*) #1

declare dso_local i32 @fatal_perror(i8*, ...) #1

declare dso_local i8* @pex_run(%struct.pex_obj*, i32, i8*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @signal(i32, void (i32)*) #1

declare dso_local void @SIG_IGN(i32) #1

declare dso_local i32* @pex_read_output(%struct.pex_obj*, i32) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @ISSPACE(i32) #1

declare dso_local i32 @is_ctor_dtor(i8*) #1

declare dso_local i32 @add_to_list(i32*, i8*) #1

declare dso_local i32 @do_wait(i8*, %struct.pex_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
