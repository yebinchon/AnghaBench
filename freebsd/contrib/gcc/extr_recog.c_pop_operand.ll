; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_pop_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_pop_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@STACK_POP_CODE = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop_operand(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @MEM_P(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VOIDmode, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @GET_MODE(i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %34

20:                                               ; preds = %14, %10
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @XEXP(i64 %21, i32 0)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @GET_CODE(i64 %23)
  %25 = load i64, i64* @STACK_POP_CODE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @XEXP(i64 %29, i32 0)
  %31 = load i64, i64* @stack_pointer_rtx, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %27, %19, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
