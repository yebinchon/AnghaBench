; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_component_in_loop_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_component_in_loop_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @chrec_component_in_loop_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chrec_component_in_loop_num(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @automatically_generated_chrec_p(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  br label %74

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TREE_CODE(i32 %15)
  switch i32 %16, label %67 [
    i32 128, label %17
  ]

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CHREC_VARIABLE(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @CHREC_RIGHT(i32 %26)
  store i32 %27, i32* %8, align 4
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @CHREC_LEFT(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @CHREC_LEFT(i32 %32)
  %34 = call i32 @TREE_CODE(i32 %33)
  %35 = icmp ne i32 %34, 128
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @CHREC_LEFT(i32 %37)
  %39 = call i32 @CHREC_VARIABLE(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @CHREC_VARIABLE(i32 %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CHREC_LEFT(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @chrec_component_in_loop_num(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @build_polynomial_chrec(i32 %46, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %74

54:                                               ; preds = %17
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @CHREC_VARIABLE(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @NULL_TREE, align 4
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @CHREC_LEFT(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @chrec_component_in_loop_num(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %14
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @NULL_TREE, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %70, %61, %59, %45, %43, %12
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @automatically_generated_chrec_p(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
