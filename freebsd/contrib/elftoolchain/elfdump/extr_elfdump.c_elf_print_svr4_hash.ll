; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_svr4_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_svr4_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32 }
%struct.section = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0AHash Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0Ahash table (%s):\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c".hash section too small\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Malformed .hash section\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"    bucket    symndx    name\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%10d  \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%-10s  \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"%10u  buckets contain %8d symbols\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%10u  buckets         %8u symbols (globals)\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Anbucket: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"nchain: %u\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"bucket[%d]:\0A\09%u\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"chain[%d]:\0A\09%u\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*)* @elf_print_svr4_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_svr4_hash(%struct.elfdump* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfdump*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [10 x i8], align 1
  store %struct.elfdump* %0, %struct.elfdump** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %20 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %21 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SOLARIS_FMT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.section*, %struct.section** %4, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.section*, %struct.section** %4, align 8
  %33 = getelementptr inbounds %struct.section, %struct.section* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = call i32 (...) @elf_errno()
  %38 = load %struct.section*, %struct.section** %4, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_3__* @elf_getdata(i32 %40, i32* null)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %5, align 8
  %42 = icmp eq %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = call i32 (...) @elf_errno()
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @elf_errmsg(i32 %48)
  %50 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %304

52:                                               ; preds = %36
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 8
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %304

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %10, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %60
  %76 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %304

77:                                               ; preds = %72
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = icmp ne i64 %81, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %304

91:                                               ; preds = %77
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 2, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32* %98, i32** %8, align 8
  %99 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %100 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SOLARIS_FMT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %267

105:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32* @calloc(i32 %106, i32 4)
  store i32* %107, i32** %11, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @EXIT_FAILURE, align 4
  %111 = call i32 @err(i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %105
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %155, %112
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %148, %117
  %124 = load i32, i32* %16, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i1 [ false, %123 ], [ %129, %126 ]
  br i1 %131, label %132, label %154

132:                                              ; preds = %130
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %141, %132
  br label %148

148:                                              ; preds = %147
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %16, align 4
  br label %123

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %113

158:                                              ; preds = %113
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  %161 = call i32* @calloc(i32 %160, i32 4)
  store i32* %161, i32** %12, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @EXIT_FAILURE, align 4
  %165 = call i32 @err(i32 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %158
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %182, %166
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = load i32*, i32** %12, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %172, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %167

185:                                              ; preds = %167
  %186 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %234, %185
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %237

191:                                              ; preds = %187
  store i32 1, i32* %17, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %16, align 4
  br label %197

197:                                              ; preds = %227, %191
  %198 = load i32, i32* %16, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %201, %202
  br label %204

204:                                              ; preds = %200, %197
  %205 = phi i1 [ false, %197 ], [ %203, %200 ]
  br i1 %205, label %206, label %233

206:                                              ; preds = %204
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* %15, align 4
  %211 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  store i32 0, i32* %17, align 4
  br label %214

212:                                              ; preds = %206
  %213 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %209
  %215 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %216 = load i32, i32* %16, align 4
  %217 = call i32 @snprintf(i8* %215, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %216)
  %218 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %219 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %218)
  %220 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %221 = load %struct.section*, %struct.section** %4, align 8
  %222 = getelementptr inbounds %struct.section, %struct.section* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @get_symbol_name(%struct.elfdump* %220, i32 %223, i32 %224)
  %226 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %214
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %16, align 4
  br label %197

233:                                              ; preds = %204
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %15, align 4
  br label %187

237:                                              ; preds = %187
  %238 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %239

239:                                              ; preds = %260, %237
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %239
  %244 = load i32*, i32** %12, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %15, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %14, align 4
  %253 = load i32*, i32** %12, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %15, align 4
  %259 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %243
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %15, align 4
  br label %239

263:                                              ; preds = %239
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %14, align 4
  %266 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %264, i32 %265)
  br label %304

267:                                              ; preds = %91
  %268 = load i32, i32* %9, align 4
  %269 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %10, align 4
  %271 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %270)
  store i32 0, i32* %15, align 4
  br label %272

272:                                              ; preds = %284, %267
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %287

276:                                              ; preds = %272
  %277 = load i32, i32* %15, align 4
  %278 = load i32*, i32** %7, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %277, i32 %282)
  br label %284

284:                                              ; preds = %276
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %15, align 4
  br label %272

287:                                              ; preds = %272
  store i32 0, i32* %15, align 4
  br label %288

288:                                              ; preds = %300, %287
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* %10, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %288
  %293 = load i32, i32* %15, align 4
  %294 = load i32*, i32** %8, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %293, i32 %298)
  br label %300

300:                                              ; preds = %292
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %288

303:                                              ; preds = %288
  br label %304

304:                                              ; preds = %51, %58, %75, %89, %303, %263
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @get_symbol_name(%struct.elfdump*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
