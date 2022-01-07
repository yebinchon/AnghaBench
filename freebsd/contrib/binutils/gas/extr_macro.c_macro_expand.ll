; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_macro_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_macro_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__*, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_28__*, %struct.TYPE_25__, %struct.TYPE_26__ }
%struct.TYPE_25__ = type { i8*, i64 }
%struct.TYPE_26__ = type { i32, i8* }

@macro_mri = common dso_local global i64 0, align 8
@QUAL_INDEX = common dso_local global i64 0, align 8
@macro_alternate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"confusion in formal parameters\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Parameter named `%s' does not exist for macro `%s'\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Value for parameter `%s' of macro `%s' was already specified\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"can't mix positional and keyword arguments\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"too many positional arguments\00", align 1
@FORMAL_VARARG = common dso_local global i64 0, align 8
@FORMAL_REQUIRED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"Missing value for required parameter `%s' of macro `%s'\00", align 1
@macro_strip_at = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"$NARG\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NARG\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@macro_number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_26__*)* @macro_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @macro_expand(i32 %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__**, align 8
  %18 = alloca i32, align 4
  %19 = alloca [20 x i8], align 16
  %20 = alloca %struct.TYPE_28__**, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %21 = call i32 @sb_new(%struct.TYPE_26__* %9)
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %11, align 8
  br label %25

