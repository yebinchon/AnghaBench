; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_set_variable_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_set_variable_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_14__*, i8* }

@INSERT = common dso_local global i32 0, align 4
@var_pool = common dso_local global i32 0, align 4
@MAX_VAR_PARTS = common dso_local global i32 0, align 4
@loc_chain_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, i32, i8*)* @set_variable_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_variable_part(%struct.TYPE_15__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__**, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @VARIABLE_HASH_VAL(i32 %20)
  %22 = load i32, i32* @INSERT, align 4
  %23 = call i8** @htab_find_slot_with_hash(i32 %18, i32 %19, i32 %21, i32 %22)
  store i8** %23, i8*** %14, align 8
  %24 = load i8**, i8*** %14, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @var_pool, align 4
  %29 = call i8* @pool_alloc(i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %13, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store i8* %38, i8** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %55 = bitcast %struct.TYPE_13__* %54 to i8*
  %56 = load i8**, i8*** %14, align 8
  store i8* %55, i8** %56, align 8
  store i32 0, i32* %9, align 4
  br label %185

57:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  %58 = load i8**, i8*** %14, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %13, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @find_variable_location_part(%struct.TYPE_13__* %61, i8* %62, i32* %15)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %57
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %10, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = icmp ne %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %103

77:                                               ; preds = %66
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @REG_P(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i8*, i8** %6, align 8
  %85 = call i64 @REG_P(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @REGNO(i8* %90)
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @REGNO(i8* %92)
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %87, %83, %77
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @rtx_equal_p(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %87
  br label %293

103:                                              ; preds = %95, %66
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %111 = call %struct.TYPE_13__* @unshare_variable(%struct.TYPE_15__* %109, %struct.TYPE_13__* %110)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %13, align 8
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112
  br label %184

114:                                              ; preds = %57
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %122 = call %struct.TYPE_13__* @unshare_variable(%struct.TYPE_15__* %120, %struct.TYPE_13__* %121)
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %13, align 8
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MAX_VAR_PARTS, align 4
  %128 = icmp slt i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @gcc_assert(i32 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %154, %123
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %134
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %150
  %152 = bitcast %struct.TYPE_12__* %144 to i8*
  %153 = bitcast %struct.TYPE_12__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 24, i1 false)
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %9, align 4
  br label %134

157:                                              ; preds = %134
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load i8*, i8** %8, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  store i8* %162, i8** %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %176, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %157, %113
  br label %185

185:                                              ; preds = %184, %27
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  store %struct.TYPE_14__** %192, %struct.TYPE_14__*** %12, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  store %struct.TYPE_14__* %200, %struct.TYPE_14__** %10, align 8
  br label %201

201:                                              ; preds = %242, %185
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %203 = icmp ne %struct.TYPE_14__* %202, null
  br i1 %203, label %204, label %244

204:                                              ; preds = %201
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  store %struct.TYPE_14__* %207, %struct.TYPE_14__** %11, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @REG_P(i8* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %204
  %214 = load i8*, i8** %6, align 8
  %215 = call i64 @REG_P(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %213
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @REGNO(i8* %220)
  %222 = load i8*, i8** %6, align 8
  %223 = call i64 @REGNO(i8* %222)
  %224 = icmp eq i64 %221, %223
  br i1 %224, label %232, label %225

225:                                              ; preds = %217, %213, %204
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = call i64 @rtx_equal_p(i8* %228, i8* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225, %217
  %233 = load i32, i32* @loc_chain_pool, align 4
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %235 = call i32 @pool_free(i32 %233, %struct.TYPE_14__* %234)
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %237 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %236, %struct.TYPE_14__** %237, align 8
  br label %244

238:                                              ; preds = %225
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  store %struct.TYPE_14__** %240, %struct.TYPE_14__*** %12, align 8
  br label %241

241:                                              ; preds = %238
  br label %242

242:                                              ; preds = %241
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %243, %struct.TYPE_14__** %10, align 8
  br label %201

244:                                              ; preds = %232, %201
  %245 = load i32, i32* @loc_chain_pool, align 4
  %246 = call i8* @pool_alloc(i32 %245)
  %247 = bitcast i8* %246 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %247, %struct.TYPE_14__** %10, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  store i8* %248, i8** %250, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  store %struct.TYPE_14__* %258, %struct.TYPE_14__** %260, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  store %struct.TYPE_14__* %261, %struct.TYPE_14__** %268, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = icmp eq i32* %276, null
  br i1 %277, label %278, label %293

278:                                              ; preds = %244
  %279 = load i8*, i8** %6, align 8
  %280 = bitcast i8* %279 to i32*
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  store i32* %280, i32** %287, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @variable_was_changed(%struct.TYPE_13__* %288, i32 %291)
  br label %293

293:                                              ; preds = %102, %278, %244
  ret void
}

declare dso_local i8** @htab_find_slot_with_hash(i32, i32, i32, i32) #1

declare dso_local i32 @VARIABLE_HASH_VAL(i32) #1

declare dso_local i8* @pool_alloc(i32) #1

declare dso_local i32 @find_variable_location_part(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i64 @REG_P(i8*) #1

declare dso_local i64 @REGNO(i8*) #1

declare dso_local i64 @rtx_equal_p(i8*, i8*) #1

declare dso_local %struct.TYPE_13__* @unshare_variable(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @gcc_assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pool_free(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @variable_was_changed(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
