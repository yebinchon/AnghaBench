; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tlink.c_scan_linker_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tlink.c_scan_linker_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@USER_LABEL_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Undefined symbol: \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"referenced from:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ndefined\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"nresolved\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nsatisfied\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ultiple\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"'%s' was assigned to '%s', but was not defined during recompilation, or vice versa\00", align 1
@tlink_verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"collect: tweaking %s in %s\0A\00", align 1
@temporary_obstack = common dso_local global i32 0, align 4
@temporary_firstobj = common dso_local global i32 0, align 4
@file_stack = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @scan_linker_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_linker_output(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %298, %50, %29, %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @tfgets(i32* %18)
  store i8* %19, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %301

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strstr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %17

30:                                               ; preds = %25, %21
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @ISSPACE(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %17

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %67, %51
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @ISSPACE(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ false, %53 ], [ %63, %58 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %53

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %81 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %82 = call i32 @strlen(i32 %81)
  %83 = call i32 @strncmp(i8* %79, i32 %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %87 = call i32 @strlen(i32 %86)
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %8, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = call %struct.TYPE_6__* @symbol_hash_lookup(i8* %98, i32 0)
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %9, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %139, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i64 @strstr(i8* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = call i8* @strrchr(i8* %112, i8 signext 32)
  store i8* %113, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %12, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 46
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %12, align 8
  br label %123

123:                                              ; preds = %120, %110
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %126 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %127 = call i32 @strlen(i32 %126)
  %128 = call i32 @strncmp(i8* %124, i32 %125, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %132 = call i32 @strlen(i32 %131)
  %133 = load i8*, i8** %12, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %12, align 8
  br label %136

136:                                              ; preds = %130, %123
  %137 = load i8*, i8** %12, align 8
  %138 = call %struct.TYPE_6__* @symbol_hash_lookup(i8* %137, i32 0)
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %9, align 8
  br label %139

139:                                              ; preds = %136, %105, %102, %91
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = icmp ne %struct.TYPE_6__* %140, null
  br i1 %141, label %248, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %248, label %145

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %13, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  store i8* null, i8** %8, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  store i32 1, i32* %11, align 4
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %13, align 8
  store i32 1, i32* %6, align 4
  br label %153

153:                                              ; preds = %151, %145
  %154 = load i8*, i8** %13, align 8
  %155 = call i8* @strchr(i8* %154, i8 signext 96)
  store i8* %155, i8** %7, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %7, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = call i8* @strchr(i8* %161, i8 signext 39)
  store i8* %162, i8** %8, align 8
  br label %183

163:                                              ; preds = %153
  %164 = load i8*, i8** %13, align 8
  %165 = call i8* @strchr(i8* %164, i8 signext 34)
  store i8* %165, i8** %7, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %7, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = call i8* @strchr(i8* %171, i8 signext 34)
  store i8* %172, i8** %8, align 8
  br label %182

173:                                              ; preds = %163
  %174 = load i8*, i8** %13, align 8
  %175 = call i8* @strchr(i8* %174, i8 signext 0)
  store i8* %175, i8** %8, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = icmp ne i8* %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i8*, i8** %13, align 8
  store i8* %180, i8** %7, align 8
  br label %181

181:                                              ; preds = %179, %173
  br label %182

182:                                              ; preds = %181, %168
  br label %183

183:                                              ; preds = %182, %158
  %184 = load i8*, i8** %7, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** %7, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 46
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load i8*, i8** %7, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %7, align 8
  br label %196

196:                                              ; preds = %193, %186
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i8*, i8** %8, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %247

200:                                              ; preds = %197
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %200
  %204 = load i8*, i8** %13, align 8
  %205 = call i64 @strstr(i8* %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %203
  %208 = load i8*, i8** %13, align 8
  %209 = call i64 @strstr(i8* %208, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %13, align 8
  %213 = call i64 @strstr(i8* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i8*, i8** %13, align 8
  %217 = call i64 @strstr(i8* %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %247

219:                                              ; preds = %215, %211, %207, %203, %200
  %220 = load i8*, i8** %8, align 8
  store i8 0, i8* %220, align 1
  %221 = load i8*, i8** %7, align 8
  %222 = call %struct.TYPE_7__* @demangled_hash_lookup(i8* %221, i32 0)
  store %struct.TYPE_7__* %222, %struct.TYPE_7__** %14, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %224 = icmp ne %struct.TYPE_7__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call %struct.TYPE_6__* @symbol_hash_lookup(i8* %228, i32 0)
  store %struct.TYPE_6__* %229, %struct.TYPE_6__** %9, align 8
  br label %246

230:                                              ; preds = %219
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %233 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %234 = call i32 @strlen(i32 %233)
  %235 = call i32 @strncmp(i8* %231, i32 %232, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %230
  %238 = load i32, i32* @USER_LABEL_PREFIX, align 4
  %239 = call i32 @strlen(i32 %238)
  %240 = load i8*, i8** %7, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  store i8* %242, i8** %7, align 8
  br label %243

243:                                              ; preds = %237, %230
  %244 = load i8*, i8** %7, align 8
  %245 = call %struct.TYPE_6__* @symbol_hash_lookup(i8* %244, i32 0)
  store %struct.TYPE_6__* %245, %struct.TYPE_6__** %9, align 8
  br label %246

246:                                              ; preds = %243, %225
  br label %247

247:                                              ; preds = %246, %215, %197
  br label %248

248:                                              ; preds = %247, %142, %139
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %250 = icmp ne %struct.TYPE_6__* %249, null
  br i1 %250, label %251, label %268

251:                                              ; preds = %248
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %251
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0), i8* %259, i8* %264)
  %266 = load i32*, i32** %4, align 8
  %267 = call i32 @fclose(i32* %266)
  store i32 0, i32* %2, align 4
  br label %307

268:                                              ; preds = %251, %248
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %270 = icmp ne %struct.TYPE_6__* %269, null
  br i1 %270, label %271, label %298

271:                                              ; preds = %268
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %298, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* @tlink_verbose, align 4
  %278 = icmp sge i32 %277, 2
  br i1 %278, label %279, label %291

279:                                              ; preds = %276
  %280 = load i32, i32* @stderr, align 4
  %281 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @fprintf(i32 %280, i8* %281, i8* %284, i8* %289)
  br label %291

291:                                              ; preds = %279, %276
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  store i32 1, i32* %293, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = call i32 @file_push(%struct.TYPE_8__* %296)
  br label %298

298:                                              ; preds = %291, %271, %268
  %299 = load i32, i32* @temporary_firstobj, align 4
  %300 = call i32 @obstack_free(i32* @temporary_obstack, i32 %299)
  br label %17

301:                                              ; preds = %17
  %302 = load i32*, i32** %4, align 8
  %303 = call i32 @fclose(i32* %302)
  %304 = load i32*, i32** @file_stack, align 8
  %305 = icmp ne i32* %304, null
  %306 = zext i1 %305 to i32
  store i32 %306, i32* %2, align 4
  br label %307

307:                                              ; preds = %301, %256
  %308 = load i32, i32* %2, align 4
  ret i32 %308
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @tfgets(i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @ISSPACE(i8 zeroext) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_6__* @symbol_hash_lookup(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_7__* @demangled_hash_lookup(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @file_push(%struct.TYPE_8__*) #1

declare dso_local i32 @obstack_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
