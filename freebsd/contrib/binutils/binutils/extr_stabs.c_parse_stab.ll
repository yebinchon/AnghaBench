; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i8*, i64, i8*, i32, i64, i32, i64, i64, i8*, i8*, i64, i32, %struct.stab_types** }
%struct.stab_types = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"N_LBRAC not within function\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Too many N_RBRACs\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gcc2_compiled.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gcc_compiled.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_stab(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.stab_handle*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.stab_handle*
  store %struct.stab_handle* %20, %struct.stab_handle** %14, align 8
  %21 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %22 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %82

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 130
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %36 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %33, %28, %25
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %42 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @debug_set_filename(i8* %40, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i8*, i8** @FALSE, align 8
  store i8* %47, i8** %7, align 8
  br label %508

48:                                               ; preds = %39
  %49 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %50 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %53 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %55 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %54, i32 0, i32 3
  store i32 0, i32* %55, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %58 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  %59 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %60 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %48
  %64 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %65 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %68 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %48
  %70 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %71 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %70, i32 0, i32 5
  store i32 1, i32* %71, align 8
  %72 = call i64 @xmalloc(i32 8)
  %73 = inttoptr i64 %72 to %struct.stab_types**
  %74 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %75 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %74, i32 0, i32 12
  store %struct.stab_types** %73, %struct.stab_types*** %75, align 8
  %76 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %77 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %76, i32 0, i32 12
  %78 = load %struct.stab_types**, %struct.stab_types*** %77, align 8
  %79 = getelementptr inbounds %struct.stab_types*, %struct.stab_types** %78, i64 0
  store %struct.stab_types* null, %struct.stab_types** %79, align 8
  %80 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %81 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %80, i32 0, i32 0
  store i8* null, i8** %81, align 8
  br label %82

82:                                               ; preds = %69, %33, %6
  %83 = load i32, i32* %10, align 4
  switch i32 %83, label %401 [
    i32 139, label %84
    i32 138, label %84
    i32 136, label %85
    i32 132, label %131
    i32 130, label %177
    i32 129, label %265
    i32 144, label %273
    i32 142, label %285
    i32 140, label %294
    i32 131, label %303
    i32 145, label %324
    i32 143, label %332
    i32 137, label %340
    i32 133, label %479
    i32 134, label %505
    i32 141, label %505
    i32 135, label %505
    i32 128, label %505
  ]

84:                                               ; preds = %82, %82
  br label %506

85:                                               ; preds = %82
  %86 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %87 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %86, i32 0, i32 8
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %506

94:                                               ; preds = %90, %85
  %95 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %96 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %95, i32 0, i32 9
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %102 = call i32 @fprintf(i32 %100, i8* %101)
  %103 = load i8*, i8** @FALSE, align 8
  store i8* %103, i8** %7, align 8
  br label %508

104:                                              ; preds = %94
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %108 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %112 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = call i32 @debug_start_block(i8* %105, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %104
  %118 = load i8*, i8** @FALSE, align 8
  store i8* %118, i8** %7, align 8
  br label %508

119:                                              ; preds = %104
  %120 = load i8*, i8** %8, align 8
  %121 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %122 = call i32 @stab_emit_pending_vars(i8* %120, %struct.stab_handle* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** @FALSE, align 8
  store i8* %125, i8** %7, align 8
  br label %508

126:                                              ; preds = %119
  %127 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %128 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %506

131:                                              ; preds = %82
  %132 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %133 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %132, i32 0, i32 8
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %506

140:                                              ; preds = %136, %131
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %143 = call i32 @stab_emit_pending_vars(i8* %141, %struct.stab_handle* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** @FALSE, align 8
  store i8* %146, i8** %7, align 8
  br label %508

147:                                              ; preds = %140
  %148 = load i8*, i8** %8, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %151 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %155 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = call i32 @debug_end_block(i8* %148, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %147
  %161 = load i8*, i8** @FALSE, align 8
  store i8* %161, i8** %7, align 8
  br label %508

162:                                              ; preds = %147
  %163 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %164 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %163, i32 0, i32 11
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %164, align 8
  %167 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %168 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = load i32, i32* @stderr, align 4
  %173 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %174 = call i32 @fprintf(i32 %172, i8* %173)
  %175 = load i8*, i8** @FALSE, align 8
  store i8* %175, i8** %7, align 8
  br label %508

176:                                              ; preds = %162
  br label %506

177:                                              ; preds = %82
  %178 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %179 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %178, i32 0, i32 9
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %221

182:                                              ; preds = %177
  %183 = load i64, i64* %12, align 8
  store i64 %183, i64* %15, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %182
  %189 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %190 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, -1
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %195 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %194, i32 0, i32 7
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %15, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %201 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %15, align 8
  br label %203

203:                                              ; preds = %199, %193, %188, %182
  %204 = load i8*, i8** %8, align 8
  %205 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %206 = call i32 @stab_emit_pending_vars(i8* %204, %struct.stab_handle* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i8*, i8** %8, align 8
  %210 = load i64, i64* %15, align 8
  %211 = call i32 @debug_end_function(i8* %209, i64 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %208, %203
  %214 = load i8*, i8** @FALSE, align 8
  store i8* %214, i8** %7, align 8
  br label %508

215:                                              ; preds = %208
  %216 = load i8*, i8** @FALSE, align 8
  %217 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %218 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %217, i32 0, i32 9
  store i8* %216, i8** %218, align 8
  %219 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %220 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %219, i32 0, i32 7
  store i64 -1, i64* %220, align 8
  br label %221

221:                                              ; preds = %215, %177
  %222 = load i8*, i8** %13, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i8*, i8** @TRUE, align 8
  store i8* %227, i8** %7, align 8
  br label %508

228:                                              ; preds = %221
  %229 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %230 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i8*, i8** %13, align 8
  %235 = call i8* @xstrdup(i8* %234)
  %236 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %237 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  br label %261

238:                                              ; preds = %228
  %239 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %240 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %16, align 8
  %242 = load i8*, i8** %13, align 8
  %243 = call i32 @IS_ABSOLUTE_PATH(i8* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  %246 = load i8*, i8** %13, align 8
  %247 = call i8* @xstrdup(i8* %246)
  %248 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %249 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %248, i32 0, i32 0
  store i8* %247, i8** %249, align 8
  br label %258

250:                                              ; preds = %238
  %251 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %252 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i8*, i8** %13, align 8
  %255 = call i8* @concat(i8* %253, i8* %254, i8* null)
  %256 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %257 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %250, %245
  %259 = load i8*, i8** %16, align 8
  %260 = call i32 @free(i8* %259)
  br label %261

261:                                              ; preds = %258, %233
  %262 = load i64, i64* %12, align 8
  %263 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %264 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  br label %506

265:                                              ; preds = %82
  %266 = load i8*, i8** %8, align 8
  %267 = load i8*, i8** %13, align 8
  %268 = call i32 @debug_start_source(i8* %266, i8* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %265
  %271 = load i8*, i8** @FALSE, align 8
  store i8* %271, i8** %7, align 8
  br label %508

272:                                              ; preds = %265
  br label %506

273:                                              ; preds = %82
  %274 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %275 = load i8*, i8** %13, align 8
  %276 = load i64, i64* %12, align 8
  %277 = call i32 @push_bincl(%struct.stab_handle* %274, i8* %275, i64 %276)
  %278 = load i8*, i8** %8, align 8
  %279 = load i8*, i8** %13, align 8
  %280 = call i32 @debug_start_source(i8* %278, i8* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %273
  %283 = load i8*, i8** @FALSE, align 8
  store i8* %283, i8** %7, align 8
  br label %508

284:                                              ; preds = %273
  br label %506

285:                                              ; preds = %82
  %286 = load i8*, i8** %8, align 8
  %287 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %288 = call i8* @pop_bincl(%struct.stab_handle* %287)
  %289 = call i32 @debug_start_source(i8* %286, i8* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %285
  %292 = load i8*, i8** @FALSE, align 8
  store i8* %292, i8** %7, align 8
  br label %508

293:                                              ; preds = %285
  br label %506

294:                                              ; preds = %82
  %295 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %296 = load i8*, i8** %13, align 8
  %297 = load i64, i64* %12, align 8
  %298 = call i32 @find_excl(%struct.stab_handle* %295, i8* %296, i64 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %294
  %301 = load i8*, i8** @FALSE, align 8
  store i8* %301, i8** %7, align 8
  br label %508

302:                                              ; preds = %294
  br label %506

303:                                              ; preds = %82
  %304 = load i8*, i8** %8, align 8
  %305 = load i32, i32* %11, align 4
  %306 = load i64, i64* %12, align 8
  %307 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %308 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %307, i32 0, i32 9
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %315

311:                                              ; preds = %303
  %312 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %313 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  br label %316

315:                                              ; preds = %303
  br label %316

316:                                              ; preds = %315, %311
  %317 = phi i64 [ %314, %311 ], [ 0, %315 ]
  %318 = add nsw i64 %306, %317
  %319 = call i32 @debug_record_line(i8* %304, i32 %305, i64 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  %322 = load i8*, i8** @FALSE, align 8
  store i8* %322, i8** %7, align 8
  br label %508

323:                                              ; preds = %316
  br label %506

324:                                              ; preds = %82
  %325 = load i8*, i8** %8, align 8
  %326 = load i8*, i8** %13, align 8
  %327 = call i32 @debug_start_common_block(i8* %325, i8* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %324
  %330 = load i8*, i8** @FALSE, align 8
  store i8* %330, i8** %7, align 8
  br label %508

331:                                              ; preds = %324
  br label %506

332:                                              ; preds = %82
  %333 = load i8*, i8** %8, align 8
  %334 = load i8*, i8** %13, align 8
  %335 = call i32 @debug_end_common_block(i8* %333, i8* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %332
  %338 = load i8*, i8** @FALSE, align 8
  store i8* %338, i8** %7, align 8
  br label %508

339:                                              ; preds = %332
  br label %506

340:                                              ; preds = %82
  %341 = load i8*, i8** %13, align 8
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %380

345:                                              ; preds = %340
  %346 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %347 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %346, i32 0, i32 9
  %348 = load i8*, i8** %347, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %379

350:                                              ; preds = %345
  %351 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %352 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %351, i32 0, i32 10
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %357 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %356, i32 0, i32 6
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* %12, align 8
  %360 = add nsw i64 %359, %358
  store i64 %360, i64* %12, align 8
  br label %361

361:                                              ; preds = %355, %350
  %362 = load i8*, i8** %8, align 8
  %363 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %364 = call i32 @stab_emit_pending_vars(i8* %362, %struct.stab_handle* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %361
  %367 = load i8*, i8** %8, align 8
  %368 = load i64, i64* %12, align 8
  %369 = call i32 @debug_end_function(i8* %367, i64 %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %366, %361
  %372 = load i8*, i8** @FALSE, align 8
  store i8* %372, i8** %7, align 8
  br label %508

373:                                              ; preds = %366
  %374 = load i8*, i8** @FALSE, align 8
  %375 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %376 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %375, i32 0, i32 9
  store i8* %374, i8** %376, align 8
  %377 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %378 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %377, i32 0, i32 7
  store i64 -1, i64* %378, align 8
  br label %379

379:                                              ; preds = %373, %345
  br label %506

380:                                              ; preds = %340
  %381 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %382 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %381, i32 0, i32 9
  %383 = load i8*, i8** %382, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %400

385:                                              ; preds = %380
  %386 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %387 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %386, i32 0, i32 7
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %388, -1
  br i1 %389, label %396, label %390

390:                                              ; preds = %385
  %391 = load i64, i64* %12, align 8
  %392 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %393 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %392, i32 0, i32 7
  %394 = load i64, i64* %393, align 8
  %395 = icmp slt i64 %391, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %390, %385
  %397 = load i64, i64* %12, align 8
  %398 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %399 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %398, i32 0, i32 7
  store i64 %397, i64* %399, align 8
  br label %400

400:                                              ; preds = %396, %390, %380
  br label %401

401:                                              ; preds = %82, %400
  %402 = load i8*, i8** %13, align 8
  %403 = call i8* @strchr(i8* %402, i8 signext 58)
  store i8* %403, i8** %17, align 8
  %404 = load i8*, i8** %17, align 8
  %405 = icmp ne i8* %404, null
  br i1 %405, label %406, label %467

406:                                              ; preds = %401
  %407 = load i8*, i8** %17, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 1
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %410, 102
  br i1 %411, label %418, label %412

412:                                              ; preds = %406
  %413 = load i8*, i8** %17, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 1
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 70
  br i1 %417, label %418, label %467

418:                                              ; preds = %412, %406
  %419 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %420 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %419, i32 0, i32 9
  %421 = load i8*, i8** %420, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %423, label %454

423:                                              ; preds = %418
  %424 = load i64, i64* %12, align 8
  store i64 %424, i64* %18, align 8
  %425 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %426 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %425, i32 0, i32 7
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, -1
  br i1 %428, label %429, label %439

429:                                              ; preds = %423
  %430 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %431 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %430, i32 0, i32 7
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* %18, align 8
  %434 = icmp slt i64 %432, %433
  br i1 %434, label %435, label %439

435:                                              ; preds = %429
  %436 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %437 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %436, i32 0, i32 7
  %438 = load i64, i64* %437, align 8
  store i64 %438, i64* %18, align 8
  br label %439

439:                                              ; preds = %435, %429, %423
  %440 = load i8*, i8** %8, align 8
  %441 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %442 = call i32 @stab_emit_pending_vars(i8* %440, %struct.stab_handle* %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = load i8*, i8** %8, align 8
  %446 = load i64, i64* %18, align 8
  %447 = call i32 @debug_end_function(i8* %445, i64 %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %444, %439
  %450 = load i8*, i8** @FALSE, align 8
  store i8* %450, i8** %7, align 8
  br label %508

451:                                              ; preds = %444
  %452 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %453 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %452, i32 0, i32 7
  store i64 -1, i64* %453, align 8
  br label %454

454:                                              ; preds = %451, %418
  %455 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %456 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %455, i32 0, i32 10
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %454
  %460 = load i64, i64* %12, align 8
  %461 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %462 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %461, i32 0, i32 6
  store i64 %460, i64* %462, align 8
  br label %463

463:                                              ; preds = %459, %454
  %464 = load i8*, i8** @TRUE, align 8
  %465 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %466 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %465, i32 0, i32 9
  store i8* %464, i8** %466, align 8
  br label %467

467:                                              ; preds = %463, %412, %401
  %468 = load i8*, i8** %8, align 8
  %469 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %470 = load i32, i32* %10, align 4
  %471 = load i32, i32* %11, align 4
  %472 = load i64, i64* %12, align 8
  %473 = load i8*, i8** %13, align 8
  %474 = call i32 @parse_stab_string(i8* %468, %struct.stab_handle* %469, i32 %470, i32 %471, i64 %472, i8* %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %478, label %476

476:                                              ; preds = %467
  %477 = load i8*, i8** @FALSE, align 8
  store i8* %477, i8** %7, align 8
  br label %508

478:                                              ; preds = %467
  br label %506

479:                                              ; preds = %82
  %480 = load i8*, i8** %13, align 8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %489

482:                                              ; preds = %479
  %483 = load i8*, i8** %13, align 8
  %484 = call i32 @strcmp(i8* %483, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %482
  %487 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %488 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %487, i32 0, i32 3
  store i32 2, i32* %488, align 8
  br label %504

489:                                              ; preds = %482, %479
  %490 = load i8*, i8** %13, align 8
  %491 = icmp ne i8* %490, null
  br i1 %491, label %492, label %499

492:                                              ; preds = %489
  %493 = load i8*, i8** %13, align 8
  %494 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %492
  %497 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %498 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %497, i32 0, i32 3
  store i32 1, i32* %498, align 8
  br label %503

499:                                              ; preds = %492, %489
  %500 = load i8*, i8** @TRUE, align 8
  %501 = load %struct.stab_handle*, %struct.stab_handle** %14, align 8
  %502 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %501, i32 0, i32 8
  store i8* %500, i8** %502, align 8
  br label %503

503:                                              ; preds = %499, %496
  br label %504

504:                                              ; preds = %503, %486
  br label %506

505:                                              ; preds = %82, %82, %82, %82
  br label %506

506:                                              ; preds = %505, %504, %478, %379, %339, %331, %323, %302, %293, %284, %272, %261, %176, %139, %126, %93, %84
  %507 = load i8*, i8** @TRUE, align 8
  store i8* %507, i8** %7, align 8
  br label %508

508:                                              ; preds = %506, %476, %449, %371, %337, %329, %321, %300, %291, %282, %270, %226, %213, %171, %160, %145, %124, %117, %99, %46
  %509 = load i8*, i8** %7, align 8
  ret i8* %509
}

declare dso_local i32 @debug_set_filename(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @debug_start_block(i8*, i64) #1

declare dso_local i32 @stab_emit_pending_vars(i8*, %struct.stab_handle*) #1

declare dso_local i32 @debug_end_block(i8*, i64) #1

declare dso_local i32 @debug_end_function(i8*, i64) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @debug_start_source(i8*, i8*) #1

declare dso_local i32 @push_bincl(%struct.stab_handle*, i8*, i64) #1

declare dso_local i8* @pop_bincl(%struct.stab_handle*) #1

declare dso_local i32 @find_excl(%struct.stab_handle*, i8*, i64) #1

declare dso_local i32 @debug_record_line(i8*, i32, i64) #1

declare dso_local i32 @debug_start_common_block(i8*, i8*) #1

declare dso_local i32 @debug_end_common_block(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_stab_string(i8*, %struct.stab_handle*, i32, i32, i64, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
