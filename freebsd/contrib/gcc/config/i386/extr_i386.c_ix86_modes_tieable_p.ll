; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_modes_tieable_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_modes_tieable_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFmode = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@FIRST_MMX_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_modes_tieable_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ix86_tieable_integer_mode_p(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @ix86_tieable_integer_mode_p(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %70

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @XFmode, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SFmode, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DFmode, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DFmode, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SFmode, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %70

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @GET_MODE_SIZE(i32 %44)
  %46 = icmp sge i32 %45, 8
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* @FIRST_SSE_REG, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ix86_hard_regno_mode_ok(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @FIRST_SSE_REG, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ix86_hard_regno_mode_ok(i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %70

56:                                               ; preds = %47, %43
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @GET_MODE_SIZE(i32 %57)
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* @FIRST_MMX_REG, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ix86_hard_regno_mode_ok(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @FIRST_MMX_REG, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ix86_hard_regno_mode_ok(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %60, %56
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65, %52, %38, %31, %18, %9
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @ix86_tieable_integer_mode_p(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @ix86_hard_regno_mode_ok(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
