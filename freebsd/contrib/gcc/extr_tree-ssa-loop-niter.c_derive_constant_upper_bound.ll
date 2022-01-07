; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_derive_constant_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_derive_constant_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @derive_constant_upper_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_constant_upper_bound(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @INTEGRAL_TYPE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TYPE_MAX_VALUE(i32 %21)
  store i32 %22, i32* %10, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @upper_bound_in_type(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @tree_to_double_int(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_CODE(i32 %30)
  switch i32 %31, label %174 [
    i32 131, label %32
    i32 129, label %35
    i32 134, label %35
    i32 128, label %66
    i32 130, label %66
    i32 132, label %152
    i32 133, label %152
  ]

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @tree_to_double_int(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %176

35:                                               ; preds = %27, %27
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @TYPE_UNSIGNED(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @TYPE_UNSIGNED(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @implies_nonnegative_p(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %3, align 4
  br label %176

54:                                               ; preds = %47, %43, %35
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @derive_constant_upper_bound(i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @double_int_ucmp(i32 %58, i32 %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %176

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %176

66:                                               ; preds = %27, %27
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @TREE_OPERAND(i32 %67, i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @TREE_OPERAND(i32 %69, i32 1)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @TREE_CODE(i32 %71)
  %73 = icmp ne i32 %72, 131
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @implies_nonnegative_p(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74, %66
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %3, align 4
  br label %176

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @tree_to_double_int(i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @TYPE_PRECISION(i32 %85)
  %87 = call i32 @double_int_sext(i32 %84, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @TREE_CODE(i32 %88)
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @double_int_neg(i32 %92)
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %81
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @derive_constant_upper_bound(i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @double_int_negative_p(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @double_int_neg(i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @double_int_negative_p(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %3, align 4
  br label %176

109:                                              ; preds = %101
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @double_int_neg(i32 %111)
  %113 = call i32 @double_int_add(i32 %110, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @double_int_ucmp(i32 %114, i32 %115)
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %3, align 4
  br label %176

120:                                              ; preds = %109
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @double_int_add(i32 %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %176

124:                                              ; preds = %94
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @double_int_ucmp(i32 %125, i32 %126)
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %3, align 4
  br label %176

131:                                              ; preds = %124
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @TYPE_UNSIGNED(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @double_int_to_tree(i32 %138, i32 %139)
  %141 = call i32 @implies_ge_p(i32 %136, i32 %137, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %3, align 4
  br label %176

145:                                              ; preds = %135, %131
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @double_int_neg(i32 %147)
  %149 = call i32 @double_int_add(i32 %146, i32 %148)
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %176

152:                                              ; preds = %27, %27
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @TREE_OPERAND(i32 %153, i32 0)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @TREE_OPERAND(i32 %155, i32 1)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @TREE_CODE(i32 %157)
  %159 = icmp ne i32 %158, 131
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @tree_int_cst_sign_bit(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160, %152
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %3, align 4
  br label %176

166:                                              ; preds = %160
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @derive_constant_upper_bound(i32 %167, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @tree_to_double_int(i32 %171)
  %173 = call i32 @double_int_udiv(i32 %170, i32 %172, i32 132)
  store i32 %173, i32* %3, align 4
  br label %176

174:                                              ; preds = %27
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %166, %164, %150, %143, %129, %120, %118, %107, %79, %64, %62, %52, %32
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @upper_bound_in_type(i32, i32) #1

declare dso_local i32 @tree_to_double_int(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @implies_nonnegative_p(i32, i32) #1

declare dso_local i32 @double_int_ucmp(i32, i32) #1

declare dso_local i32 @double_int_sext(i32, i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @double_int_neg(i32) #1

declare dso_local i32 @double_int_negative_p(i32) #1

declare dso_local i32 @double_int_add(i32, i32) #1

declare dso_local i32 @implies_ge_p(i32, i32, i32) #1

declare dso_local i32 @double_int_to_tree(i32, i32) #1

declare dso_local i32 @tree_int_cst_sign_bit(i32) #1

declare dso_local i32 @double_int_udiv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
