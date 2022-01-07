; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simple_reg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simple_reg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simple_reg_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_reg_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @GET_CODE(i32 %5)
  %7 = load i64, i64* @SUBREG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @subreg_lowpart_p(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %37

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @SUBREG_REG(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @REG_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @REGNO(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @HARD_REGISTER_NUM_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @GET_MODE(i32 %30)
  %32 = call i64 @GET_MODE_CLASS(i32 %31)
  %33 = load i64, i64* @MODE_INT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %28, %21, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @subreg_lowpart_p(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @HARD_REGISTER_NUM_P(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
