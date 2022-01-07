; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_rank_one_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_rank_one_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_TYPEDEF = common dso_local global i32 0, align 4
@REFERENCE_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@overload_debug = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"------ Arg is %s [%d], parm is %s [%d]\0A\00", align 1
@VOID_PTR_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@POINTER_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@INCOMPATIBLE_TYPE_BADNESS = common dso_local global i32 0, align 4
@INTEGER_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@INTEGER_PROMOTION_BADNESS = common dso_local global i32 0, align 4
@INT_FLOAT_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@NS_POINTER_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@BOOLEAN_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@FLOAT_PROMOTION_BADNESS = common dso_local global i32 0, align 4
@FLOAT_CONVERSION_BADNESS = common dso_local global i32 0, align 4
@BASE_CONVERSION_BADNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rank_one_type(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %6 = load %struct.type*, %struct.type** %4, align 8
  %7 = load %struct.type*, %struct.type** %5, align 8
  %8 = icmp eq %struct.type* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %418

10:                                               ; preds = %2
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  %13 = load i32, i32* @TYPE_CODE_TYPEDEF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = call %struct.type* @check_typedef(%struct.type* %16)
  store %struct.type* %17, %struct.type** %4, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call i32 @TYPE_CODE(%struct.type* %19)
  %21 = load i32, i32* @TYPE_CODE_TYPEDEF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = call %struct.type* @check_typedef(%struct.type* %24)
  store %struct.type* %25, %struct.type** %5, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.type*, %struct.type** %4, align 8
  %28 = call i8* @TYPE_NAME(%struct.type* %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.type*, %struct.type** %5, align 8
  %32 = call i8* @TYPE_NAME(%struct.type* %31)
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.type*, %struct.type** %4, align 8
  %36 = call i8* @TYPE_NAME(%struct.type* %35)
  %37 = load %struct.type*, %struct.type** %5, align 8
  %38 = call i8* @TYPE_NAME(%struct.type* %37)
  %39 = call i32 @strcmp(i8* %36, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %418

42:                                               ; preds = %34, %30, %26
  %43 = load %struct.type*, %struct.type** %4, align 8
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = icmp eq %struct.type* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %418

47:                                               ; preds = %42
  %48 = load %struct.type*, %struct.type** %5, align 8
  %49 = call i32 @TYPE_CODE(%struct.type* %48)
  %50 = icmp eq i32 %49, 132
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.type*, %struct.type** %4, align 8
  %53 = load %struct.type*, %struct.type** %5, align 8
  %54 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %53)
  %55 = call i32 @rank_one_type(%struct.type* %52, %struct.type* %54)
  %56 = load i32, i32* @REFERENCE_CONVERSION_BADNESS, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %3, align 4
  br label %418

58:                                               ; preds = %47
  %59 = load %struct.type*, %struct.type** %4, align 8
  %60 = call i32 @TYPE_CODE(%struct.type* %59)
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.type*, %struct.type** %4, align 8
  %64 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %63)
  %65 = load %struct.type*, %struct.type** %5, align 8
  %66 = call i32 @rank_one_type(%struct.type* %64, %struct.type* %65)
  %67 = load i32, i32* @REFERENCE_CONVERSION_BADNESS, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %3, align 4
  br label %418

69:                                               ; preds = %58
  %70 = load i64, i64* @overload_debug, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* @gdb_stderr, align 4
  %74 = load %struct.type*, %struct.type** %5, align 8
  %75 = call i8* @TYPE_NAME(%struct.type* %74)
  %76 = load %struct.type*, %struct.type** %5, align 8
  %77 = call i32 @TYPE_CODE(%struct.type* %76)
  %78 = load %struct.type*, %struct.type** %4, align 8
  %79 = call i8* @TYPE_NAME(%struct.type* %78)
  %80 = load %struct.type*, %struct.type** %4, align 8
  %81 = call i32 @TYPE_CODE(%struct.type* %80)
  %82 = call i32 @fprintf_filtered(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %75, i32 %77, i8* %79, i32 %81)
  br label %83

83:                                               ; preds = %72, %69
  %84 = load %struct.type*, %struct.type** %4, align 8
  %85 = call i32 @TYPE_CODE(%struct.type* %84)
  switch i32 %85, label %416 [
    i32 134, label %86
    i32 144, label %117
    i32 138, label %128
    i32 137, label %138
    i32 140, label %252
    i32 142, label %261
    i32 133, label %321
    i32 143, label %330
    i32 139, label %338
    i32 141, label %362
    i32 130, label %370
    i32 129, label %383
    i32 136, label %389
    i32 135, label %394
    i32 132, label %399
    i32 131, label %404
    i32 128, label %415
  ]

86:                                               ; preds = %83
  %87 = load %struct.type*, %struct.type** %5, align 8
  %88 = call i32 @TYPE_CODE(%struct.type* %87)
  switch i32 %88, label %115 [
    i32 134, label %89
    i32 144, label %102
    i32 138, label %108
    i32 137, label %113
    i32 140, label %113
    i32 142, label %113
    i32 133, label %113
    i32 143, label %113
  ]

89:                                               ; preds = %86
  %90 = load %struct.type*, %struct.type** %4, align 8
  %91 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %90)
  %92 = call i32 @TYPE_CODE(%struct.type* %91)
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @VOID_PTR_CONVERSION_BADNESS, align 4
  store i32 %95, i32* %3, align 4
  br label %418

