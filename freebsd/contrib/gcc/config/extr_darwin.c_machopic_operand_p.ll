; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_operand_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_operand_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHOPIC_JUST_INDIRECT = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machopic_operand_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @MACHOPIC_JUST_INDIRECT, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %12, %6
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @CONST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  store i32 %14, i32* %3, align 4
  br label %7

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @SYMBOL_REF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @machopic_symbol_defined_p(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %62

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %30, %24
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @GET_CODE(i32 %26)
  %28 = load i64, i64* @CONST, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @XEXP(i32 %31, i32 0)
  store i32 %32, i32* %3, align 4
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @GET_CODE(i32 %34)
  %36 = load i64, i64* @MINUS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @XEXP(i32 %39, i32 0)
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @SYMBOL_REF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @XEXP(i32 %45, i32 1)
  %47 = call i64 @GET_CODE(i32 %46)
  %48 = load i64, i64* @SYMBOL_REF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @XEXP(i32 %51, i32 0)
  %53 = call i32 @machopic_symbol_defined_p(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @XEXP(i32 %56, i32 1)
  %58 = call i32 @machopic_symbol_defined_p(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %62

61:                                               ; preds = %55, %50, %44, %38, %33
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %23, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @machopic_symbol_defined_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
