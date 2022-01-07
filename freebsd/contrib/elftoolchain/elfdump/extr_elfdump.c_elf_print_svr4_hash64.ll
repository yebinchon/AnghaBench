; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_svr4_hash64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_svr4_hash64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.section = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0AHash Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0Ahash table (%s):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@ELF_T_XWORD = common dso_local global i32 0, align 4
@EI_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"gelf_xlatetom failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c".hash section too small\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Malformed .hash section\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    bucket    symndx    name\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%10zu  \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"[%zu]\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%-10s  \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"%10ju  buckets contain %8zu symbols\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%10ju  buckets         %8ju symbols (globals)\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"\0Anbucket: %ju\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"nchain: %ju\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"bucket[%zu]:\0A\09%ju\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"chain[%zu]:\0A\09%ju\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*)* @elf_print_svr4_hash64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_svr4_hash64(%struct.elfdump* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfdump*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [10 x i8], align 1
  store %struct.elfdump* %0, %struct.elfdump** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %21 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %22 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SOLARIS_FMT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.section*, %struct.section** %4, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.section*, %struct.section** %4, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = call i32 (...) @elf_errno()
  %39 = load %struct.section*, %struct.section** %4, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_10__* @elf_rawdata(i32 %41, i32* null)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %5, align 8
  %43 = icmp eq %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = call i32 (...) @elf_errno()
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @elf_errmsg(i32 %49)
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %332

53:                                               ; preds = %37
  %54 = load i32, i32* @ELF_T_XWORD, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = call i32 @memcpy(%struct.TYPE_10__* %6, %struct.TYPE_10__* %57, i32 24)
  %59 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %60 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %64 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @EI_DATA, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_10__* @gelf_xlatetom(i32 %61, %struct.TYPE_10__* %6, %struct.TYPE_10__* %62, i32 %69)
  %71 = icmp ne %struct.TYPE_10__* %70, %6
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = call i32 @elf_errmsg(i32 -1)
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %332

75:                                               ; preds = %53
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 8
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %332

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %7, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %11, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %82
  %97 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %332

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = icmp ne i64 %101, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %332

111:                                              ; preds = %98
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32* %113, i32** %8, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32* %118, i32** %9, align 8
  %119 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %120 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SOLARIS_FMT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %291

125:                                              ; preds = %111
  store i32 0, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32* @calloc(i32 %126, i32 4)
  store i32* %127, i32** %12, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @EXIT_FAILURE, align 4
  %131 = call i32 @err(i32 %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %125
  store i64 0, i64* %17, align 8
  br label %133

133:                                              ; preds = %173, %132
  %134 = load i64, i64* %17, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %134, %136
  br i1 %137, label %138, label %176

138:                                              ; preds = %133
  %139 = load i32*, i32** %8, align 8
  %140 = load i64, i64* %17, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %166, %138
  %144 = load i32, i32* %14, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %147, %148
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i1 [ false, %143 ], [ %149, %146 ]
  br i1 %151, label %152, label %172

152:                                              ; preds = %150
  %153 = load i32*, i32** %12, align 8
  %154 = load i64, i64* %17, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = load i32*, i32** %12, align 8
  %162 = load i64, i64* %17, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %160, %152
  br label %166

166:                                              ; preds = %165
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %14, align 4
  br label %143

172:                                              ; preds = %150
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %17, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %17, align 8
  br label %133

176:                                              ; preds = %133
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  %179 = call i32* @calloc(i32 %178, i32 4)
  store i32* %179, i32** %13, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @EXIT_FAILURE, align 4
  %183 = call i32 @err(i32 %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %176
  store i64 0, i64* %17, align 8
  br label %185

185:                                              ; preds = %200, %184
  %186 = load i64, i64* %17, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %185
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = load i64, i64* %17, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %190
  %201 = load i64, i64* %17, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %17, align 8
  br label %185

203:                                              ; preds = %185
  %204 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %17, align 8
  br label %205

205:                                              ; preds = %253, %203
  %206 = load i64, i64* %17, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %210, label %256

210:                                              ; preds = %205
  store i32 1, i32* %19, align 4
  %211 = load i32*, i32** %8, align 8
  %212 = load i64, i64* %17, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  br label %215

215:                                              ; preds = %246, %210
  %216 = load i32, i32* %14, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp slt i32 %219, %220
  br label %222

222:                                              ; preds = %218, %215
  %223 = phi i1 [ false, %215 ], [ %221, %218 ]
  br i1 %223, label %224, label %252

224:                                              ; preds = %222
  %225 = load i32, i32* %19, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i64, i64* %17, align 8
  %229 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %228)
  store i32 0, i32* %19, align 4
  br label %232

230:                                              ; preds = %224
  %231 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %227
  %233 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = call i32 @snprintf(i8* %233, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %235)
  %237 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %238 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %237)
  %239 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %240 = load %struct.section*, %struct.section** %4, align 8
  %241 = getelementptr inbounds %struct.section, %struct.section* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @get_symbol_name(%struct.elfdump* %239, i32 %242, i32 %243)
  %245 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %232
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %14, align 4
  br label %215

252:                                              ; preds = %222
  br label %253

253:                                              ; preds = %252
  %254 = load i64, i64* %17, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %17, align 8
  br label %205

256:                                              ; preds = %205
  %257 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %258

258:                                              ; preds = %282, %256
  %259 = load i64, i64* %17, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = icmp ule i64 %259, %261
  br i1 %262, label %263, label %285

263:                                              ; preds = %258
  %264 = load i32*, i32** %13, align 8
  %265 = load i64, i64* %17, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %17, align 8
  %270 = mul i64 %268, %269
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = add i64 %272, %270
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %16, align 4
  %275 = load i32*, i32** %13, align 8
  %276 = load i64, i64* %17, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %17, align 8
  %281 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i64 %279, i64 %280)
  br label %282

282:                                              ; preds = %263
  %283 = load i64, i64* %17, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %17, align 8
  br label %258

285:                                              ; preds = %258
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i64 %287, i64 %289)
  br label %332

291:                                              ; preds = %111
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i64 %293)
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i64 %296)
  store i64 0, i64* %17, align 8
  br label %298

298:                                              ; preds = %311, %291
  %299 = load i64, i64* %17, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = icmp ult i64 %299, %301
  br i1 %302, label %303, label %314

303:                                              ; preds = %298
  %304 = load i64, i64* %17, align 8
  %305 = load i32*, i32** %8, align 8
  %306 = load i64, i64* %17, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i64 %304, i64 %309)
  br label %311

311:                                              ; preds = %303
  %312 = load i64, i64* %17, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %17, align 8
  br label %298

314:                                              ; preds = %298
  store i64 0, i64* %17, align 8
  br label %315

315:                                              ; preds = %328, %314
  %316 = load i64, i64* %17, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = icmp ult i64 %316, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %315
  %321 = load i64, i64* %17, align 8
  %322 = load i32*, i32** %9, align 8
  %323 = load i64, i64* %17, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i64 %321, i64 %326)
  br label %328

328:                                              ; preds = %320
  %329 = load i64, i64* %17, align 8
  %330 = add i64 %329, 1
  store i64 %330, i64* %17, align 8
  br label %315

331:                                              ; preds = %315
  br label %332

332:                                              ; preds = %52, %72, %80, %96, %109, %331, %285
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_10__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @gelf_xlatetom(i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @get_symbol_name(%struct.elfdump*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
