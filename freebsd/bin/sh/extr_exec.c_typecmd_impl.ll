; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_typecmd_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_typecmd_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdentry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tblentry = type { i32, i32, %struct.TYPE_2__ }
%struct.alias = type { i32 }

@parsekwd = common dso_local global i8** null, align 8
@TYPECMD_SMALLV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s is a shell keyword\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"alias %s=\00", align 1
@out1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s is an alias for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s is%s %s\0A\00", align 1
@TYPECMD_TYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c" a tracked alias for\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@X_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"%s is %s\0A\00", align 1
@out2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"%s is a shell function\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s is a special shell builtin\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"%s is a shell builtin\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%s: not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typecmd_impl(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmdentry, align 4
  %10 = alloca %struct.tblentry*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.alias*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* (...) @pathval()
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 (...) @clearcmdentry()
  br label %24

24:                                               ; preds = %22, %4
  store i32 1, i32* %13, align 4
  br label %25

25:                                               ; preds = %325, %24
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %328

29:                                               ; preds = %25
  %30 = load i8**, i8*** @parsekwd, align 8
  store i8** %30, i8*** %11, align 8
  br label %31

31:                                               ; preds = %60, %29
  %32 = load i8**, i8*** %11, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i8**, i8*** %11, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = load i8**, i8*** %11, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @equal(i8* %50, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i8**, i8*** %11, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %11, align 8
  br label %31

63:                                               ; preds = %58, %31
  %64 = load i8**, i8*** %11, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @TYPECMD_SMALLV, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %85

78:                                               ; preds = %67
  %79 = load i8**, i8*** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %78, %71
  br label %325

86:                                               ; preds = %63
  %87 = load i8**, i8*** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call %struct.alias* @lookupalias(i8* %91, i32 1)
  store %struct.alias* %92, %struct.alias** %12, align 8
  %93 = icmp ne %struct.alias* %92, null
  br i1 %93, label %94, label %122

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @TYPECMD_SMALLV, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i8**, i8*** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  %105 = load %struct.alias*, %struct.alias** %12, align 8
  %106 = getelementptr inbounds %struct.alias, %struct.alias* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @out1qstr(i32 %107)
  %109 = load i32, i32* @out1, align 4
  %110 = call i32 @outcslow(i8 signext 10, i32 %109)
  br label %121

111:                                              ; preds = %94
  %112 = load i8**, i8*** %6, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.alias*, %struct.alias** %12, align 8
  %118 = getelementptr inbounds %struct.alias, %struct.alias* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %116, i32 %119)
  br label %121

121:                                              ; preds = %111, %98
  br label %325

122:                                              ; preds = %86
  %123 = load i8**, i8*** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call %struct.tblentry* @cmdlookup(i8* %127, i32 0)
  store %struct.tblentry* %128, %struct.tblentry** %10, align 8
  %129 = icmp ne %struct.tblentry* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %122
  %131 = load %struct.tblentry*, %struct.tblentry** %10, align 8
  %132 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %9, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %9, i32 0, i32 2
  %136 = load %struct.tblentry*, %struct.tblentry** %10, align 8
  %137 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %136, i32 0, i32 2
  %138 = bitcast %struct.TYPE_2__* %135 to i8*
  %139 = bitcast %struct.TYPE_2__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 4, i1 false)
  %140 = load %struct.tblentry*, %struct.tblentry** %10, align 8
  %141 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %9, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  br label %152

144:                                              ; preds = %122
  %145 = load i8**, i8*** %6, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @find_command(i8* %149, %struct.cmdentry* %9, i32 0, i8* %150)
  br label %152

152:                                              ; preds = %144, %130
  %153 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %9, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  switch i32 %154, label %309 [
    i32 128, label %155
    i32 129, label %259
    i32 130, label %278
  ]

155:                                              ; preds = %152
  %156 = load i8**, i8*** %6, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32* @strchr(i8* %160, i8 signext 47)
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %207

163:                                              ; preds = %155
  %164 = load i8*, i8** %8, align 8
  store i8* %164, i8** %15, align 8
  %165 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %9, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %18, align 4
  br label %168

168:                                              ; preds = %177, %163
  %169 = load i8**, i8*** %6, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @padvance(i8** %15, i8** %16, i8* %173)
  store i8* %174, i8** %17, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = call i32 @stunalloc(i8* %175)
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %18, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %168, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @TYPECMD_SMALLV, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i8*, i8** %17, align 8
  %187 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %186)
  br label %206

