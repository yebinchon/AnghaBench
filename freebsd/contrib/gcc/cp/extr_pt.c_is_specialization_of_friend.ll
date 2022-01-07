; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_is_specialization_of_friend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_is_specialization_of_friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_specialization_of_friend(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @FUNCTION_DECL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @TYPE_DECL, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %24, %2
  %30 = phi i1 [ true, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @FUNCTION_DECL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @DECL_TEMPLATE_INFO(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @DECL_USE_TEMPLATE(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @DECL_TI_TEMPLATE(i64 %46)
  store i64 %47, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %59

48:                                               ; preds = %41, %37, %29
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @TEMPLATE_DECL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @PRIMARY_TEMPLATE_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %53, %48
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @TEMPLATE_DECL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %255

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @is_specialization_of(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %255

71:                                               ; preds = %65
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @DECL_CONTEXT(i64 %72)
  %74 = call i32 @template_class_depth(i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %254

77:                                               ; preds = %71
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @DECL_CLASS_SCOPE_P(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %254

81:                                               ; preds = %77
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @DECL_CONTEXT(i64 %82)
  %84 = call i64 @TYPE_NAME(i64 %83)
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @DECL_CONTEXT(i64 %85)
  %87 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %86)
  %88 = call i64 @is_specialization_of(i64 %84, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %254

90:                                               ; preds = %81
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @DECL_CONTEXT(i64 %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* @NULL_TREE, align 8
  store i64 %93, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %116, %90
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %94
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @TYPE_TI_ARGS(i64 %106)
  store i64 %107, i64* %9, align 8
  br label %113

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @TYPE_TI_ARGS(i64 %109)
  %111 = load i64, i64* %9, align 8
  %112 = call i64 @add_to_template_args(i64 %110, i64 %111)
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %98
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @TYPE_CONTEXT(i64 %117)
  store i64 %118, i64* %8, align 8
  br label %94

119:                                              ; preds = %94
  %120 = load i64, i64* %4, align 8
  %121 = call i64 @TREE_CODE(i64 %120)
  %122 = load i64, i64* @FUNCTION_DECL, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %206

124:                                              ; preds = %119
  %125 = load i64, i64* %4, align 8
  %126 = call i64 @DECL_TEMPLATE_INFO(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @DECL_TI_TEMPLATE(i64 %129)
  %131 = call i64 @PRIMARY_TEMPLATE_P(i64 %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi i1 [ false, %124 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %11, align 4
  %138 = xor i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %255

141:                                              ; preds = %133
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @DECL_TEMPLATE_PARMS(i64 %145)
  %147 = load i64, i64* %9, align 8
  %148 = load i32, i32* @tf_none, align 4
  %149 = call i64 @tsubst_template_parms(i32 %146, i64 %147, i32 %148)
  store i64 %149, i64* %16, align 8
  %150 = load i64, i64* %4, align 8
  %151 = call i64 @DECL_TI_TEMPLATE(i64 %150)
  %152 = call i32 @DECL_TEMPLATE_PARMS(i64 %151)
  %153 = load i64, i64* %16, align 8
  %154 = call i32 @comp_template_parms(i32 %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %255

157:                                              ; preds = %144
  %158 = load i64, i64* %4, align 8
  %159 = call i64 @DECL_TI_TEMPLATE(i64 %158)
  %160 = call i64 @TREE_TYPE(i64 %159)
  store i64 %160, i64* %13, align 8
  br label %164

161:                                              ; preds = %141
  %162 = load i64, i64* %4, align 8
  %163 = call i64 @TREE_TYPE(i64 %162)
  store i64 %163, i64* %13, align 8
  br label %164

164:                                              ; preds = %161, %157
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %5, align 8
  %167 = call i64 @TREE_TYPE(i64 %166)
  %168 = load i64, i64* %9, align 8
  %169 = load i32, i32* @tf_none, align 4
  %170 = load i64, i64* @NULL_TREE, align 8
  %171 = call i64 @tsubst_function_type(i64 %167, i64 %168, i32 %169, i64 %170)
  store i64 %171, i64* %12, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* @error_mark_node, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %255

176:                                              ; preds = %165
  %177 = load i64, i64* %13, align 8
  %178 = call i64 @TREE_TYPE(i64 %177)
  %179 = load i64, i64* %12, align 8
  %180 = call i64 @TREE_TYPE(i64 %179)
  %181 = call i32 @same_type_p(i64 %178, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %255

184:                                              ; preds = %176
  %185 = load i64, i64* %12, align 8
  %186 = call i64 @TYPE_ARG_TYPES(i64 %185)
  store i64 %186, i64* %14, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i64 @TYPE_ARG_TYPES(i64 %187)
  store i64 %188, i64* %15, align 8
  %189 = load i64, i64* %5, align 8
  %190 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i64, i64* %14, align 8
  %194 = call i64 @TREE_CHAIN(i64 %193)
  store i64 %194, i64* %14, align 8
  br label %195

195:                                              ; preds = %192, %184
  %196 = load i64, i64* %4, align 8
  %197 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i64, i64* %15, align 8
  %201 = call i64 @TREE_CHAIN(i64 %200)
  store i64 %201, i64* %15, align 8
  br label %202

202:                                              ; preds = %199, %195
  %203 = load i64, i64* %15, align 8
  %204 = load i64, i64* %14, align 8
  %205 = call i32 @compparms(i64 %203, i64 %204)
  store i32 %205, i32* %3, align 4
  br label %255

206:                                              ; preds = %119
  %207 = load i64, i64* %4, align 8
  %208 = call i64 @TREE_TYPE(i64 %207)
  store i64 %208, i64* %18, align 8
  %209 = load i64, i64* %18, align 8
  %210 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = load i64, i64* %18, align 8
  %214 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %213)
  %215 = call i64 @PRIMARY_TEMPLATE_P(i64 %214)
  %216 = icmp ne i64 %215, 0
  br label %217

217:                                              ; preds = %212, %206
  %218 = phi i1 [ false, %206 ], [ %216, %212 ]
  %219 = zext i1 %218 to i32
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %17, align 4
  %222 = xor i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  store i32 0, i32* %3, align 4
  br label %255

225:                                              ; preds = %217
  %226 = load i32, i32* %17, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %225
  %229 = load i64, i64* %18, align 8
  %230 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %229)
  %231 = call i64 @DECL_NAME(i64 %230)
  %232 = load i64, i64* %5, align 8
  %233 = call i64 @DECL_NAME(i64 %232)
  %234 = icmp ne i64 %231, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  br label %255

236:                                              ; preds = %228
  %237 = load i64, i64* %5, align 8
  %238 = call i32 @DECL_TEMPLATE_PARMS(i64 %237)
  %239 = load i64, i64* %9, align 8
  %240 = load i32, i32* @tf_none, align 4
  %241 = call i64 @tsubst_template_parms(i32 %238, i64 %239, i32 %240)
  store i64 %241, i64* %19, align 8
  %242 = load i64, i64* %18, align 8
  %243 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %242)
  %244 = call i32 @DECL_TEMPLATE_PARMS(i64 %243)
  %245 = load i64, i64* %19, align 8
  %246 = call i32 @comp_template_parms(i32 %244, i64 %245)
  store i32 %246, i32* %3, align 4
  br label %255

247:                                              ; preds = %225
  %248 = load i64, i64* %4, align 8
  %249 = call i64 @DECL_NAME(i64 %248)
  %250 = load i64, i64* %5, align 8
  %251 = call i64 @DECL_NAME(i64 %250)
  %252 = icmp eq i64 %249, %251
  %253 = zext i1 %252 to i32
  store i32 %253, i32* %3, align 4
  br label %255

254:                                              ; preds = %81, %77, %71
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %254, %247, %236, %235, %224, %202, %183, %175, %156, %140, %70, %64
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i32 @DECL_USE_TEMPLATE(i64) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i64) #1

declare dso_local i64 @is_specialization_of(i64, i64) #1

declare dso_local i32 @template_class_depth(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @CLASSTYPE_TI_TEMPLATE(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @TYPE_TI_ARGS(i64) #1

declare dso_local i64 @add_to_template_args(i64, i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @tsubst_template_parms(i32, i64, i32) #1

declare dso_local i32 @DECL_TEMPLATE_PARMS(i64) #1

declare dso_local i32 @comp_template_parms(i32, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @tsubst_function_type(i64, i64, i32, i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @compparms(i64, i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
