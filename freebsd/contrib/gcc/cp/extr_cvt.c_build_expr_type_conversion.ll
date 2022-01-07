; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_build_expr_type_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_build_expr_type_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@null_node = common dso_local global i64 0, align 8
@WANT_INT = common dso_local global i32 0, align 4
@WANT_NULL = common dso_local global i32 0, align 4
@OPT_Wconversion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"converting NULL to non-pointer type\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@WANT_ENUM = common dso_local global i32 0, align 4
@WANT_FLOAT = common dso_local global i32 0, align 4
@WANT_POINTER = common dso_local global i32 0, align 4
@WANT_VECTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ambiguous default type conversion from %qT\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"  candidate conversions include %qD and %qD\00", align 1
@LOOKUP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_expr_type_conversion(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TREE_TYPE(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @null_node, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @WANT_INT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @WANT_NULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @OPT_Wconversion, align 4
  %34 = call i32 @warning(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27, %22, %3
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @TREE_TYPE(i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @error_mark_node, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @error_mark_node, align 8
  store i64 %42, i64* %4, align 8
  br label %281

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @IS_AGGR_TYPE(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %166, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @TREE_CODE(i64 %48)
  switch i32 %49, label %164 [
    i32 131, label %50
    i32 134, label %62
    i32 133, label %73
    i32 129, label %84
    i32 130, label %95
    i32 132, label %106
    i32 135, label %106
    i32 128, label %118
  ]

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @WANT_NULL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @null_ptr_cst_p(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %4, align 8
  br label %281

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %47, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @WANT_INT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* %6, align 8
  br label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @NULL_TREE, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  store i64 %72, i64* %4, align 8
  br label %281

73:                                               ; preds = %47
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @WANT_ENUM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* %6, align 8
  br label %82

80:                                               ; preds = %73
  %81 = load i64, i64* @NULL_TREE, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  store i64 %83, i64* %4, align 8
  br label %281

84:                                               ; preds = %47
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @WANT_FLOAT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i64, i64* %6, align 8
  br label %93

91:                                               ; preds = %84
  %92 = load i64, i64* @NULL_TREE, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  store i64 %94, i64* %4, align 8
  br label %281

95:                                               ; preds = %47
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @WANT_POINTER, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* %6, align 8
  br label %104

102:                                              ; preds = %95
  %103 = load i64, i64* @NULL_TREE, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i64 [ %101, %100 ], [ %103, %102 ]
  store i64 %105, i64* %4, align 8
  br label %281

106:                                              ; preds = %47, %47
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @WANT_POINTER, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i64, i64* %6, align 8
  %113 = call i64 @decay_conversion(i64 %112)
  br label %116

114:                                              ; preds = %106
  %115 = load i64, i64* @NULL_TREE, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i64 [ %113, %111 ], [ %115, %114 ]
  store i64 %117, i64* %4, align 8
  br label %281

118:                                              ; preds = %47
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @WANT_VECTOR, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i64, i64* @NULL_TREE, align 8
  store i64 %124, i64* %4, align 8
  br label %281

125:                                              ; preds = %118
  %126 = load i64, i64* %8, align 8
  %127 = call i64 @TREE_TYPE(i64 %126)
  %128 = call i32 @TREE_CODE(i64 %127)
  switch i32 %128, label %162 [
    i32 131, label %129
    i32 134, label %129
    i32 133, label %140
    i32 129, label %151
  ]

129:                                              ; preds = %125, %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @WANT_INT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i64, i64* %6, align 8
  br label %138

136:                                              ; preds = %129
  %137 = load i64, i64* @NULL_TREE, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %135, %134 ], [ %137, %136 ]
  store i64 %139, i64* %4, align 8
  br label %281

140:                                              ; preds = %125
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @WANT_ENUM, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i64, i64* %6, align 8
  br label %149

147:                                              ; preds = %140
  %148 = load i64, i64* @NULL_TREE, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %146, %145 ], [ %148, %147 ]
  store i64 %150, i64* %4, align 8
  br label %281

151:                                              ; preds = %125
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @WANT_FLOAT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i64, i64* %6, align 8
  br label %160

158:                                              ; preds = %151
  %159 = load i64, i64* @NULL_TREE, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i64 [ %157, %156 ], [ %159, %158 ]
  store i64 %161, i64* %4, align 8
  br label %281

162:                                              ; preds = %125
  %163 = load i64, i64* @NULL_TREE, align 8
  store i64 %163, i64* %4, align 8
  br label %281

164:                                              ; preds = %47
  %165 = load i64, i64* @NULL_TREE, align 8
  store i64 %165, i64* %4, align 8
  br label %281

166:                                              ; preds = %43
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* %6, align 8
  %169 = call i32 @complete_type_or_else(i64 %167, i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = load i64, i64* @error_mark_node, align 8
  store i64 %172, i64* %4, align 8
  br label %281

173:                                              ; preds = %166
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @TYPE_HAS_CONVERSION(i64 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* @NULL_TREE, align 8
  store i64 %178, i64* %4, align 8
  br label %281

179:                                              ; preds = %173
  %180 = load i64, i64* %8, align 8
  %181 = call i64 @lookup_conversions(i64 %180)
  store i64 %181, i64* %9, align 8
  br label %182

182:                                              ; preds = %264, %179
  %183 = load i64, i64* %9, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %267

185:                                              ; preds = %182
  store i32 0, i32* %11, align 4
  %186 = load i64, i64* %9, align 8
  %187 = call i64 @TREE_VALUE(i64 %186)
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* %10, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %13, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %264

195:                                              ; preds = %190, %185
  %196 = load i64, i64* %13, align 8
  %197 = call i64 @TREE_TYPE(i64 %196)
  %198 = call i64 @TREE_TYPE(i64 %197)
  %199 = call i64 @non_reference(i64 %198)
  store i64 %199, i64* %12, align 8
  %200 = load i64, i64* %12, align 8
  %201 = call i32 @TREE_CODE(i64 %200)
  switch i32 %201, label %242 [
    i32 134, label %202
    i32 131, label %202
    i32 133, label %206
    i32 129, label %210
    i32 130, label %214
    i32 128, label %218
  ]

202:                                              ; preds = %195, %195
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @WANT_INT, align 4
  %205 = and i32 %203, %204
  store i32 %205, i32* %11, align 4
  br label %243

206:                                              ; preds = %195
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @WANT_ENUM, align 4
  %209 = and i32 %207, %208
  store i32 %209, i32* %11, align 4
  br label %243

210:                                              ; preds = %195
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @WANT_FLOAT, align 4
  %213 = and i32 %211, %212
  store i32 %213, i32* %11, align 4
  br label %243

214:                                              ; preds = %195
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @WANT_POINTER, align 4
  %217 = and i32 %215, %216
  store i32 %217, i32* %11, align 4
  br label %243

218:                                              ; preds = %195
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @WANT_VECTOR, align 4
  %221 = and i32 %219, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %243

224:                                              ; preds = %218
  %225 = load i64, i64* %12, align 8
  %226 = call i64 @TREE_TYPE(i64 %225)
  %227 = call i32 @TREE_CODE(i64 %226)
  switch i32 %227, label %240 [
    i32 134, label %228
    i32 131, label %228
    i32 133, label %232
    i32 129, label %236
  ]

228:                                              ; preds = %224, %224
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @WANT_INT, align 4
  %231 = and i32 %229, %230
  store i32 %231, i32* %11, align 4
  br label %241

232:                                              ; preds = %224
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @WANT_ENUM, align 4
  %235 = and i32 %233, %234
  store i32 %235, i32* %11, align 4
  br label %241

236:                                              ; preds = %224
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* @WANT_FLOAT, align 4
  %239 = and i32 %237, %238
  store i32 %239, i32* %11, align 4
  br label %241

240:                                              ; preds = %224
  br label %241

241:                                              ; preds = %240, %236, %232, %228
  br label %243

242:                                              ; preds = %195
  br label %243

243:                                              ; preds = %242, %241, %223, %214, %210, %206, %202
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %243
  %247 = load i64, i64* %10, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %246
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i64, i64* %8, align 8
  %254 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %253)
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* %13, align 8
  %257 = call i32 (i8*, i64, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %255, i64 %256)
  br label %258

258:                                              ; preds = %252, %249
  %259 = load i64, i64* @error_mark_node, align 8
  store i64 %259, i64* %4, align 8
  br label %281

260:                                              ; preds = %246
  %261 = load i64, i64* %13, align 8
  store i64 %261, i64* %10, align 8
  br label %262

262:                                              ; preds = %260
  br label %263

263:                                              ; preds = %262, %243
  br label %264

264:                                              ; preds = %263, %194
  %265 = load i64, i64* %9, align 8
  %266 = call i64 @TREE_CHAIN(i64 %265)
  store i64 %266, i64* %9, align 8
  br label %182

267:                                              ; preds = %182
  %268 = load i64, i64* %10, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load i64, i64* %10, align 8
  %272 = call i64 @TREE_TYPE(i64 %271)
  %273 = call i64 @TREE_TYPE(i64 %272)
  %274 = call i64 @non_reference(i64 %273)
  store i64 %274, i64* %14, align 8
  %275 = load i64, i64* %14, align 8
  %276 = load i64, i64* %6, align 8
  %277 = load i32, i32* @LOOKUP_NORMAL, align 4
  %278 = call i64 @build_user_type_conversion(i64 %275, i64 %276, i32 %277)
  store i64 %278, i64* %4, align 8
  br label %281

279:                                              ; preds = %267
  %280 = load i64, i64* @NULL_TREE, align 8
  store i64 %280, i64* %4, align 8
  br label %281

281:                                              ; preds = %279, %270, %258, %177, %171, %164, %162, %160, %149, %138, %123, %116, %104, %93, %82, %71, %59, %41
  %282 = load i64, i64* %4, align 8
  ret i64 %282
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @IS_AGGR_TYPE(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @null_ptr_cst_p(i64) #1

declare dso_local i64 @decay_conversion(i64) #1

declare dso_local i32 @complete_type_or_else(i64, i64) #1

declare dso_local i32 @TYPE_HAS_CONVERSION(i64) #1

declare dso_local i64 @lookup_conversions(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i32 @error(i8*, i64, ...) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_user_type_conversion(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
