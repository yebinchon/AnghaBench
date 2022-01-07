; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_convert_to_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_convert_to_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPLEX_EXPR = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"pointer value used where a complex was expected\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"aggregate value used where a complex was expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_to_complex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_TYPE(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = call i32 @TREE_CODE(i32 %11)
  switch i32 %12, label %78 [
    i32 129, label %13
    i32 131, label %13
    i32 132, label %13
    i32 134, label %13
    i32 133, label %23
    i32 130, label %73
    i32 128, label %73
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load i32, i32* @COMPLEX_EXPR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @convert(i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @integer_zero_node, align 4
  %21 = call i32 @convert(i32 %19, i32 %20)
  %22 = call i32 @build2(i32 %14, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TREE_TYPE(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @TYPE_MAIN_VARIANT(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @TYPE_MAIN_VARIANT(i32 %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @TREE_CODE(i32 %35)
  %37 = load i32, i32* @COMPLEX_EXPR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* @COMPLEX_EXPR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TREE_OPERAND(i32 %43, i32 0)
  %45 = call i32 @convert(i32 %42, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @TREE_OPERAND(i32 %47, i32 1)
  %49 = call i32 @convert(i32 %46, i32 %48)
  %50 = call i32 @fold_build2(i32 %40, i32 %41, i32 %45, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %83

51:                                               ; preds = %34
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @save_expr(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @COMPLEX_EXPR, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @REALPART_EXPR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @TREE_TYPE(i32 %58)
  %60 = call i32 @TREE_TYPE(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @fold_build1(i32 %57, i32 %60, i32 %61)
  %63 = call i32 @convert(i32 %56, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @IMAGPART_EXPR, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @TREE_TYPE(i32 %66)
  %68 = call i32 @TREE_TYPE(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @fold_build1(i32 %65, i32 %68, i32 %69)
  %71 = call i32 @convert(i32 %64, i32 %70)
  %72 = call i32 @fold_build2(i32 %54, i32 %55, i32 %63, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %2, %2
  %74 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @integer_zero_node, align 4
  %77 = call i32 @convert_to_complex(i32 %75, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %2
  %79 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @integer_zero_node, align 4
  %82 = call i32 @convert_to_complex(i32 %80, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %73, %51, %39, %32, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @save_expr(i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
