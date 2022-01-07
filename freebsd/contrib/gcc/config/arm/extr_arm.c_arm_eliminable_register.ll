; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_eliminable_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_eliminable_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@FIRST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8
@LAST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_eliminable_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @REG_P(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @REGNO(i32 %7)
  %9 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @REGNO(i32 %12)
  %14 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @REGNO(i32 %17)
  %19 = load i64, i64* @FIRST_VIRTUAL_REGISTER, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @REGNO(i32 %22)
  %24 = load i64, i64* @LAST_VIRTUAL_REGISTER, align 8
  %25 = icmp sle i64 %23, %24
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br label %28

28:                                               ; preds = %26, %11, %6
  %29 = phi i1 [ true, %11 ], [ true, %6 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i1 [ false, %1 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