188:                                              ; preds = %181
  %189 = load i8**, i8*** %6, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.tblentry*, %struct.tblentry** %10, align 8
  %195 = icmp ne %struct.tblentry* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @TYPECMD_TYPE, align 4
  %199 = icmp eq i32 %197, %198
  br label %200

200:                                              ; preds = %196, %188
  %201 = phi i1 [ false, %188 ], [ %199, %196 ]
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %193, i8* %203, i8* %204)
  br label %206

206:                                              ; preds = %200, %185
  br label %258

207:                                              ; preds = %155
  %208 = load i8**, i8*** %6, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* @X_OK, align 4
  %214 = call i32 @eaccess(i8* %212, i32 %213)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %207
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @TYPECMD_SMALLV, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i8**, i8*** %6, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %225)
  br label %239

227:                                              ; preds = %216
  %228 = load i8**, i8*** %6, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = load i8**, i8*** %6, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %232, i8* %237)
  br label %239

239:                                              ; preds = %227, %220
  br label %257

240:                                              ; preds = %207
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @TYPECMD_SMALLV, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %240
  %245 = load i32, i32* @out2, align 4
  %246 = load i8**, i8*** %6, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* @errno, align 4
  %252 = call i32 @strerror(i32 %251)
  %253 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %250, i32 %252)
  br label %254

254:                                              ; preds = %244, %240
  %255 = load i32, i32* %14, align 4
  %256 = or i32 %255, 127
  store i32 %256, i32* %14, align 4
  br label %257

257:                                              ; preds = %254, %239
  br label %258

258:                                              ; preds = %257, %206
  br label %324

259:                                              ; preds = %152
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* @TYPECMD_SMALLV, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load i8**, i8*** %6, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %268)
  br label %277

270:                                              ; preds = %259
  %271 = load i8**, i8*** %6, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %275)
  br label %277

277:                                              ; preds = %270, %263
  br label %324

278:                                              ; preds = %152
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @TYPECMD_SMALLV, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %278
  %283 = load i8**, i8*** %6, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %287)
  br label %308

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %9, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %289
  %294 = load i8**, i8*** %6, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %298)
  br label %307

300:                                              ; preds = %289
  %301 = load i8**, i8*** %6, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %301, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 (i8*, i8*, ...) @out1fmt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %305)
  br label %307

307:                                              ; preds = %300, %293
  br label %308

308:                                              ; preds = %307, %282
  br label %324

309:                                              ; preds = %152
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @TYPECMD_SMALLV, align 4
  %312 = icmp ne i32 %310, %311
  br i1 %312, label %313, label %321

313:                                              ; preds = %309
  %314 = load i32, i32* @out2, align 4
  %315 = load i8**, i8*** %6, align 8
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8*, i8** %315, i64 %317
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %314, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %313, %309
  %322 = load i32, i32* %14, align 4
  %323 = or i32 %322, 127
  store i32 %323, i32* %14, align 4
  br label %324

324:                                              ; preds = %321, %308, %277, %258
  br label %325

325:                                              ; preds = %324, %121, %85
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %13, align 4
  br label %25

328:                                              ; preds = %25
  %329 = load i8*, i8** %8, align 8
  %330 = call i8* (...) @pathval()
  %331 = icmp ne i8* %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = call i32 (...) @clearcmdentry()
  br label %334

334:                                              ; preds = %332, %328
  %335 = load i32, i32* %14, align 4
  ret i32 %335
}

declare dso_local i8* @pathval(...) #1

declare dso_local i32 @clearcmdentry(...) #1

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i32 @out1fmt(i8*, i8*, ...) #1

declare dso_local %struct.alias* @lookupalias(i8*, i32) #1

declare dso_local i32 @out1qstr(i32) #1

declare dso_local i32 @outcslow(i8 signext, i32) #1

declare dso_local %struct.tblentry* @cmdlookup(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @find_command(i8*, %struct.cmdentry*, i32, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @padvance(i8**, i8**, i8*) #1

declare dso_local i32 @stunalloc(i8*) #1

declare dso_local i32 @eaccess(i8*, i32) #1

declare dso_local i32 @outfmt(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
