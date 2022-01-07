; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_get_ref_base_and_extent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_get_ref_base_and_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@bitsize_zero_node = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@bitsizetype = common dso_local global i32 0, align 4
@bitsize_unit_node = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_ref_base_and_extent(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* @bitsize_zero_node, align 8
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @SSA_VAR_P(i64 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @TREE_CODE(i64 %30)
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_OPERAND(i64 %34, i32 1)
  %36 = call i64 @DECL_SIZE(i64 %35)
  store i64 %36, i64* %11, align 8
  br label %60

37:                                               ; preds = %4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @TREE_CODE(i64 %38)
  %40 = icmp eq i32 %39, 132
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @TREE_OPERAND(i64 %42, i32 1)
  store i64 %43, i64* %11, align 8
  br label %59

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @TREE_TYPE(i64 %45)
  %47 = call i32 @TYPE_MODE(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @BLKmode, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @TREE_TYPE(i64 %52)
  %54 = call i64 @TYPE_SIZE(i32 %53)
  store i64 %54, i64* %11, align 8
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @GET_MODE_BITSIZE(i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @NULL_TREE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @host_integerp(i64 %65, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 -1, i32* %9, align 4
  br label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @TREE_INT_CST_LOW(i64 %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %68
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %206
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @TREE_CODE(i64 %76)
  switch i32 %77, label %205 [
    i32 132, label %78
    i32 131, label %84
    i32 133, label %135
    i32 134, label %135
    i32 129, label %197
    i32 130, label %198
    i32 128, label %204
  ]

78:                                               ; preds = %75
  %79 = load i32, i32* @PLUS_EXPR, align 4
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @TREE_OPERAND(i64 %81, i32 2)
  %83 = call i64 @size_binop(i32 %79, i64 %80, i64 %82)
  store i64 %83, i64* %12, align 8
  br label %206

84:                                               ; preds = %75
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @TREE_OPERAND(i64 %85, i32 1)
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @component_ref_field_offset(i64 %87)
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %84
  %92 = load i64, i64* %16, align 8
  %93 = call i32 @TREE_CODE(i64 %92)
  %94 = load i32, i32* @INTEGER_CST, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, i32* @MULT_EXPR, align 4
  %98 = load i32, i32* @bitsizetype, align 4
  %99 = load i64, i64* %16, align 8
  %100 = call i64 @fold_convert(i32 %98, i64 %99)
  %101 = load i64, i64* @bitsize_unit_node, align 8
  %102 = call i64 @size_binop(i32 %97, i64 %100, i64 %101)
  store i64 %102, i64* %16, align 8
  %103 = load i32, i32* @PLUS_EXPR, align 4
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %16, align 8
  %106 = call i64 @size_binop(i32 %103, i64 %104, i64 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i32, i32* @PLUS_EXPR, align 4
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i64 @DECL_FIELD_BIT_OFFSET(i64 %109)
  %111 = call i64 @size_binop(i32 %107, i64 %108, i64 %110)
  store i64 %111, i64* %12, align 8
  br label %134

112:                                              ; preds = %91, %84
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @TREE_OPERAND(i64 %113, i32 0)
  %115 = call i32 @TREE_TYPE(i64 %114)
  %116 = call i64 @TYPE_SIZE(i32 %115)
  store i64 %116, i64* %17, align 8
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = load i64, i64* %17, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i64, i64* %17, align 8
  %124 = call i64 @host_integerp(i64 %123, i32 1)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i64, i64* %17, align 8
  %128 = call i32 @TREE_INT_CST_LOW(i64 %127)
  %129 = load i64, i64* %12, align 8
  %130 = call i32 @TREE_INT_CST_LOW(i64 %129)
  %131 = sub nsw i32 %128, %130
  store i32 %131, i32* %10, align 4
  br label %133

132:                                              ; preds = %122, %119, %112
  store i32 -1, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %126
  br label %134

134:                                              ; preds = %133, %96
  br label %206

135:                                              ; preds = %75, %75
  %136 = load i64, i64* %5, align 8
  %137 = call i64 @TREE_OPERAND(i64 %136, i32 1)
  store i64 %137, i64* %18, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @array_ref_low_bound(i64 %138)
  store i64 %139, i64* %19, align 8
  %140 = load i64, i64* %5, align 8
  %141 = call i64 @array_ref_element_size(i64 %140)
  store i64 %141, i64* %20, align 8
  %142 = load i64, i64* %19, align 8
  %143 = call i32 @integer_zerop(i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %135
  %146 = load i32, i32* @MINUS_EXPR, align 4
  %147 = load i64, i64* %18, align 8
  %148 = call i32 @TREE_TYPE(i64 %147)
  %149 = load i64, i64* %18, align 8
  %150 = load i64, i64* %19, align 8
  %151 = call i64 @fold_build2(i32 %146, i32 %148, i64 %149, i64 %150)
  store i64 %151, i64* %18, align 8
  br label %152

152:                                              ; preds = %145, %135
  %153 = load i32, i32* @MULT_EXPR, align 4
  %154 = load i32, i32* @sizetype, align 4
  %155 = load i64, i64* %18, align 8
  %156 = call i64 @fold_convert(i32 %154, i64 %155)
  %157 = load i64, i64* %20, align 8
  %158 = call i64 @size_binop(i32 %153, i64 %156, i64 %157)
  store i64 %158, i64* %18, align 8
  %159 = load i64, i64* %18, align 8
  %160 = call i32 @TREE_CODE(i64 %159)
  %161 = load i32, i32* @INTEGER_CST, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %152
  %164 = load i32, i32* @MULT_EXPR, align 4
  %165 = load i32, i32* @bitsizetype, align 4
  %166 = load i64, i64* %18, align 8
  %167 = call i64 @fold_convert(i32 %165, i64 %166)
  %168 = load i64, i64* @bitsize_unit_node, align 8
  %169 = call i64 @size_binop(i32 %164, i64 %167, i64 %168)
  store i64 %169, i64* %18, align 8
  %170 = load i32, i32* @PLUS_EXPR, align 4
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %18, align 8
  %173 = call i64 @size_binop(i32 %170, i64 %171, i64 %172)
  store i64 %173, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %196

174:                                              ; preds = %152
  %175 = load i64, i64* %5, align 8
  %176 = call i64 @TREE_OPERAND(i64 %175, i32 0)
  %177 = call i32 @TREE_TYPE(i64 %176)
  %178 = call i64 @TYPE_SIZE(i32 %177)
  store i64 %178, i64* %21, align 8
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, -1
  br i1 %180, label %181, label %194

181:                                              ; preds = %174
  %182 = load i64, i64* %21, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load i64, i64* %21, align 8
  %186 = call i64 @host_integerp(i64 %185, i32 1)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i64, i64* %21, align 8
  %190 = call i32 @TREE_INT_CST_LOW(i64 %189)
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @TREE_INT_CST_LOW(i64 %191)
  %193 = sub nsw i32 %190, %192
  store i32 %193, i32* %10, align 4
  br label %195

194:                                              ; preds = %184, %181, %174
  store i32 -1, i32* %10, align 4
  br label %195

195:                                              ; preds = %194, %188
  store i32 1, i32* %13, align 4
  br label %196

196:                                              ; preds = %195, %163
  br label %206

197:                                              ; preds = %75
  br label %206

198:                                              ; preds = %75
  %199 = load i32, i32* @PLUS_EXPR, align 4
  %200 = load i64, i64* %12, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i64 @bitsize_int(i32 %201)
  %203 = call i64 @size_binop(i32 %199, i64 %200, i64 %202)
  store i64 %203, i64* %12, align 8
  br label %206

204:                                              ; preds = %75
  br label %206

205:                                              ; preds = %75
  br label %209

206:                                              ; preds = %204, %198, %197, %196, %134, %78
  %207 = load i64, i64* %5, align 8
  %208 = call i64 @TREE_OPERAND(i64 %207, i32 0)
  store i64 %208, i64* %5, align 8
  br label %75

209:                                              ; preds = %205
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %215, label %232

215:                                              ; preds = %212
  %216 = load i64, i64* %5, align 8
  %217 = call i32 @TREE_TYPE(i64 %216)
  %218 = call i64 @TYPE_SIZE(i32 %217)
  %219 = call i64 @host_integerp(i64 %218, i32 1)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %215
  %222 = load i64, i64* %12, align 8
  %223 = call i32 @TREE_INT_CST_LOW(i64 %222)
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i64, i64* %5, align 8
  %227 = call i32 @TREE_TYPE(i64 %226)
  %228 = call i64 @TYPE_SIZE(i32 %227)
  %229 = call i32 @TREE_INT_CST_LOW(i64 %228)
  %230 = icmp eq i32 %225, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  store i32 -1, i32* %10, align 4
  br label %232

232:                                              ; preds = %231, %221, %215, %212, %209
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @TREE_INT_CST_LOW(i64 %233)
  %235 = load i32*, i32** %6, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load i32*, i32** %7, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32*, i32** %8, align 8
  store i32 %238, i32* %239, align 4
  %240 = load i64, i64* %5, align 8
  ret i64 %240
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SSA_VAR_P(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_SIZE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @host_integerp(i64, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @component_ref_field_offset(i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @DECL_FIELD_BIT_OFFSET(i64) #1

declare dso_local i64 @array_ref_low_bound(i64) #1

declare dso_local i64 @array_ref_element_size(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @bitsize_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
