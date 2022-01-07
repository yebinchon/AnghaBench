; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_misc.c_skelout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_misc.c_skelout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAXLINE = common dso_local global i32 0, align 4
@sko_len = common dso_local global i64 0, align 8
@skelfile = common dso_local global i64 0, align 8
@skel = common dso_local global i64* null, align 8
@skel_ind = common dso_local global i32 0, align 4
@ddebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"/* %s */\\\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/* %s */\0A\00", align 1
@CMD_PUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"/*(state = (%s) */\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CMD_POP = common dso_local global i32 0, align 4
@CMD_IF_REENTRANT = common dso_local global i32 0, align 4
@reentrant = common dso_local global i64 0, align 8
@CMD_IF_NOT_REENTRANT = common dso_local global i32 0, align 4
@CMD_IF_BISON_BRIDGE = common dso_local global i32 0, align 4
@bison_bridge_lval = common dso_local global i64 0, align 8
@CMD_IF_NOT_BISON_BRIDGE = common dso_local global i32 0, align 4
@CMD_ENDIF = common dso_local global i32 0, align 4
@CMD_IF_TABLES_SER = common dso_local global i32 0, align 4
@tablesext = common dso_local global i64 0, align 8
@CMD_TABLES_YYDMAP = common dso_local global i32 0, align 4
@yydmap_buf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CMD_DEFINE_YYTABLES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"#define YYTABLES_NAME \22%s\22\0A\00", align 1
@tablesname = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"yytables\00", align 1
@CMD_IF_CPP_ONLY = common dso_local global i32 0, align 4
@C_plus_plus = common dso_local global i32 0, align 4
@CMD_IF_C_ONLY = common dso_local global i32 0, align 4
@CMD_IF_C_OR_CPP = common dso_local global i32 0, align 4
@CMD_NOT_FOR_HEADER = common dso_local global i32 0, align 4
@CMD_OK_FOR_HEADER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"bad line in skeleton file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skelout() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAXLINE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  store i8* %9, i8** %3, align 8
  store i32 1, i32* %4, align 4
  %10 = load i64, i64* @sko_len, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @sko_peek(i32* %4)
  br label %14

14:                                               ; preds = %12, %0
  store i64 0, i64* @sko_len, align 8
  store i32 1, i32* %4, align 4
  %15 = call i32 @sko_push(i32 1)
  br label %16

16:                                               ; preds = %438, %14
  %17 = load i64, i64* @skelfile, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @MAXLINE, align 4
  %22 = load i64, i64* @skelfile, align 8
  %23 = call i32* @fgets(i8* %20, i32 %21, i64 %22)
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  br label %36

26:                                               ; preds = %16
  %27 = load i64*, i64** @skel, align 8
  %28 = load i32, i32* @skel_ind, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @skel_ind, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %26, %19
  %37 = phi i32 [ %25, %19 ], [ %35, %26 ]
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %439

39:                                               ; preds = %36
  %40 = load i64, i64* @skelfile, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @chomp(i8* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %431

51:                                               ; preds = %45
  %52 = load i64, i64* @ddebug, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 35
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 92
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @out_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %71)
  br label %76

73:                                               ; preds = %60
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @out_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %54, %51
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %440

