; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_move_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_move_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_move_ok(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @GET_CODE(i64 %6)
  %8 = load i64, i64* @MEM, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  %14 = load i64, i64* @MEM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @VOIDmode, align 4
  %20 = call i64 @register_operand(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %45

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @GET_MODE(i64 %24)
  %26 = call i64 @INTEGRAL_MODE_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @const0_rtx, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @CONST_DOUBLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @CONST_DOUBLE_OK_FOR_G(i64 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %28, %22, %16, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @register_operand(i64, i32) #1

declare dso_local i64 @INTEGRAL_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @CONST_DOUBLE_OK_FOR_G(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
