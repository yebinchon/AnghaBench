; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_type_lists_compatible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_type_lists_compatible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @type_lists_compatible_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_lists_compatible_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %2, %241
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %246

24:                                               ; preds = %19, %16
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %246

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_VALUE(i64 %32)
  store i64 %33, i64* %8, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_VALUE(i64 %34)
  store i64 %35, i64* %10, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @error_mark_node, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @ARRAY_TYPE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @TYPE_MAIN_VARIANT(i64 %48)
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %42, %38, %31
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @error_mark_node, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @ARRAY_TYPE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @TYPE_MAIN_VARIANT(i64 %63)
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %62, %57, %53, %50
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @c_type_promotes_to(i64 %69)
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %246

74:                                               ; preds = %68
  br label %235

75:                                               ; preds = %65
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @c_type_promotes_to(i64 %79)
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %246

84:                                               ; preds = %78
  br label %234

85:                                               ; preds = %75
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @ERROR_MARK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @ERROR_MARK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %85
  br label %233

96:                                               ; preds = %90
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @comptypes_internal(i64 %97, i64 %98)
  store i32 %99, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %232, label %101

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @TREE_CODE(i64 %102)
  %104 = load i64, i64* @UNION_TYPE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %165

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @TYPE_NAME(i64 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @TYPE_TRANSPARENT_UNION(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %165

114:                                              ; preds = %110, %106
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @TYPE_SIZE(i64 %115)
  %117 = call i64 @TREE_CODE(i64 %116)
  %118 = load i64, i64* @INTEGER_CST, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %114
  %121 = load i64, i64* %8, align 8
  %122 = call i64 @TYPE_SIZE(i64 %121)
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @TYPE_SIZE(i64 %123)
  %125 = call i64 @tree_int_cst_equal(i64 %122, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %120
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @TYPE_FIELDS(i64 %128)
  store i64 %129, i64* %12, align 8
  br label %130

130:                                              ; preds = %157, %127
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = load i64, i64* %12, align 8
  %135 = call i64 @TREE_TYPE(i64 %134)
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %13, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* @error_mark_node, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i64, i64* %13, align 8
  %144 = call i64 @TREE_CODE(i64 %143)
  %145 = load i64, i64* @ARRAY_TYPE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i64, i64* %13, align 8
  %149 = call i64 @TYPE_MAIN_VARIANT(i64 %148)
  store i64 %149, i64* %13, align 8
  br label %150

150:                                              ; preds = %147, %142, %138, %133
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @comptypes_internal(i64 %151, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %160

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %12, align 8
  %159 = call i64 @TREE_CHAIN(i64 %158)
  store i64 %159, i64* %12, align 8
  br label %130

160:                                              ; preds = %155, %130
  %161 = load i64, i64* %12, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %246

164:                                              ; preds = %160
  br label %231

165:                                              ; preds = %120, %114, %110, %101
  %166 = load i64, i64* %10, align 8
  %167 = call i64 @TREE_CODE(i64 %166)
  %168 = load i64, i64* @UNION_TYPE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %229

170:                                              ; preds = %165
  %171 = load i64, i64* %10, align 8
  %172 = call i64 @TYPE_NAME(i64 %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i64, i64* %10, align 8
  %176 = call i64 @TYPE_TRANSPARENT_UNION(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %229

178:                                              ; preds = %174, %170
  %179 = load i64, i64* %10, align 8
  %180 = call i64 @TYPE_SIZE(i64 %179)
  %181 = call i64 @TREE_CODE(i64 %180)
  %182 = load i64, i64* @INTEGER_CST, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %229

184:                                              ; preds = %178
  %185 = load i64, i64* %10, align 8
  %186 = call i64 @TYPE_SIZE(i64 %185)
  %187 = load i64, i64* %8, align 8
  %188 = call i64 @TYPE_SIZE(i64 %187)
  %189 = call i64 @tree_int_cst_equal(i64 %186, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %229

191:                                              ; preds = %184
  %192 = load i64, i64* %10, align 8
  %193 = call i64 @TYPE_FIELDS(i64 %192)
  store i64 %193, i64* %14, align 8
  br label %194

194:                                              ; preds = %221, %191
  %195 = load i64, i64* %14, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %224

197:                                              ; preds = %194
  %198 = load i64, i64* %14, align 8
  %199 = call i64 @TREE_TYPE(i64 %198)
  store i64 %199, i64* %15, align 8
  %200 = load i64, i64* %15, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load i64, i64* %15, align 8
  %204 = load i64, i64* @error_mark_node, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load i64, i64* %15, align 8
  %208 = call i64 @TREE_CODE(i64 %207)
  %209 = load i64, i64* @ARRAY_TYPE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i64, i64* %15, align 8
  %213 = call i64 @TYPE_MAIN_VARIANT(i64 %212)
  store i64 %213, i64* %15, align 8
  br label %214

214:                                              ; preds = %211, %206, %202, %197
  %215 = load i64, i64* %15, align 8
  %216 = load i64, i64* %9, align 8
  %217 = call i32 @comptypes_internal(i64 %215, i64 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %224

220:                                              ; preds = %214
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %14, align 8
  %223 = call i64 @TREE_CHAIN(i64 %222)
  store i64 %223, i64* %14, align 8
  br label %194

224:                                              ; preds = %219, %194
  %225 = load i64, i64* %14, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %246

228:                                              ; preds = %224
  br label %230

229:                                              ; preds = %184, %178, %174, %165
  store i32 0, i32* %3, align 4
  br label %246

230:                                              ; preds = %228
  br label %231

231:                                              ; preds = %230, %164
  br label %232

232:                                              ; preds = %231, %96
  br label %233

233:                                              ; preds = %232, %95
  br label %234

234:                                              ; preds = %233, %84
  br label %235

235:                                              ; preds = %234, %74
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %239, %235
  %242 = load i64, i64* %4, align 8
  %243 = call i64 @TREE_CHAIN(i64 %242)
  store i64 %243, i64* %4, align 8
  %244 = load i64, i64* %5, align 8
  %245 = call i64 @TREE_CHAIN(i64 %244)
  store i64 %245, i64* %5, align 8
  br label %16

246:                                              ; preds = %229, %227, %163, %83, %73, %30, %22
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @c_type_promotes_to(i64) #1

declare dso_local i32 @comptypes_internal(i64, i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @TYPE_TRANSPARENT_UNION(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