84:                                               ; preds = %77
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* @CMD_PUSH, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load i32, i32* @CMD_PUSH, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @strlen(i8* %91)
  %93 = sext i32 %92 to i64
  %94 = call i32 @strncmp(i8* %85, i8* %88, i64 %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %84
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @sko_push(i32 %97)
  %99 = load i64, i64* @ddebug, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %106 = call i32 @out_str(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i8*, i8** %3, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 92
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %119 = call i32 @out_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %429

120:                                              ; preds = %84
  %121 = load i8*, i8** %3, align 8
  %122 = load i32, i32* @CMD_POP, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i32, i32* @CMD_POP, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @strlen(i8* %127)
  %129 = sext i32 %128 to i64
  %130 = call i32 @strncmp(i8* %121, i8* %124, i64 %129)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %120
  %133 = call i32 @sko_pop(i32* %4)
  %134 = load i64, i64* @ddebug, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %141 = call i32 @out_str(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %136, %132
  %143 = load i8*, i8** %3, align 8
  %144 = load i8*, i8** %3, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 92
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %154 = call i32 @out_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %153)
  br label %428

155:                                              ; preds = %120
  %156 = load i8*, i8** %3, align 8
  %157 = load i32, i32* @CMD_IF_REENTRANT, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = load i32, i32* @CMD_IF_REENTRANT, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @strlen(i8* %162)
  %164 = sext i32 %163 to i64
  %165 = call i32 @strncmp(i8* %156, i8* %159, i64 %164)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %155
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @sko_push(i32 %168)
  %170 = load i64, i64* @reentrant, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi i1 [ false, %167 ], [ %174, %172 ]
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %4, align 4
  br label %427

178:                                              ; preds = %155
  %179 = load i8*, i8** %3, align 8
  %180 = load i32, i32* @CMD_IF_NOT_REENTRANT, align 4
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load i32, i32* @CMD_IF_NOT_REENTRANT, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 @strlen(i8* %185)
  %187 = sext i32 %186 to i64
  %188 = call i32 @strncmp(i8* %179, i8* %182, i64 %187)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %178
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @sko_push(i32 %191)
  %193 = load i64, i64* @reentrant, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br label %198

198:                                              ; preds = %195, %190
  %199 = phi i1 [ false, %190 ], [ %197, %195 ]
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %4, align 4
  br label %426

201:                                              ; preds = %178
  %202 = load i8*, i8** %3, align 8
  %203 = load i32, i32* @CMD_IF_BISON_BRIDGE, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = load i32, i32* @CMD_IF_BISON_BRIDGE, align 4
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 @strlen(i8* %208)
  %210 = sext i32 %209 to i64
  %211 = call i32 @strncmp(i8* %202, i8* %205, i64 %210)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %201
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @sko_push(i32 %214)
  %216 = load i64, i64* @bison_bridge_lval, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %218, %213
  %222 = phi i1 [ false, %213 ], [ %220, %218 ]
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %4, align 4
  br label %425

224:                                              ; preds = %201
  %225 = load i8*, i8** %3, align 8
  %226 = load i32, i32* @CMD_IF_NOT_BISON_BRIDGE, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = load i32, i32* @CMD_IF_NOT_BISON_BRIDGE, align 4
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = call i32 @strlen(i8* %231)
  %233 = sext i32 %232 to i64
  %234 = call i32 @strncmp(i8* %225, i8* %228, i64 %233)
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %224
  %237 = load i32, i32* %4, align 4
  %238 = call i32 @sko_push(i32 %237)
  %239 = load i64, i64* @bison_bridge_lval, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = load i32, i32* %4, align 4
  %243 = icmp ne i32 %242, 0
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi i1 [ false, %236 ], [ %243, %241 ]
  %246 = zext i1 %245 to i32
  store i32 %246, i32* %4, align 4
  br label %424

247:                                              ; preds = %224
  %248 = load i8*, i8** %3, align 8
  %249 = load i32, i32* @CMD_ENDIF, align 4
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = load i32, i32* @CMD_ENDIF, align 4
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to i8*
  %255 = call i32 @strlen(i8* %254)
  %256 = sext i32 %255 to i64
  %257 = call i32 @strncmp(i8* %248, i8* %251, i64 %256)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %247
  %260 = call i32 @sko_pop(i32* %4)
  br label %423

261:                                              ; preds = %247
  %262 = load i8*, i8** %3, align 8
  %263 = load i32, i32* @CMD_IF_TABLES_SER, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load i32, i32* @CMD_IF_TABLES_SER, align 4
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  %269 = call i32 @strlen(i8* %268)
  %270 = sext i32 %269 to i64
  %271 = call i32 @strncmp(i8* %262, i8* %265, i64 %270)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %261
  %274 = load i32, i32* %4, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i64, i64* @tablesext, align 8
  %278 = icmp ne i64 %277, 0
  br label %279

279:                                              ; preds = %276, %273
  %280 = phi i1 [ false, %273 ], [ %278, %276 ]
  %281 = zext i1 %280 to i32
  store i32 %281, i32* %4, align 4
  br label %422

282:                                              ; preds = %261
  %283 = load i8*, i8** %3, align 8
  %284 = load i32, i32* @CMD_TABLES_YYDMAP, align 4
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to i8*
  %287 = load i32, i32* @CMD_TABLES_YYDMAP, align 4
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = call i32 @strlen(i8* %289)
  %291 = sext i32 %290 to i64
  %292 = call i32 @strncmp(i8* %283, i8* %286, i64 %291)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %282
  %295 = load i64, i64* @tablesext, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %294
  %298 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yydmap_buf, i32 0, i32 0), align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yydmap_buf, i32 0, i32 0), align 8
  %302 = inttoptr i64 %301 to i8*
  %303 = call i32 @outn(i8* %302)
  br label %304

