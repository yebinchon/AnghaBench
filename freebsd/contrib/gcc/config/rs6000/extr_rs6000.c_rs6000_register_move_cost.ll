; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_register_move_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_register_move_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERAL_REGS = common dso_local global i32 0, align 4
@FLOAT_REGS = common dso_local global i32 0, align 4
@ALTIVEC_REGS = common dso_local global i32 0, align 4
@CR_REGS = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@TFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_register_move_cost(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GENERAL_REGS, align 4
  %10 = call i64 @reg_classes_intersect_p(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GENERAL_REGS, align 4
  %15 = call i64 @reg_classes_intersect_p(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GENERAL_REGS, align 4
  %20 = call i64 @reg_classes_intersect_p(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FLOAT_REGS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ALTIVEC_REGS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @rs6000_memory_move_cost(i32 %33, i32 %34, i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @GENERAL_REGS, align 4
  %38 = call i32 @rs6000_memory_move_cost(i32 %36, i32 %37, i32 0)
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %4, align 4
  br label %75

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CR_REGS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 4, i32* %4, align 4
  br label %75

45:                                               ; preds = %40
  %46 = load i32**, i32*** @hard_regno_nregs, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 2, %52
  store i32 %53, i32* %4, align 4
  br label %75

54:                                               ; preds = %12
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @reg_classes_intersect_p(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @TFmode, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 4, i32 2
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @GENERAL_REGS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @rs6000_register_move_cost(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @GENERAL_REGS, align 4
  %73 = call i32 @rs6000_register_move_cost(i32 %70, i32 %71, i32 %72)
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %59, %45, %44, %32
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @reg_classes_intersect_p(i32, i32) #1

declare dso_local i32 @rs6000_memory_move_cost(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
