; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_register_move_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_register_move_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDL_REGS = common dso_local global i32 0, align 4
@XFmode = common dso_local global i32 0, align 4
@RFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_register_move_cost(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ADDL_REGS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 129, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ADDL_REGS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 129, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @XFmode, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RFmode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 129
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 129
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @MEMORY_MOVE_COST(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %37
  store i32 3, i32* %4, align 4
  br label %82

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %79 [
    i32 128, label %47
    i32 134, label %59
    i32 136, label %70
    i32 135, label %70
    i32 129, label %78
    i32 132, label %78
    i32 133, label %78
    i32 130, label %78
    i32 131, label %78
    i32 137, label %78
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 3, i32* %4, align 4
  br label %82

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 129
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MEMORY_MOVE_COST(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %4, align 4
  br label %82

58:                                               ; preds = %51
  br label %81

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 129
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 131
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @MEMORY_MOVE_COST(i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %4, align 4
  br label %82

69:                                               ; preds = %62, %59
  br label %81

70:                                               ; preds = %45, %45
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 129
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @MEMORY_MOVE_COST(i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %4, align 4
  br label %82

77:                                               ; preds = %70
  br label %81

78:                                               ; preds = %45, %45, %45, %45, %45, %45
  br label %81

79:                                               ; preds = %45
  %80 = call i32 (...) @gcc_unreachable()
  br label %81

81:                                               ; preds = %79, %78, %77, %69, %58
  store i32 2, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %73, %65, %54, %50, %44, %40
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @MEMORY_MOVE_COST(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
