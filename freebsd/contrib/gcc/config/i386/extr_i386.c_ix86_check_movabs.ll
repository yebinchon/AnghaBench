; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_check_movabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_check_movabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@volatile_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_check_movabs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @PATTERN(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @PARALLEL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @XVECEXP(i32 %14, i32 0, i32 0)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SET, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @XEXP(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %31, %16
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @SUBREG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SUBREG_REG(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @GET_CODE(i32 %35)
  %37 = load i64, i64* @MEM, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i64, i64* @volatile_ok, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @MEM_VOLATILE_P(i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %43, %34
  %49 = phi i1 [ true, %34 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
