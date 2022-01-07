; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_scratch_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_scratch_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scratch_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @GET_MODE(i32 %6)
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VOIDmode, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %34

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @SCRATCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @REG_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @REGNO(i32 %25)
  %27 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %28 = icmp slt i64 %26, %27
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br label %31

31:                                               ; preds = %29, %15
  %32 = phi i1 [ true, %15 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