96:                                               ; preds = %89
  %97 = load %struct.type*, %struct.type** %4, align 8
  %98 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %97)
  %99 = load %struct.type*, %struct.type** %5, align 8
  %100 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %99)
  %101 = call i32 @rank_one_type(%struct.type* %98, %struct.type* %100)
  store i32 %101, i32* %3, align 4
  br label %418

102:                                              ; preds = %86
  %103 = load %struct.type*, %struct.type** %4, align 8
  %104 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %103)
  %105 = load %struct.type*, %struct.type** %5, align 8
  %106 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %105)
  %107 = call i32 @rank_one_type(%struct.type* %104, %struct.type* %106)
  store i32 %107, i32* %3, align 4
  br label %418

108:                                              ; preds = %86
  %109 = load %struct.type*, %struct.type** %4, align 8
  %110 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %109)
  %111 = load %struct.type*, %struct.type** %5, align 8
  %112 = call i32 @rank_one_type(%struct.type* %110, %struct.type* %111)
  store i32 %112, i32* %3, align 4
  br label %418

113:                                              ; preds = %86, %86, %86, %86, %86
  %114 = load i32, i32* @POINTER_CONVERSION_BADNESS, align 4
  store i32 %114, i32* %3, align 4
  br label %418

115:                                              ; preds = %86
  %116 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %116, i32* %3, align 4
  br label %418

117:                                              ; preds = %83
  %118 = load %struct.type*, %struct.type** %5, align 8
  %119 = call i32 @TYPE_CODE(%struct.type* %118)
  switch i32 %119, label %126 [
    i32 134, label %120
    i32 144, label %120
  ]

120:                                              ; preds = %117, %117
  %121 = load %struct.type*, %struct.type** %4, align 8
  %122 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %121)
  %123 = load %struct.type*, %struct.type** %5, align 8
  %124 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %123)
  %125 = call i32 @rank_one_type(%struct.type* %122, %struct.type* %124)
  store i32 %125, i32* %3, align 4
  br label %418

126:                                              ; preds = %117
  %127 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %127, i32* %3, align 4
  br label %418

128:                                              ; preds = %83
  %129 = load %struct.type*, %struct.type** %5, align 8
  %130 = call i32 @TYPE_CODE(%struct.type* %129)
  switch i32 %130, label %136 [
    i32 134, label %131
  ]

131:                                              ; preds = %128
  %132 = load %struct.type*, %struct.type** %4, align 8
  %133 = load %struct.type*, %struct.type** %5, align 8
  %134 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %133)
  %135 = call i32 @rank_one_type(%struct.type* %132, %struct.type* %134)
  store i32 %135, i32* %3, align 4
  br label %418

136:                                              ; preds = %128
  %137 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %137, i32* %3, align 4
  br label %418

138:                                              ; preds = %83
  %139 = load %struct.type*, %struct.type** %5, align 8
  %140 = call i32 @TYPE_CODE(%struct.type* %139)
  switch i32 %140, label %250 [
    i32 137, label %141
    i32 140, label %244
    i32 142, label %244
    i32 133, label %244
    i32 143, label %244
    i32 139, label %246
    i32 134, label %248
  ]

