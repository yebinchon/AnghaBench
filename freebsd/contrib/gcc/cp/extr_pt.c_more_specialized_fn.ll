; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_more_specialized_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_more_specialized_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@UNIFY_ALLOW_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @more_specialized_fn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DECL_TEMPLATE_RESULT(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DECL_TEMPLATE_RESULT(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @DECL_NTPARMS(i32 %28)
  %30 = call i32 @make_tree_vec(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DECL_NTPARMS(i32 %31)
  %33 = call i32 @make_tree_vec(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DECL_INNERMOST_TEMPLATE_PARMS(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DECL_INNERMOST_TEMPLATE_PARMS(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = call i32 @TYPE_ARG_TYPES(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @TREE_TYPE(i32 %41)
  %43 = call i32 @TYPE_ARG_TYPES(i32 %42)
  store i32 %43, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @TREE_CHAIN(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DECL_STATIC_FUNCTION_P(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @TREE_CHAIN(i32 %56)
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %55, %47
  br label %76

59:                                               ; preds = %3
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @TREE_CHAIN(i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @DECL_STATIC_FUNCTION_P(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @TREE_CHAIN(i32 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @DECL_CONV_FN_P(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @DECL_CONV_FN_P(i32 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %266

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @DECL_CONV_FN_P(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i32, i32* @NULL_TREE, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @TREE_TYPE(i32 %89)
  %91 = call i32 @TREE_TYPE(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @tree_cons(i32 %88, i32 %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* @NULL_TREE, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @TREE_TYPE(i32 %95)
  %97 = call i32 @TREE_TYPE(i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @tree_cons(i32 %94, i32 %97, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %87, %83
  %103 = load i32, i32* @processing_template_decl, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @processing_template_decl, align 4
  br label %105

105:                                              ; preds = %251, %102
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %7, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %256

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @TREE_VALUE(i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @TREE_VALUE(i32 %112)
  store i32 %113, i32* %19, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @TREE_CODE(i32 %114)
  %116 = load i32, i32* @REFERENCE_TYPE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @TREE_TYPE(i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @cp_type_quals(i32 %121)
  store i32 %122, i32* %22, align 4
  br label %123

123:                                              ; preds = %118, %109
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @TREE_CODE(i32 %124)
  %126 = load i32, i32* @REFERENCE_TYPE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @TREE_TYPE(i32 %129)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @cp_type_quals(i32 %131)
  store i32 %132, i32* %23, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %22, align 4
  %135 = icmp slt i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %23, align 4
  %138 = icmp slt i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %133
  %142 = load i32, i32* %22, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @TREE_CODE(i32 %145)
  switch i32 %146, label %153 [
    i32 129, label %147
    i32 128, label %150
  ]

147:                                              ; preds = %144
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @TREE_TYPE(i32 %148)
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %144, %147
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @build_pointer_type(i32 %151)
  store i32 %152, i32* %18, align 4
  br label %154

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %150
  br label %166

155:                                              ; preds = %141
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @TREE_CODE(i32 %156)
  switch i32 %157, label %164 [
    i32 129, label %158
    i32 128, label %161
  ]

158:                                              ; preds = %155
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @TREE_TYPE(i32 %159)
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %155, %158
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @build_pointer_type(i32 %162)
  store i32 %163, i32* %19, align 4
  br label %165

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %161
  br label %166

166:                                              ; preds = %165, %154
  br label %167

167:                                              ; preds = %166, %133
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @TYPE_MAIN_VARIANT(i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %19, align 4
  %171 = call i32 @TYPE_MAIN_VARIANT(i32 %170)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* @UNIFY_ALLOW_NONE, align 4
  %177 = call i32 @unify(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @UNIFY_ALLOW_NONE, align 4
  %186 = call i32 @unify(i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %167
  store i32 -1, i32* %17, align 4
  br label %193

193:                                              ; preds = %192, %167
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i32 -1, i32* %16, align 4
  br label %197

197:                                              ; preds = %196, %193
  %198 = load i32, i32* %16, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %256

204:                                              ; preds = %200, %197
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %231

207:                                              ; preds = %204
  %208 = load i32, i32* %21, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %231

210:                                              ; preds = %207
  %211 = load i32, i32* %22, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %210
  %214 = load i32, i32* %23, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %213
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %23, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* %23, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 0, i32* %20, align 4
  br label %223

223:                                              ; preds = %222, %216
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* %23, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* %22, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 0, i32* %21, align 4
  br label %230

230:                                              ; preds = %229, %223
  br label %231

231:                                              ; preds = %230, %213, %210, %207, %204
  %232 = load i32, i32* %20, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %17, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  store i32 1, i32* %17, align 4
  br label %241

241:                                              ; preds = %240, %237, %234, %231
  %242 = load i32, i32* %21, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %241
  %245 = load i32, i32* %20, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store i32 1, i32* %16, align 4
  br label %251

251:                                              ; preds = %250, %247, %244, %241
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @TREE_CHAIN(i32 %252)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %15, align 4
  %255 = call i32 @TREE_CHAIN(i32 %254)
  store i32 %255, i32* %15, align 4
  br label %105

256:                                              ; preds = %203, %105
  %257 = load i32, i32* @processing_template_decl, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* @processing_template_decl, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp sgt i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %17, align 4
  %263 = icmp sgt i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = sub nsw i32 %261, %264
  store i32 %265, i32* %4, align 4
  br label %266

266:                                              ; preds = %256, %82
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

declare dso_local i32 @make_tree_vec(i32) #1

declare dso_local i32 @DECL_NTPARMS(i32) #1

declare dso_local i32 @DECL_INNERMOST_TEMPLATE_PARMS(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @DECL_STATIC_FUNCTION_P(i32) #1

declare dso_local i64 @DECL_CONV_FN_P(i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @cp_type_quals(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @unify(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
