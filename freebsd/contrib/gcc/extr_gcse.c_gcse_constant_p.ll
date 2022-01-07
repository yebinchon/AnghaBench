; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_gcse_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_gcse_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPARE = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gcse_constant_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcse_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @COMPARE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @XEXP(i32 %9, i32 0)
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @CONST_INT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 1)
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @CONST_INT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %60

21:                                               ; preds = %14, %8, %1
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = load i64, i64* @COMPARE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = call i64 @REG_P(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @XEXP(i32 %32, i32 1)
  %34 = call i64 @REG_P(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i64 @REGNO(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @XEXP(i32 %40, i32 1)
  %42 = call i64 @REGNO(i32 %41)
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @XEXP(i32 %45, i32 0)
  %47 = call i32 @GET_MODE(i32 %46)
  %48 = call i32 @FLOAT_MODE_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @XEXP(i32 %51, i32 1)
  %53 = call i32 @GET_MODE(i32 %52)
  %54 = call i32 @FLOAT_MODE_P(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %60

57:                                               ; preds = %50, %44, %36, %31, %26, %21
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @CONSTANT_P(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %56, %20
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