25:                                               ; preds = %32, %4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %27 = icmp ne %struct.TYPE_28__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 4
  %31 = call i32 @sb_reset(%struct.TYPE_26__* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %11, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %38, align 8
  store %struct.TYPE_28__* %39, %struct.TYPE_28__** %11, align 8
  br label %40

40:                                               ; preds = %50, %36
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %42 = icmp ne %struct.TYPE_28__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %52, align 8
  store %struct.TYPE_28__* %53, %struct.TYPE_28__** %11, align 8
  br label %40

54:                                               ; preds = %48
  %55 = load i64, i64* @macro_mri, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %121

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %120

63:                                               ; preds = %57
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %120

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %73
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 32
  br i1 %90, label %91, label %119

91:                                               ; preds = %81
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 9
  br i1 %100, label %101, label %119

101:                                              ; preds = %91
  %102 = call %struct.TYPE_28__* (...) @new_formal()
  store %struct.TYPE_28__* %102, %struct.TYPE_28__** %15, align 8
  %103 = load i64, i64* @QUAL_INDEX, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %107, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 2
  store %struct.TYPE_28__* %108, %struct.TYPE_28__** %110, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  store %struct.TYPE_28__* %111, %struct.TYPE_28__** %113, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 4
  %118 = call i32 @get_any_string(i32 %114, %struct.TYPE_26__* %115, %struct.TYPE_26__* %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %101, %91, %81, %73
  br label %120

120:                                              ; preds = %119, %63, %57
  br label %121

121:                                              ; preds = %120, %54
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %124 = call i32 @sb_skip_white(i32 %122, %struct.TYPE_26__* %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %409, %121
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %410

131:                                              ; preds = %125
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %179, %131
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %177

139:                                              ; preds = %133
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @ISSEP(i8 signext %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %177, label %149

149:                                              ; preds = %139
  %150 = load i64, i64* @macro_mri, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 39
  br i1 %161, label %177, label %162

162:                                              ; preds = %152, %149
  %163 = load i32, i32* @macro_alternate, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %162
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 61
  br label %175

175:                                              ; preds = %165, %162
  %176 = phi i1 [ false, %162 ], [ %174, %165 ]
  br label %177

177:                                              ; preds = %175, %152, %139, %133
  %178 = phi i1 [ false, %152 ], [ false, %139 ], [ false, %133 ], [ %176, %175 ]
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %133

182:                                              ; preds = %177
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %270

188:                                              ; preds = %182
  %189 = load i32, i32* @macro_alternate, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %270, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 61
  br i1 %200, label %201, label %270

201:                                              ; preds = %191
  store i32 1, i32* %12, align 4
  %202 = call i32 @sb_reset(%struct.TYPE_26__* %9)
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %205 = call i32 @get_token(i32 %203, %struct.TYPE_26__* %204, %struct.TYPE_26__* %9)
  store i32 %205, i32* %5, align 4
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 61
  br i1 %214, label %215, label %217

215:                                              ; preds = %201
  %216 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %216, i8** %14, align 8
  br label %410

217:                                              ; preds = %201
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @sb_terminate(%struct.TYPE_26__* %9)
  %222 = call i64 @hash_find(i32 %220, i32 %221)
  %223 = inttoptr i64 %222 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %223, %struct.TYPE_28__** %10, align 8
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %225 = icmp ne %struct.TYPE_28__* %224, null
  br i1 %225, label %234, label %226

226:                                              ; preds = %217
  %227 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @as_bad(i8* %227, i8* %229, i32 %232)
  br label %269

234:                                              ; preds = %217
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %234
  %241 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @as_warn(i8* %241, i8* %245, i32 %248)
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 4
  %252 = call i32 @sb_reset(%struct.TYPE_26__* %251)
  br label %253

253:                                              ; preds = %240, %234
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 4
  %259 = call i32 @get_any_string(i32 %255, %struct.TYPE_26__* %256, %struct.TYPE_26__* %258)
  store i32 %259, i32* %5, align 4
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %253
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %13, align 4
  br label %268

268:                                              ; preds = %265, %253
  br label %269

269:                                              ; preds = %268, %226
  br label %377

270:                                              ; preds = %191, %188, %182
  %271 = load i32, i32* %12, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i8* %274, i8** %14, align 8
  br label %410

275:                                              ; preds = %270
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %277 = icmp ne %struct.TYPE_28__* %276, null
  br i1 %277, label %322, label %278

278:                                              ; preds = %275
  %279 = load i64, i64* @macro_mri, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i8* %282, i8** %14, align 8
  br label %410

283:                                              ; preds = %278
  %284 = call %struct.TYPE_28__* (...) @new_formal()
  store %struct.TYPE_28__* %284, %struct.TYPE_28__** %11, align 8
  store i32 -1, i32* %18, align 4
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  store %struct.TYPE_28__** %286, %struct.TYPE_28__*** %17, align 8
  br label %287

287:                                              ; preds = %307, %283
  %288 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %17, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %288, align 8
  %290 = icmp ne %struct.TYPE_28__* %289, null
  br i1 %290, label %291, label %311

291:                                              ; preds = %287
  %292 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %17, align 8
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = icmp sge i64 %295, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %291
  %300 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %17, align 8
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %18, align 4
  br label %306

306:                                              ; preds = %299, %291
  br label %307

307:                                              ; preds = %306
  %308 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %17, align 8
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 2
  store %struct.TYPE_28__** %310, %struct.TYPE_28__*** %17, align 8
  br label %287

311:                                              ; preds = %287
  %312 = load i32, i32* %18, align 4
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i32 0, i32* %18, align 4
  br label %315

315:                                              ; preds = %314, %311
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %317 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %17, align 8
  store %struct.TYPE_28__* %316, %struct.TYPE_28__** %317, align 8
  %318 = load i32, i32* %18, align 4
  %319 = sext i32 %318 to i64
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  br label %322

322:                                              ; preds = %315, %275
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @FORMAL_VARARG, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %322
  %329 = load i32, i32* %5, align 4
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 4
  %333 = call i32 @get_any_string(i32 %329, %struct.TYPE_26__* %330, %struct.TYPE_26__* %332)
  store i32 %333, i32* %5, align 4
  br label %352

334:                                              ; preds = %322
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %335, i32 0, i32 4
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %337, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %5, align 4
  %347 = sub nsw i32 %345, %346
  %348 = call i32 @sb_add_buffer(%struct.TYPE_26__* %336, i8* %342, i32 %347)
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  store i32 %351, i32* %5, align 4
  br label %352

352:                                              ; preds = %334, %328
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %352
  %359 = load i32, i32* %13, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %13, align 4
  br label %361

361:                                              ; preds = %358, %352
  br label %362

362:                                              ; preds = %374, %361
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 2
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %364, align 8
  store %struct.TYPE_28__* %365, %struct.TYPE_28__** %11, align 8
  br label %366

366:                                              ; preds = %362
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %368 = icmp ne %struct.TYPE_28__* %367, null
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp slt i64 %372, 0
  br label %374

374:                                              ; preds = %369, %366
  %375 = phi i1 [ false, %366 ], [ %373, %369 ]
  br i1 %375, label %362, label %376

376:                                              ; preds = %374
  br label %377

377:                                              ; preds = %376, %269
  %378 = load i64, i64* @macro_mri, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* %5, align 4
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %383 = call i32 @sb_skip_comma(i32 %381, %struct.TYPE_26__* %382)
  store i32 %383, i32* %5, align 4
  br label %409

384:                                              ; preds = %377
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 1
  %387 = load i8*, i8** %386, align 8
  %388 = load i32, i32* %5, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp eq i32 %392, 44
  br i1 %393, label %394, label %397

394:                                              ; preds = %384
  %395 = load i32, i32* %5, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %5, align 4
  br label %397

397:                                              ; preds = %394, %384
  %398 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 1
  %400 = load i8*, i8** %399, align 8
  %401 = load i32, i32* %5, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = call i64 @ISWHITE(i8 signext %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %397
  br label %410

408:                                              ; preds = %397
  br label %409

409:                                              ; preds = %408, %380
  br label %125

410:                                              ; preds = %407, %281, %273, %215, %125
  %411 = load i8*, i8** %14, align 8
  %412 = icmp ne i8* %411, null
  br i1 %412, label %482, label %413

413:                                              ; preds = %410
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %415, align 8
  store %struct.TYPE_28__* %416, %struct.TYPE_28__** %10, align 8
  br label %417

417:                                              ; preds = %443, %413
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %419 = icmp ne %struct.TYPE_28__* %418, null
  br i1 %419, label %420, label %447

420:                                              ; preds = %417
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @FORMAL_REQUIRED, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %442

426:                                              ; preds = %420
  %427 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %442

432:                                              ; preds = %426
  %433 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %434 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @as_bad(i8* %433, i8* %437, i32 %440)
  br label %442

442:                                              ; preds = %432, %426, %420
  br label %443

443:                                              ; preds = %442
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %444, i32 0, i32 2
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %445, align 8
  store %struct.TYPE_28__* %446, %struct.TYPE_28__** %10, align 8
  br label %417

447:                                              ; preds = %417
  %448 = load i64, i64* @macro_mri, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %470

450:                                              ; preds = %447
  %451 = call i32 @sb_reset(%struct.TYPE_26__* %9)
  %452 = load i64, i64* @macro_strip_at, align 8
  %453 = icmp ne i64 %452, 0
  %454 = zext i1 %453 to i64
  %455 = select i1 %453, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %456 = call i32 @sb_add_string(%struct.TYPE_26__* %9, i8* %455)
  %457 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @sb_terminate(%struct.TYPE_26__* %9)
  %461 = call i64 @hash_find(i32 %459, i32 %460)
  %462 = inttoptr i64 %461 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %462, %struct.TYPE_28__** %10, align 8
  %463 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %464 = load i32, i32* %13, align 4
  %465 = call i32 @sprintf(i8* %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %464)
  %466 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 4
  %468 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %469 = call i32 @sb_add_string(%struct.TYPE_26__* %467, i8* %468)
  br label %470

470:                                              ; preds = %450, %447
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 2
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %474 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %474, i32 0, i32 0
  %476 = load %struct.TYPE_28__*, %struct.TYPE_28__** %475, align 8
  %477 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %481 = call i8* @macro_expand_body(i32* %472, %struct.TYPE_26__* %473, %struct.TYPE_28__* %476, i32 %479, %struct.TYPE_27__* %480)
  store i8* %481, i8** %14, align 8
  br label %482

482:                                              ; preds = %470, %410
  %483 = load i64, i64* @macro_mri, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %515

485:                                              ; preds = %482
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %486, i32 0, i32 0
  store %struct.TYPE_28__** %487, %struct.TYPE_28__*** %20, align 8
  br label %488

488:                                              ; preds = %513, %485
  %489 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  %490 = load %struct.TYPE_28__*, %struct.TYPE_28__** %489, align 8
  %491 = icmp ne %struct.TYPE_28__* %490, null
  br i1 %491, label %492, label %514

492:                                              ; preds = %488
  %493 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  %494 = load %struct.TYPE_28__*, %struct.TYPE_28__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %494, i32 0, i32 3
  %496 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %503

499:                                              ; preds = %492
  %500 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  %501 = load %struct.TYPE_28__*, %struct.TYPE_28__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %501, i32 0, i32 2
  store %struct.TYPE_28__** %502, %struct.TYPE_28__*** %20, align 8
  br label %513

503:                                              ; preds = %492
  %504 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  %505 = load %struct.TYPE_28__*, %struct.TYPE_28__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %505, i32 0, i32 2
  %507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %506, align 8
  store %struct.TYPE_28__* %507, %struct.TYPE_28__** %11, align 8
  %508 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  %509 = load %struct.TYPE_28__*, %struct.TYPE_28__** %508, align 8
  %510 = call i32 @del_formal(%struct.TYPE_28__* %509)
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %512 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  store %struct.TYPE_28__* %511, %struct.TYPE_28__** %512, align 8
  br label %513

513:                                              ; preds = %503, %499
  br label %488

514:                                              ; preds = %488
  br label %515

515:                                              ; preds = %514, %482
  %516 = call i32 @sb_kill(%struct.TYPE_26__* %9)
  %517 = load i8*, i8** %14, align 8
  %518 = icmp ne i8* %517, null
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = load i32, i32* @macro_number, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* @macro_number, align 4
  br label %522

522:                                              ; preds = %519, %515
  %523 = load i8*, i8** %14, align 8
  ret i8* %523
}

declare dso_local i32 @sb_new(%struct.TYPE_26__*) #1

declare dso_local i32 @sb_reset(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_28__* @new_formal(...) #1

declare dso_local i32 @get_any_string(i32, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @sb_skip_white(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ISSEP(i8 signext) #1

declare dso_local i32 @get_token(i32, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @hash_find(i32, i32) #1

declare dso_local i32 @sb_terminate(%struct.TYPE_26__*) #1

declare dso_local i32 @as_bad(i8*, i8*, i32) #1

declare dso_local i32 @as_warn(i8*, i8*, i32) #1

declare dso_local i32 @sb_add_buffer(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @sb_skip_comma(i32, %struct.TYPE_26__*) #1

declare dso_local i64 @ISWHITE(i8 signext) #1

declare dso_local i32 @sb_add_string(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @macro_expand_body(i32*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @del_formal(%struct.TYPE_28__*) #1

declare dso_local i32 @sb_kill(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