141:                                              ; preds = %138
  %142 = load %struct.type*, %struct.type** %5, align 8
  %143 = call i32 @TYPE_LENGTH(%struct.type* %142)
  %144 = load %struct.type*, %struct.type** %4, align 8
  %145 = call i32 @TYPE_LENGTH(%struct.type* %144)
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %234

147:                                              ; preds = %141
  %148 = load %struct.type*, %struct.type** %4, align 8
  %149 = call i32 @TYPE_NOSIGN(%struct.type* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load %struct.type*, %struct.type** %5, align 8
  %153 = call i32 @TYPE_NOSIGN(%struct.type* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %418

156:                                              ; preds = %151
  %157 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %157, i32* %3, align 4
  br label %418

158:                                              ; preds = %147
  %159 = load %struct.type*, %struct.type** %4, align 8
  %160 = call i32 @TYPE_UNSIGNED(%struct.type* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %202

162:                                              ; preds = %158
  %163 = load %struct.type*, %struct.type** %5, align 8
  %164 = call i32 @TYPE_UNSIGNED(%struct.type* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %162
  %167 = load %struct.type*, %struct.type** %4, align 8
  %168 = call i8* @TYPE_NAME(%struct.type* %167)
  %169 = load %struct.type*, %struct.type** %5, align 8
  %170 = call i8* @TYPE_NAME(%struct.type* %169)
  %171 = call i32 @integer_types_same_name_p(i8* %168, i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %418

174:                                              ; preds = %166
  %175 = load %struct.type*, %struct.type** %5, align 8
  %176 = call i8* @TYPE_NAME(%struct.type* %175)
  %177 = call i32 @integer_types_same_name_p(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load %struct.type*, %struct.type** %4, align 8
  %181 = call i8* @TYPE_NAME(%struct.type* %180)
  %182 = call i32 @integer_types_same_name_p(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @INTEGER_PROMOTION_BADNESS, align 4
  store i32 %185, i32* %3, align 4
  br label %418

186:                                              ; preds = %179, %174
  %187 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %187, i32* %3, align 4
  br label %418

188:                                              ; preds = %162
  %189 = load %struct.type*, %struct.type** %5, align 8
  %190 = call i8* @TYPE_NAME(%struct.type* %189)
  %191 = call i32 @integer_types_same_name_p(i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.type*, %struct.type** %4, align 8
  %195 = call i8* @TYPE_NAME(%struct.type* %194)
  %196 = call i32 @integer_types_same_name_p(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %199, i32* %3, align 4
  br label %418

200:                                              ; preds = %193, %188
  %201 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %201, i32* %3, align 4
  br label %418

202:                                              ; preds = %158
  %203 = load %struct.type*, %struct.type** %5, align 8
  %204 = call i32 @TYPE_NOSIGN(%struct.type* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %232, label %206

206:                                              ; preds = %202
  %207 = load %struct.type*, %struct.type** %5, align 8
  %208 = call i32 @TYPE_UNSIGNED(%struct.type* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %232, label %210

210:                                              ; preds = %206
  %211 = load %struct.type*, %struct.type** %4, align 8
  %212 = call i8* @TYPE_NAME(%struct.type* %211)
  %213 = load %struct.type*, %struct.type** %5, align 8
  %214 = call i8* @TYPE_NAME(%struct.type* %213)
  %215 = call i32 @integer_types_same_name_p(i8* %212, i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  store i32 0, i32* %3, align 4
  br label %418

218:                                              ; preds = %210
  %219 = load %struct.type*, %struct.type** %5, align 8
  %220 = call i8* @TYPE_NAME(%struct.type* %219)
  %221 = call i32 @integer_types_same_name_p(i8* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = load %struct.type*, %struct.type** %4, align 8
  %225 = call i8* @TYPE_NAME(%struct.type* %224)
  %226 = call i32 @integer_types_same_name_p(i8* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* @INTEGER_PROMOTION_BADNESS, align 4
  store i32 %229, i32* %3, align 4
  br label %418

230:                                              ; preds = %223, %218
  %231 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %231, i32* %3, align 4
  br label %418

232:                                              ; preds = %206, %202
  %233 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %233, i32* %3, align 4
  br label %418

234:                                              ; preds = %141
  %235 = load %struct.type*, %struct.type** %5, align 8
  %236 = call i32 @TYPE_LENGTH(%struct.type* %235)
  %237 = load %struct.type*, %struct.type** %4, align 8
  %238 = call i32 @TYPE_LENGTH(%struct.type* %237)
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load i32, i32* @INTEGER_PROMOTION_BADNESS, align 4
  store i32 %241, i32* %3, align 4
  br label %418

242:                                              ; preds = %234
  %243 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %243, i32* %3, align 4
  br label %418

244:                                              ; preds = %138, %138, %138, %138
  %245 = load i32, i32* @INTEGER_PROMOTION_BADNESS, align 4
  store i32 %245, i32* %3, align 4
  br label %418

246:                                              ; preds = %138
  %247 = load i32, i32* @INT_FLOAT_CONVERSION_BADNESS, align 4
  store i32 %247, i32* %3, align 4
  br label %418

248:                                              ; preds = %138
  %249 = load i32, i32* @NS_POINTER_CONVERSION_BADNESS, align 4
  store i32 %249, i32* %3, align 4
  br label %418

250:                                              ; preds = %138
  %251 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %251, i32* %3, align 4
  br label %418

252:                                              ; preds = %83
  %253 = load %struct.type*, %struct.type** %5, align 8
  %254 = call i32 @TYPE_CODE(%struct.type* %253)
  switch i32 %254, label %259 [
    i32 137, label %255
    i32 142, label %255
    i32 133, label %255
    i32 143, label %255
    i32 140, label %255
    i32 139, label %257
  ]

255:                                              ; preds = %252, %252, %252, %252, %252
  %256 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %256, i32* %3, align 4
  br label %418

257:                                              ; preds = %252
  %258 = load i32, i32* @INT_FLOAT_CONVERSION_BADNESS, align 4
  store i32 %258, i32* %3, align 4
  br label %418

259:                                              ; preds = %252
  %260 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %260, i32* %3, align 4
  br label %418

261:                                              ; preds = %83
  %262 = load %struct.type*, %struct.type** %5, align 8
  %263 = call i32 @TYPE_CODE(%struct.type* %262)
  switch i32 %263, label %319 [
    i32 133, label %264
    i32 143, label %264
    i32 140, label %264
    i32 139, label %266
    i32 137, label %268
    i32 142, label %286
  ]

264:                                              ; preds = %261, %261, %261
  %265 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %265, i32* %3, align 4
  br label %418

266:                                              ; preds = %261
  %267 = load i32, i32* @INT_FLOAT_CONVERSION_BADNESS, align 4
  store i32 %267, i32* %3, align 4
  br label %418

268:                                              ; preds = %261
  %269 = load %struct.type*, %struct.type** %5, align 8
  %270 = call i32 @TYPE_LENGTH(%struct.type* %269)
  %271 = load %struct.type*, %struct.type** %4, align 8
  %272 = call i32 @TYPE_LENGTH(%struct.type* %271)
  %273 = icmp sgt i32 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %275, i32* %3, align 4
  br label %418

276:                                              ; preds = %268
  %277 = load %struct.type*, %struct.type** %5, align 8
  %278 = call i32 @TYPE_LENGTH(%struct.type* %277)
  %279 = load %struct.type*, %struct.type** %4, align 8
  %280 = call i32 @TYPE_LENGTH(%struct.type* %279)
  %281 = icmp slt i32 %278, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @INTEGER_PROMOTION_BADNESS, align 4
  store i32 %283, i32* %3, align 4
  br label %418

284:                                              ; preds = %276
  br label %285

285:                                              ; preds = %284
  br label %286

286:                                              ; preds = %261, %285
  %287 = load %struct.type*, %struct.type** %4, align 8
  %288 = call i32 @TYPE_NOSIGN(%struct.type* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load %struct.type*, %struct.type** %5, align 8
  %292 = call i32 @TYPE_NOSIGN(%struct.type* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i32 0, i32* %3, align 4
  br label %418

295:                                              ; preds = %290
  %296 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %296, i32* %3, align 4
  br label %418

297:                                              ; preds = %286
  %298 = load %struct.type*, %struct.type** %4, align 8
  %299 = call i32 @TYPE_UNSIGNED(%struct.type* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %297
  %302 = load %struct.type*, %struct.type** %5, align 8
  %303 = call i32 @TYPE_UNSIGNED(%struct.type* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store i32 0, i32* %3, align 4
  br label %418

306:                                              ; preds = %301
  %307 = load i32, i32* @INTEGER_PROMOTION_BADNESS, align 4
  store i32 %307, i32* %3, align 4
  br label %418

308:                                              ; preds = %297
  %309 = load %struct.type*, %struct.type** %5, align 8
  %310 = call i32 @TYPE_NOSIGN(%struct.type* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %308
  %313 = load %struct.type*, %struct.type** %5, align 8
  %314 = call i32 @TYPE_UNSIGNED(%struct.type* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %312
  store i32 0, i32* %3, align 4
  br label %418

317:                                              ; preds = %312, %308
  %318 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %318, i32* %3, align 4
  br label %418

319:                                              ; preds = %261
  %320 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %320, i32* %3, align 4
  br label %418

321:                                              ; preds = %83
  %322 = load %struct.type*, %struct.type** %5, align 8
  %323 = call i32 @TYPE_CODE(%struct.type* %322)
  switch i32 %323, label %328 [
    i32 137, label %324
    i32 142, label %324
    i32 133, label %324
    i32 143, label %324
    i32 140, label %324
    i32 139, label %326
  ]

324:                                              ; preds = %321, %321, %321, %321, %321
  %325 = load i32, i32* @INTEGER_CONVERSION_BADNESS, align 4
  store i32 %325, i32* %3, align 4
  br label %418

326:                                              ; preds = %321
  %327 = load i32, i32* @INT_FLOAT_CONVERSION_BADNESS, align 4
  store i32 %327, i32* %3, align 4
  br label %418

328:                                              ; preds = %321
  %329 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %329, i32* %3, align 4
  br label %418

330:                                              ; preds = %83
  %331 = load %struct.type*, %struct.type** %5, align 8
  %332 = call i32 @TYPE_CODE(%struct.type* %331)
  switch i32 %332, label %336 [
    i32 137, label %333
    i32 142, label %333
    i32 133, label %333
    i32 140, label %333
    i32 139, label %333
    i32 134, label %333
    i32 143, label %335
  ]

333:                                              ; preds = %330, %330, %330, %330, %330, %330
  %334 = load i32, i32* @BOOLEAN_CONVERSION_BADNESS, align 4
  store i32 %334, i32* %3, align 4
  br label %418

335:                                              ; preds = %330
  store i32 0, i32* %3, align 4
  br label %418

336:                                              ; preds = %330
  %337 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %337, i32* %3, align 4
  br label %418

338:                                              ; preds = %83
  %339 = load %struct.type*, %struct.type** %5, align 8
  %340 = call i32 @TYPE_CODE(%struct.type* %339)
  switch i32 %340, label %360 [
    i32 139, label %341
    i32 137, label %358
    i32 143, label %358
    i32 140, label %358
    i32 133, label %358
    i32 142, label %358
  ]

341:                                              ; preds = %338
  %342 = load %struct.type*, %struct.type** %5, align 8
  %343 = call i32 @TYPE_LENGTH(%struct.type* %342)
  %344 = load %struct.type*, %struct.type** %4, align 8
  %345 = call i32 @TYPE_LENGTH(%struct.type* %344)
  %346 = icmp slt i32 %343, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %341
  %348 = load i32, i32* @FLOAT_PROMOTION_BADNESS, align 4
  store i32 %348, i32* %3, align 4
  br label %418

349:                                              ; preds = %341
  %350 = load %struct.type*, %struct.type** %5, align 8
  %351 = call i32 @TYPE_LENGTH(%struct.type* %350)
  %352 = load %struct.type*, %struct.type** %4, align 8
  %353 = call i32 @TYPE_LENGTH(%struct.type* %352)
  %354 = icmp eq i32 %351, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  store i32 0, i32* %3, align 4
  br label %418

356:                                              ; preds = %349
  %357 = load i32, i32* @FLOAT_CONVERSION_BADNESS, align 4
  store i32 %357, i32* %3, align 4
  br label %418

358:                                              ; preds = %338, %338, %338, %338, %338
  %359 = load i32, i32* @INT_FLOAT_CONVERSION_BADNESS, align 4
  store i32 %359, i32* %3, align 4
  br label %418

360:                                              ; preds = %338
  %361 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %361, i32* %3, align 4
  br label %418

362:                                              ; preds = %83
  %363 = load %struct.type*, %struct.type** %5, align 8
  %364 = call i32 @TYPE_CODE(%struct.type* %363)
  switch i32 %364, label %368 [
    i32 139, label %365
    i32 141, label %367
  ]

365:                                              ; preds = %362
  %366 = load i32, i32* @FLOAT_PROMOTION_BADNESS, align 4
  store i32 %366, i32* %3, align 4
  br label %418

367:                                              ; preds = %362
  store i32 0, i32* %3, align 4
  br label %418

368:                                              ; preds = %362
  %369 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %369, i32* %3, align 4
  br label %418

370:                                              ; preds = %83
  %371 = load %struct.type*, %struct.type** %5, align 8
  %372 = call i32 @TYPE_CODE(%struct.type* %371)
  switch i32 %372, label %381 [
    i32 130, label %373
  ]

373:                                              ; preds = %370
  %374 = load %struct.type*, %struct.type** %4, align 8
  %375 = load %struct.type*, %struct.type** %5, align 8
  %376 = call i32 @is_ancestor(%struct.type* %374, %struct.type* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = load i32, i32* @BASE_CONVERSION_BADNESS, align 4
  store i32 %379, i32* %3, align 4
  br label %418

380:                                              ; preds = %373
  br label %381

381:                                              ; preds = %370, %380
  %382 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %382, i32* %3, align 4
  br label %418

383:                                              ; preds = %83
  %384 = load %struct.type*, %struct.type** %5, align 8
  %385 = call i32 @TYPE_CODE(%struct.type* %384)
  switch i32 %385, label %387 [
    i32 129, label %386
  ]

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %383, %386
  %388 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %388, i32* %3, align 4
  br label %418

389:                                              ; preds = %83
  %390 = load %struct.type*, %struct.type** %5, align 8
  %391 = call i32 @TYPE_CODE(%struct.type* %390)
  switch i32 %391, label %392 [
  ]

392:                                              ; preds = %389
  %393 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %393, i32* %3, align 4
  br label %418

394:                                              ; preds = %83
  %395 = load %struct.type*, %struct.type** %5, align 8
  %396 = call i32 @TYPE_CODE(%struct.type* %395)
  switch i32 %396, label %397 [
  ]

397:                                              ; preds = %394
  %398 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %398, i32* %3, align 4
  br label %418

399:                                              ; preds = %83
  %400 = load %struct.type*, %struct.type** %5, align 8
  %401 = call i32 @TYPE_CODE(%struct.type* %400)
  switch i32 %401, label %402 [
  ]

402:                                              ; preds = %399
  %403 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %403, i32* %3, align 4
  br label %418

404:                                              ; preds = %83
  %405 = load %struct.type*, %struct.type** %5, align 8
  %406 = call i32 @TYPE_CODE(%struct.type* %405)
  switch i32 %406, label %413 [
    i32 131, label %407
  ]

407:                                              ; preds = %404
  %408 = load %struct.type*, %struct.type** %4, align 8
  %409 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %408, i32 0)
  %410 = load %struct.type*, %struct.type** %5, align 8
  %411 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %410, i32 0)
  %412 = call i32 @rank_one_type(%struct.type* %409, %struct.type* %411)
  store i32 %412, i32* %3, align 4
  br label %418

413:                                              ; preds = %404
  %414 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %414, i32* %3, align 4
  br label %418

415:                                              ; preds = %83
  br label %416

416:                                              ; preds = %83, %415
  %417 = load i32, i32* @INCOMPATIBLE_TYPE_BADNESS, align 4
  store i32 %417, i32* %3, align 4
  br label %418

418:                                              ; preds = %416, %413, %407, %402, %397, %392, %387, %381, %378, %368, %367, %365, %360, %358, %356, %355, %347, %336, %335, %333, %328, %326, %324, %319, %317, %316, %306, %305, %295, %294, %282, %274, %266, %264, %259, %257, %255, %250, %248, %246, %244, %242, %240, %232, %230, %228, %217, %200, %198, %186, %184, %173, %156, %155, %136, %131, %126, %120, %115, %113, %108, %102, %96, %94, %62, %51, %46, %41, %9
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_NOSIGN(%struct.type*) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @integer_types_same_name_p(i8*, i8*) #1

declare dso_local i32 @is_ancestor(%struct.type*, %struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
