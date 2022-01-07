; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_type_unification_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_type_unification_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TREE_VEC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@UNIFY_ALLOW_OUTER_LEVEL = common dso_local global i32 0, align 4
@UNIFY_ALLOW_MORE_CV_QUAL = common dso_local global i32 0, align 4
@UNIFY_ALLOW_DERIVED = common dso_local global i32 0, align 4
@UNIFY_ALLOW_LESS_CV_QUAL = common dso_local global i32 0, align 4
@UNIFY_ALLOW_NONE = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@unknown_type_node = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32, i32, i32)* @type_unification_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_unification_real(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @TREE_VEC_LENGTH(i64 %27)
  store i32 %28, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @TREE_VEC, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @NULL_TREE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %7
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @TREE_LIST, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %38, %7
  %44 = phi i1 [ true, %7 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @gcc_assert(i32 %45)
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @TREE_LIST, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi i1 [ true, %43 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @gcc_assert(i32 %56)
  %58 = load i32, i32* %19, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @gcc_assert(i32 %60)
  %62 = load i32, i32* %14, align 4
  switch i32 %62, label %73 [
    i32 130, label %63
    i32 129, label %69
    i32 128, label %71
  ]

63:                                               ; preds = %54
  %64 = load i32, i32* @UNIFY_ALLOW_OUTER_LEVEL, align 4
  %65 = load i32, i32* @UNIFY_ALLOW_MORE_CV_QUAL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @UNIFY_ALLOW_DERIVED, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %20, align 4
  br label %75

69:                                               ; preds = %54
  %70 = load i32, i32* @UNIFY_ALLOW_LESS_CV_QUAL, align 4
  store i32 %70, i32* %20, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load i32, i32* @UNIFY_ALLOW_NONE, align 4
  store i32 %72, i32* %20, align 4
  br label %75

73:                                               ; preds = %54
  %74 = call i32 (...) @gcc_unreachable()
  br label %75

75:                                               ; preds = %73, %71, %69, %63
  br label %76

76:                                               ; preds = %267, %75
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %22, align 8
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %23, align 8
  br label %79

79:                                               ; preds = %203, %175, %150, %131, %112, %76
  %80 = load i64, i64* %22, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* @void_list_node, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* %23, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* @void_list_node, align 8
  %92 = icmp ne i64 %90, %91
  br label %93

93:                                               ; preds = %89, %86, %82, %79
  %94 = phi i1 [ false, %86 ], [ false, %82 ], [ false, %79 ], [ %92, %89 ]
  br i1 %94, label %95, label %204

95:                                               ; preds = %93
  %96 = load i64, i64* %22, align 8
  %97 = call i64 @TREE_VALUE(i64 %96)
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %22, align 8
  %99 = call i64 @TREE_CHAIN(i64 %98)
  store i64 %99, i64* %22, align 8
  %100 = load i64, i64* %23, align 8
  %101 = call i64 @TREE_VALUE(i64 %100)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %23, align 8
  %103 = call i64 @TREE_CHAIN(i64 %102)
  store i64 %103, i64* %23, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* @error_mark_node, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i32 1, i32* %8, align 4
  br label %275

108:                                              ; preds = %95
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* @unknown_type_node, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %79

113:                                              ; preds = %108
  %114 = load i64, i64* %16, align 8
  %115 = call i64 @uses_template_parms(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %152, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %17, align 8
  %119 = call i64 @TYPE_P(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %17, align 8
  %123 = call i64 @TREE_TYPE(i64 %122)
  store i64 %123, i64* %24, align 8
  br label %126

124:                                              ; preds = %117
  %125 = load i64, i64* %17, align 8
  store i64 %125, i64* %24, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %24, align 8
  %129 = call i64 @same_type_p(i64 %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %79

132:                                              ; preds = %126
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 128
  br i1 %134, label %135, label %151

135:                                              ; preds = %132
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %24, align 8
  %138 = load i64, i64* %17, align 8
  %139 = call i64 @TYPE_P(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i64, i64* @NULL_TREE, align 8
  br label %145

143:                                              ; preds = %135
  %144 = load i64, i64* %17, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i64 [ %142, %141 ], [ %144, %143 ]
  %147 = load i32, i32* %15, align 4
  %148 = call i64 @can_convert_arg(i64 %136, i64 %137, i64 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %79

151:                                              ; preds = %145, %132
  store i32 1, i32* %8, align 4
  br label %275

152:                                              ; preds = %113
  %153 = load i64, i64* %17, align 8
  %154 = call i64 @TYPE_P(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %185, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %17, align 8
  %158 = call i64 @TREE_TYPE(i64 %157)
  %159 = load i64, i64* @NULL_TREE, align 8
  %160 = icmp ne i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @gcc_assert(i32 %161)
  %163 = load i64, i64* %17, align 8
  %164 = call i64 @type_unknown_p(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %156
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %20, align 4
  %173 = call i64 @resolve_overloaded_unification(i64 %167, i64 %168, i64 %169, i64 %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %79

176:                                              ; preds = %166
  store i32 1, i32* %8, align 4
  br label %275

177:                                              ; preds = %156
  %178 = load i64, i64* %17, align 8
  %179 = call i64 @unlowered_expr_type(i64 %178)
  store i64 %179, i64* %17, align 8
  %180 = load i64, i64* %17, align 8
  %181 = load i64, i64* @error_mark_node, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 1, i32* %8, align 4
  br label %275

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %152
  %186 = load i32, i32* %20, align 4
  store i32 %186, i32* %25, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @maybe_adjust_types_for_deduction(i32 %190, i64* %16, i64* %17)
  %192 = load i32, i32* %25, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %25, align 4
  br label %194

194:                                              ; preds = %189, %185
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %16, align 8
  %198 = load i64, i64* %17, align 8
  %199 = load i32, i32* %25, align 4
  %200 = call i64 @unify(i64 %195, i64 %196, i64 %197, i64 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 1, i32* %8, align 4
  br label %275

203:                                              ; preds = %194
  br label %79

204:                                              ; preds = %93
  %205 = load i64, i64* %23, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i64, i64* %23, align 8
  %209 = load i64, i64* @void_list_node, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i64, i64* %22, align 8
  %213 = load i64, i64* @void_list_node, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 1, i32* %8, align 4
  br label %275

216:                                              ; preds = %211, %207, %204
  %217 = load i64, i64* %22, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load i64, i64* %22, align 8
  %221 = load i64, i64* @void_list_node, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i64, i64* %22, align 8
  %225 = call i64 @TREE_PURPOSE(i64 %224)
  %226 = load i64, i64* @NULL_TREE, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 1, i32* %8, align 4
  br label %275

229:                                              ; preds = %223, %219, %216
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %274, label %232

232:                                              ; preds = %229
  store i32 0, i32* %18, align 4
  br label %233

233:                                              ; preds = %270, %232
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %273

237:                                              ; preds = %233
  %238 = load i64, i64* %10, align 8
  %239 = load i32, i32* %18, align 4
  %240 = call i64 @TREE_VEC_ELT(i64 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %269, label %242

242:                                              ; preds = %237
  %243 = load i64, i64* %9, align 8
  %244 = load i32, i32* %18, align 4
  %245 = call i64 @TREE_VEC_ELT(i64 %243, i32 %244)
  %246 = load i64, i64* @error_mark_node, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %270

249:                                              ; preds = %242
  %250 = load i64, i64* %9, align 8
  %251 = load i32, i32* %18, align 4
  %252 = call i64 @TREE_VEC_ELT(i64 %250, i32 %251)
  %253 = call i64 @TREE_VALUE(i64 %252)
  store i64 %253, i64* %26, align 8
  %254 = load i64, i64* %26, align 8
  %255 = call i64 @TREE_CODE(i64 %254)
  %256 = load i64, i64* @PARM_DECL, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %268

258:                                              ; preds = %249
  %259 = load i64, i64* %26, align 8
  %260 = call i64 @TREE_TYPE(i64 %259)
  %261 = call i64 @uses_template_parms(i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32, i32* %21, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %21, align 4
  %266 = icmp ne i32 %264, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  br label %76

268:                                              ; preds = %263, %258, %249
  store i32 2, i32* %8, align 4
  br label %275

269:                                              ; preds = %237
  br label %270

270:                                              ; preds = %269, %248
  %271 = load i32, i32* %18, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %18, align 4
  br label %233

273:                                              ; preds = %233
  br label %274

274:                                              ; preds = %273, %229
  store i32 0, i32* %8, align 4
  br label %275

275:                                              ; preds = %274, %268, %228, %215, %202, %183, %176, %151, %107
  %276 = load i32, i32* %8, align 4
  ret i32 %276
}

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @uses_template_parms(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i64 @can_convert_arg(i64, i64, i64, i32) #1

declare dso_local i64 @type_unknown_p(i64) #1

declare dso_local i64 @resolve_overloaded_unification(i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @unlowered_expr_type(i64) #1

declare dso_local i32 @maybe_adjust_types_for_deduction(i32, i64*, i64*) #1

declare dso_local i64 @unify(i64, i64, i64, i64, i32) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