304:                                              ; preds = %300, %297, %294
  br label %421

305:                                              ; preds = %282
  %306 = load i8*, i8** %3, align 8
  %307 = load i32, i32* @CMD_DEFINE_YYTABLES, align 4
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = load i32, i32* @CMD_DEFINE_YYTABLES, align 4
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = call i32 @strlen(i8* %312)
  %314 = sext i32 %313 to i64
  %315 = call i32 @strncmp(i8* %306, i8* %309, i64 %314)
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %305
  %318 = load i8*, i8** @tablesname, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = load i8*, i8** @tablesname, align 8
  br label %323

322:                                              ; preds = %317
  br label %323

323:                                              ; preds = %322, %320
  %324 = phi i8* [ %321, %320 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %322 ]
  %325 = call i32 @out_str(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %324)
  br label %420

326:                                              ; preds = %305
  %327 = load i8*, i8** %3, align 8
  %328 = load i32, i32* @CMD_IF_CPP_ONLY, align 4
  %329 = sext i32 %328 to i64
  %330 = inttoptr i64 %329 to i8*
  %331 = load i32, i32* @CMD_IF_CPP_ONLY, align 4
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to i8*
  %334 = call i32 @strlen(i8* %333)
  %335 = sext i32 %334 to i64
  %336 = call i32 @strncmp(i8* %327, i8* %330, i64 %335)
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %326
  %339 = load i32, i32* %4, align 4
  %340 = call i32 @sko_push(i32 %339)
  %341 = load i32, i32* @C_plus_plus, align 4
  store i32 %341, i32* %4, align 4
  br label %419

342:                                              ; preds = %326
  %343 = load i8*, i8** %3, align 8
  %344 = load i32, i32* @CMD_IF_C_ONLY, align 4
  %345 = sext i32 %344 to i64
  %346 = inttoptr i64 %345 to i8*
  %347 = load i32, i32* @CMD_IF_C_ONLY, align 4
  %348 = sext i32 %347 to i64
  %349 = inttoptr i64 %348 to i8*
  %350 = call i32 @strlen(i8* %349)
  %351 = sext i32 %350 to i64
  %352 = call i32 @strncmp(i8* %343, i8* %346, i64 %351)
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %342
  %355 = load i32, i32* %4, align 4
  %356 = call i32 @sko_push(i32 %355)
  %357 = load i32, i32* @C_plus_plus, align 4
  %358 = icmp ne i32 %357, 0
  %359 = xor i1 %358, true
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %4, align 4
  br label %418

361:                                              ; preds = %342
  %362 = load i8*, i8** %3, align 8
  %363 = load i32, i32* @CMD_IF_C_OR_CPP, align 4
  %364 = sext i32 %363 to i64
  %365 = inttoptr i64 %364 to i8*
  %366 = load i32, i32* @CMD_IF_C_OR_CPP, align 4
  %367 = sext i32 %366 to i64
  %368 = inttoptr i64 %367 to i8*
  %369 = call i32 @strlen(i8* %368)
  %370 = sext i32 %369 to i64
  %371 = call i32 @strncmp(i8* %362, i8* %365, i64 %370)
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %361
  %374 = load i32, i32* %4, align 4
  %375 = call i32 @sko_push(i32 %374)
  store i32 1, i32* %4, align 4
  br label %417

