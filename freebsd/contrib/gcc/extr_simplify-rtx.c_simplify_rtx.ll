; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@LO_SUM = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @simplify_rtx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @GET_CODE(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @GET_MODE(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_RTX_CLASS(i32 %10)
  switch i32 %11, label %119 [
    i32 128, label %12
    i32 134, label %21
    i32 136, label %37
    i32 129, label %45
    i32 135, label %45
    i32 132, label %58
    i32 133, label %58
    i32 131, label %81
    i32 130, label %96
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @XEXP(i32* %15, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @XEXP(i32* %17, i32 0)
  %19 = call i32 @GET_MODE(i32* %18)
  %20 = call i32* @simplify_unary_operation(i32 %13, i32 %14, i32* %16, i32 %19)
  store i32* %20, i32** %2, align 8
  br label %121

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @XEXP(i32* %22, i32 0)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @XEXP(i32* %24, i32 1)
  %26 = call i32 @swap_commutative_operands_p(i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32* @XEXP(i32* %31, i32 1)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32* @XEXP(i32* %33, i32 0)
  %35 = call i32* @simplify_gen_binary(i32 %29, i32 %30, i32* %32, i32* %34)
  store i32* %35, i32** %2, align 8
  br label %121

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %1, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @XEXP(i32* %40, i32 0)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32* @XEXP(i32* %42, i32 1)
  %44 = call i32* @simplify_binary_operation(i32 %38, i32 %39, i32* %41, i32* %43)
  store i32* %44, i32** %2, align 8
  br label %121

45:                                               ; preds = %1, %1
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32* @XEXP(i32* %48, i32 0)
  %50 = call i32 @GET_MODE(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32* @XEXP(i32* %51, i32 0)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32* @XEXP(i32* %53, i32 1)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32* @XEXP(i32* %55, i32 2)
  %57 = call i32* @simplify_ternary_operation(i32 %46, i32 %47, i32 %50, i32* %52, i32* %54, i32* %56)
  store i32* %57, i32** %2, align 8
  br label %121

58:                                               ; preds = %1, %1
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32* @XEXP(i32* %61, i32 0)
  %63 = call i32 @GET_MODE(i32* %62)
  %64 = load i32, i32* @VOIDmode, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32*, i32** %3, align 8
  %68 = call i32* @XEXP(i32* %67, i32 0)
  %69 = call i32 @GET_MODE(i32* %68)
  br label %74

70:                                               ; preds = %58
  %71 = load i32*, i32** %3, align 8
  %72 = call i32* @XEXP(i32* %71, i32 1)
  %73 = call i32 @GET_MODE(i32* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i32 [ %69, %66 ], [ %73, %70 ]
  %76 = load i32*, i32** %3, align 8
  %77 = call i32* @XEXP(i32* %76, i32 0)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32* @XEXP(i32* %78, i32 1)
  %80 = call i32* @simplify_relational_operation(i32 %59, i32 %60, i32 %75, i32* %77, i32* %79)
  store i32* %80, i32** %2, align 8
  br label %121

81:                                               ; preds = %1
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SUBREG, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = call i32* @SUBREG_REG(i32* %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32* @SUBREG_REG(i32* %89)
  %91 = call i32 @GET_MODE(i32* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @SUBREG_BYTE(i32* %92)
  %94 = call i32* @simplify_gen_subreg(i32 %86, i32* %88, i32 %91, i32 %93)
  store i32* %94, i32** %2, align 8
  br label %121

95:                                               ; preds = %81
  br label %120

96:                                               ; preds = %1
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @LO_SUM, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = load i32*, i32** %3, align 8
  %102 = call i32* @XEXP(i32* %101, i32 0)
  %103 = call i32 @GET_CODE(i32* %102)
  %104 = load i32, i32* @HIGH, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32*, i32** %3, align 8
  %108 = call i32* @XEXP(i32* %107, i32 0)
  %109 = call i32* @XEXP(i32* %108, i32 0)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32* @XEXP(i32* %110, i32 1)
  %112 = call i32 @rtx_equal_p(i32* %109, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32*, i32** %3, align 8
  %116 = call i32* @XEXP(i32* %115, i32 1)
  store i32* %116, i32** %2, align 8
  br label %121

117:                                              ; preds = %106, %100
  br label %118

118:                                              ; preds = %117, %96
  br label %120

119:                                              ; preds = %1
  br label %120

120:                                              ; preds = %119, %118, %95
  store i32* null, i32** %2, align 8
  br label %121

121:                                              ; preds = %120, %114, %85, %74, %45, %37, %28, %12
  %122 = load i32*, i32** %2, align 8
  ret i32* %122
}

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @GET_MODE(i32*) #1

declare dso_local i32 @GET_RTX_CLASS(i32) #1

declare dso_local i32* @simplify_unary_operation(i32, i32, i32*, i32) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i32 @swap_commutative_operands_p(i32*, i32*) #1

declare dso_local i32* @simplify_gen_binary(i32, i32, i32*, i32*) #1

declare dso_local i32* @simplify_binary_operation(i32, i32, i32*, i32*) #1

declare dso_local i32* @simplify_ternary_operation(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @simplify_relational_operation(i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @simplify_gen_subreg(i32, i32*, i32, i32) #1

declare dso_local i32* @SUBREG_REG(i32*) #1

declare dso_local i32 @SUBREG_BYTE(i32*) #1

declare dso_local i32 @rtx_equal_p(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
