; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_get_inner_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_get_inner_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@size_zero_node = common dso_local global i64 0, align 8
@bitsize_zero_node = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@STRICT_ALIGNMENT = common dso_local global i32 0, align 4
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_inner_reference(i64 %0, i32* %1, i32* %2, i64* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %18, align 8
  %28 = load i32, i32* @VOIDmode, align 4
  store i32 %28, i32* %19, align 4
  %29 = load i64, i64* @size_zero_node, align 8
  store i64 %29, i64* %20, align 8
  %30 = load i64, i64* @bitsize_zero_node, align 8
  store i64 %30, i64* %21, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @TREE_CODE(i64 %31)
  %33 = icmp eq i32 %32, 131
  br i1 %33, label %34, label %51

34:                                               ; preds = %8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @TREE_OPERAND(i64 %35, i32 1)
  %37 = call i64 @DECL_SIZE(i64 %36)
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @TREE_OPERAND(i64 %38, i32 1)
  %40 = call i32 @DECL_BIT_FIELD(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @TREE_OPERAND(i64 %43, i32 1)
  %45 = call i32 @DECL_MODE(i64 %44)
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @TREE_OPERAND(i64 %47, i32 1)
  %49 = call i32 @DECL_UNSIGNED(i64 %48)
  %50 = load i32*, i32** %15, align 8
  store i32 %49, i32* %50, align 4
  br label %82

51:                                               ; preds = %8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @TREE_CODE(i64 %52)
  %54 = icmp eq i32 %53, 132
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 1)
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @BIT_FIELD_REF_UNSIGNED(i64 %58)
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  br label %81

61:                                               ; preds = %51
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @TREE_TYPE(i64 %62)
  %64 = call i32 @TYPE_MODE(i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @TREE_TYPE(i64 %65)
  %67 = call i32 @TYPE_UNSIGNED(i32 %66)
  %68 = load i32*, i32** %15, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @BLKmode, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @TREE_TYPE(i64 %73)
  %75 = call i64 @TYPE_SIZE(i32 %74)
  store i64 %75, i64* %18, align 8
  br label %80

76:                                               ; preds = %61
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @GET_MODE_BITSIZE(i32 %77)
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i64, i64* %18, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i64, i64* %18, align 8
  %87 = call i64 @host_integerp(i64 %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @BLKmode, align 4
  store i32 %90, i32* %19, align 4
  %91 = load i32*, i32** %11, align 8
  store i32 -1, i32* %91, align 4
  br label %96

92:                                               ; preds = %85
  %93 = load i64, i64* %18, align 8
  %94 = call i32 @tree_low_cst(i64 %93, i32 1)
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %19, align 4
  %99 = load i32*, i32** %14, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %204
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @TREE_CODE(i64 %101)
  switch i32 %102, label %197 [
    i32 132, label %103
    i32 131, label %109
    i32 133, label %127
    i32 134, label %127
    i32 129, label %154
    i32 130, label %155
    i32 128, label %162
  ]

103:                                              ; preds = %100
  %104 = load i32, i32* @PLUS_EXPR, align 4
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @TREE_OPERAND(i64 %106, i32 2)
  %108 = call i64 @size_binop(i32 %104, i64 %105, i64 %107)
  store i64 %108, i64* %21, align 8
  br label %198

109:                                              ; preds = %100
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @TREE_OPERAND(i64 %110, i32 1)
  store i64 %111, i64* %22, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @component_ref_field_offset(i64 %112)
  store i64 %113, i64* %23, align 8
  %114 = load i64, i64* %23, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %198

117:                                              ; preds = %109
  %118 = load i32, i32* @PLUS_EXPR, align 4
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* %23, align 8
  %121 = call i64 @size_binop(i32 %118, i64 %119, i64 %120)
  store i64 %121, i64* %20, align 8
  %122 = load i32, i32* @PLUS_EXPR, align 4
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %22, align 8
  %125 = call i64 @DECL_FIELD_BIT_OFFSET(i64 %124)
  %126 = call i64 @size_binop(i32 %122, i64 %123, i64 %125)
  store i64 %126, i64* %21, align 8
  br label %198

127:                                              ; preds = %100, %100
  %128 = load i64, i64* %10, align 8
  %129 = call i64 @TREE_OPERAND(i64 %128, i32 1)
  store i64 %129, i64* %24, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i64 @array_ref_low_bound(i64 %130)
  store i64 %131, i64* %25, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i64 @array_ref_element_size(i64 %132)
  store i64 %133, i64* %26, align 8
  %134 = load i64, i64* %25, align 8
  %135 = call i32 @integer_zerop(i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* @MINUS_EXPR, align 4
  %139 = load i64, i64* %24, align 8
  %140 = call i32 @TREE_TYPE(i64 %139)
  %141 = load i64, i64* %24, align 8
  %142 = load i64, i64* %25, align 8
  %143 = call i64 @fold_build2(i32 %138, i32 %140, i64 %141, i64 %142)
  store i64 %143, i64* %24, align 8
  br label %144

144:                                              ; preds = %137, %127
  %145 = load i32, i32* @PLUS_EXPR, align 4
  %146 = load i64, i64* %20, align 8
  %147 = load i32, i32* @MULT_EXPR, align 4
  %148 = load i32, i32* @sizetype, align 4
  %149 = load i64, i64* %24, align 8
  %150 = call i64 @fold_convert(i32 %148, i64 %149)
  %151 = load i64, i64* %26, align 8
  %152 = call i64 @size_binop(i32 %147, i64 %150, i64 %151)
  %153 = call i64 @size_binop(i32 %145, i64 %146, i64 %152)
  store i64 %153, i64* %20, align 8
  br label %198

154:                                              ; preds = %100
  br label %198

155:                                              ; preds = %100
  %156 = load i32, i32* @PLUS_EXPR, align 4
  %157 = load i64, i64* %21, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @bitsize_int(i32 %159)
  %161 = call i64 @size_binop(i32 %156, i64 %157, i64 %160)
  store i64 %161, i64* %21, align 8
  br label %198

162:                                              ; preds = %100
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %162
  %166 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %165
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @TREE_TYPE(i64 %169)
  %171 = call i32 @TYPE_ALIGN(i32 %170)
  %172 = load i64, i64* %10, align 8
  %173 = call i64 @TREE_OPERAND(i64 %172, i32 0)
  %174 = call i32 @TREE_TYPE(i64 %173)
  %175 = call i32 @TYPE_ALIGN(i32 %174)
  %176 = icmp sgt i32 %171, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %168
  %178 = load i64, i64* %10, align 8
  %179 = call i64 @TREE_OPERAND(i64 %178, i32 0)
  %180 = call i32 @TREE_TYPE(i64 %179)
  %181 = call i32 @TYPE_ALIGN(i32 %180)
  %182 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %177
  %185 = load i64, i64* %10, align 8
  %186 = call i32 @TREE_TYPE(i64 %185)
  %187 = call i32 @TYPE_ALIGN_OK(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = load i64, i64* %10, align 8
  %191 = call i64 @TREE_OPERAND(i64 %190, i32 0)
  %192 = call i32 @TREE_TYPE(i64 %191)
  %193 = call i32 @TYPE_ALIGN_OK(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189, %184
  br label %207

196:                                              ; preds = %189, %177, %168, %165, %162
  br label %198

197:                                              ; preds = %100
  br label %207

198:                                              ; preds = %196, %155, %154, %144, %117, %116, %103
  %199 = load i64, i64* %10, align 8
  %200 = call i64 @TREE_THIS_VOLATILE(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32*, i32** %16, align 8
  store i32 1, i32* %203, align 4
  br label %204

204:                                              ; preds = %202, %198
  %205 = load i64, i64* %10, align 8
  %206 = call i64 @TREE_OPERAND(i64 %205, i32 0)
  store i64 %206, i64* %10, align 8
  br label %100

207:                                              ; preds = %197, %195
  %208 = load i64, i64* %20, align 8
  %209 = call i64 @host_integerp(i64 %208, i32 0)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %232

211:                                              ; preds = %207
  %212 = load i64, i64* %20, align 8
  %213 = call i32 @tree_to_double_int(i64 %212)
  %214 = load i32, i32* @BITS_PER_UNIT, align 4
  %215 = call i32 @uhwi_to_double_int(i32 %214)
  %216 = call i32 @double_int_mul(i32 %213, i32 %215)
  store i32 %216, i32* %27, align 4
  %217 = load i32, i32* %27, align 4
  %218 = load i64, i64* %21, align 8
  %219 = call i32 @tree_to_double_int(i64 %218)
  %220 = call i32 @double_int_add(i32 %217, i32 %219)
  store i32 %220, i32* %27, align 4
  %221 = load i32, i32* %27, align 4
  %222 = call i64 @double_int_fits_in_shwi_p(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %211
  %225 = load i32, i32* %27, align 4
  %226 = call i32 @double_int_to_shwi(i32 %225)
  %227 = load i32*, i32** %12, align 8
  store i32 %226, i32* %227, align 4
  %228 = load i64, i64* @NULL_TREE, align 8
  %229 = load i64*, i64** %13, align 8
  store i64 %228, i64* %229, align 8
  %230 = load i64, i64* %10, align 8
  store i64 %230, i64* %9, align 8
  br label %239

231:                                              ; preds = %211
  br label %232

232:                                              ; preds = %231, %207
  %233 = load i64, i64* %21, align 8
  %234 = call i32 @tree_low_cst(i64 %233, i32 0)
  %235 = load i32*, i32** %12, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i64, i64* %20, align 8
  %237 = load i64*, i64** %13, align 8
  store i64 %236, i64* %237, align 8
  %238 = load i64, i64* %10, align 8
  store i64 %238, i64* %9, align 8
  br label %239

239:                                              ; preds = %232, %224
  %240 = load i64, i64* %9, align 8
  ret i64 %240
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @DECL_BIT_FIELD(i64) #1

declare dso_local i32 @DECL_MODE(i64) #1

declare dso_local i32 @DECL_UNSIGNED(i64) #1

declare dso_local i32 @BIT_FIELD_REF_UNSIGNED(i64) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i64 @TYPE_SIZE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @host_integerp(i64, i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i64 @component_ref_field_offset(i64) #1

declare dso_local i64 @DECL_FIELD_BIT_OFFSET(i64) #1

declare dso_local i64 @array_ref_low_bound(i64) #1

declare dso_local i64 @array_ref_element_size(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @bitsize_int(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @TYPE_ALIGN_OK(i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i64) #1

declare dso_local i32 @double_int_mul(i32, i32) #1

declare dso_local i32 @tree_to_double_int(i64) #1

declare dso_local i32 @uhwi_to_double_int(i32) #1

declare dso_local i32 @double_int_add(i32, i32) #1

declare dso_local i64 @double_int_fits_in_shwi_p(i32) #1

declare dso_local i32 @double_int_to_shwi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
