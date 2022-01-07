; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_rtx_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_rtx_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ia64_rtx_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_rtx_costs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %83 [
    i32 139, label %11
    i32 140, label %59
    i32 141, label %62
    i32 130, label %62
    i32 137, label %62
    i32 133, label %65
    i32 132, label %77
    i32 135, label %77
    i32 143, label %77
    i32 142, label %77
    i32 136, label %77
    i32 138, label %80
    i32 129, label %80
    i32 134, label %80
    i32 128, label %80
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %43 [
    i32 131, label %13
    i32 132, label %24
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @INTVAL(i32 %14)
  %16 = call i32 @CONST_OK_FOR_J(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = call i32 @COSTS_N_INSNS(i32 1)
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %5, align 4
  br label %84

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @INTVAL(i32 %25)
  %27 = call i32 @CONST_OK_FOR_I(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  store i32 0, i32* %30, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @INTVAL(i32 %32)
  %34 = call i32 @CONST_OK_FOR_J(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %31
  %39 = call i32 @COSTS_N_INSNS(i32 1)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %36
  br label %42

42:                                               ; preds = %41, %29
  store i32 1, i32* %5, align 4
  br label %84

43:                                               ; preds = %11
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @INTVAL(i32 %44)
  %46 = call i32 @CONST_OK_FOR_K(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @INTVAL(i32 %49)
  %51 = call i32 @CONST_OK_FOR_L(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  br label %58

55:                                               ; preds = %48
  %56 = call i32 @COSTS_N_INSNS(i32 1)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %53
  store i32 1, i32* %5, align 4
  br label %84

59:                                               ; preds = %4
  %60 = call i32 @COSTS_N_INSNS(i32 1)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %5, align 4
  br label %84

62:                                               ; preds = %4, %4, %4
  %63 = call i32 @COSTS_N_INSNS(i32 3)
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  store i32 1, i32* %5, align 4
  br label %84

65:                                               ; preds = %4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @GET_MODE(i32 %66)
  %68 = call i32 @GET_MODE_SIZE(i32 %67)
  %69 = icmp sgt i32 %68, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = call i32 @COSTS_N_INSNS(i32 10)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %76

73:                                               ; preds = %65
  %74 = call i32 @COSTS_N_INSNS(i32 2)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  store i32 1, i32* %5, align 4
  br label %84

77:                                               ; preds = %4, %4, %4, %4, %4
  %78 = call i32 @COSTS_N_INSNS(i32 1)
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %5, align 4
  br label %84

80:                                               ; preds = %4, %4, %4, %4
  %81 = call i32 @COSTS_N_INSNS(i32 60)
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %80, %77, %76, %62, %59, %58, %42, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @CONST_OK_FOR_J(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @CONST_OK_FOR_I(i32) #1

declare dso_local i32 @CONST_OK_FOR_K(i32) #1

declare dso_local i32 @CONST_OK_FOR_L(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