376:                                              ; preds = %361
  %377 = load i8*, i8** %3, align 8
  %378 = load i32, i32* @CMD_NOT_FOR_HEADER, align 4
  %379 = sext i32 %378 to i64
  %380 = inttoptr i64 %379 to i8*
  %381 = load i32, i32* @CMD_NOT_FOR_HEADER, align 4
  %382 = sext i32 %381 to i64
  %383 = inttoptr i64 %382 to i8*
  %384 = call i32 @strlen(i8* %383)
  %385 = sext i32 %384 to i64
  %386 = call i32 @strncmp(i8* %377, i8* %380, i64 %385)
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %376
  %389 = call i32 (...) @OUT_BEGIN_CODE()
  br label %416

390:                                              ; preds = %376
  %391 = load i8*, i8** %3, align 8
  %392 = load i32, i32* @CMD_OK_FOR_HEADER, align 4
  %393 = sext i32 %392 to i64
  %394 = inttoptr i64 %393 to i8*
  %395 = load i32, i32* @CMD_OK_FOR_HEADER, align 4
  %396 = sext i32 %395 to i64
  %397 = inttoptr i64 %396 to i8*
  %398 = call i32 @strlen(i8* %397)
  %399 = sext i32 %398 to i64
  %400 = call i32 @strncmp(i8* %391, i8* %394, i64 %399)
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %390
  %403 = call i32 (...) @OUT_END_CODE()
  br label %415

404:                                              ; preds = %390
  %405 = load i8*, i8** %3, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 1
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp eq i32 %408, 35
  br i1 %409, label %410, label %411

410:                                              ; preds = %404
  br label %414

411:                                              ; preds = %404
  %412 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %413 = call i32 @flexfatal(i32 %412)
  br label %414

414:                                              ; preds = %411, %410
  br label %415

415:                                              ; preds = %414, %402
  br label %416

416:                                              ; preds = %415, %388
  br label %417

417:                                              ; preds = %416, %373
  br label %418

418:                                              ; preds = %417, %354
  br label %419

419:                                              ; preds = %418, %338
  br label %420

420:                                              ; preds = %419, %323
  br label %421

421:                                              ; preds = %420, %304
  br label %422

422:                                              ; preds = %421, %279
  br label %423

423:                                              ; preds = %422, %259
  br label %424

424:                                              ; preds = %423, %244
  br label %425

425:                                              ; preds = %424, %221
  br label %426

426:                                              ; preds = %425, %198
  br label %427

427:                                              ; preds = %426, %175
  br label %428

428:                                              ; preds = %427, %142
  br label %429

429:                                              ; preds = %428, %107
  br label %430

430:                                              ; preds = %429
  br label %438

431:                                              ; preds = %45
  %432 = load i32, i32* %4, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load i8*, i8** %3, align 8
  %436 = call i32 @outn(i8* %435)
  br label %437

437:                                              ; preds = %434, %431
  br label %438

438:                                              ; preds = %437, %430
  br label %16

439:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %440

440:                                              ; preds = %439, %83
  %441 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %441)
  %442 = load i32, i32* %5, align 4
  switch i32 %442, label %444 [
    i32 0, label %443
    i32 1, label %443
  ]

443:                                              ; preds = %440, %440
  ret void

444:                                              ; preds = %440
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sko_peek(i32*) #2

declare dso_local i32 @sko_push(i32) #2

declare dso_local i32* @fgets(i8*, i32, i64) #2

declare dso_local i32 @chomp(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @out_str(i8*, i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @sko_pop(i32*) #2

declare dso_local i32 @outn(i8*) #2

declare dso_local i32 @OUT_BEGIN_CODE(...) #2

declare dso_local i32 @OUT_END_CODE(...) #2

declare dso_local i32 @flexfatal(i32) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
