; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_referenced_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_referenced_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*)* @rtx_referenced_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtx_referenced_p_1(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NULL_RTX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NULL_RTX, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @LABEL_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @LABEL_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @XEXP(i64 %30, i32 0)
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %24, %18
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @GET_CODE(i64 %37)
  %39 = load i64, i64* @SYMBOL_REF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @get_pool_constant(i64 %49)
  %51 = call i32 @rtx_referenced_p(i64 %47, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %41, %35
  %53 = load i64*, i64** %4, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @rtx_equal_p(i64 %54, i64 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %46, %28, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i32 @rtx_referenced_p(i64, i32) #1

declare dso_local i32 @get_pool_constant(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
