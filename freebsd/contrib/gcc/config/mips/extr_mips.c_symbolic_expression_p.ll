; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_symbolic_expression_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_symbolic_expression_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMBOL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @symbolic_expression_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbolic_expression_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @SYMBOL_REF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @CONST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  %17 = call i32 @symbolic_expression_p(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @UNARY_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @XEXP(i32 %23, i32 0)
  %25 = call i32 @symbolic_expression_p(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @ARITHMETIC_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @XEXP(i32 %31, i32 0)
  %33 = call i32 @symbolic_expression_p(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @XEXP(i32 %36, i32 1)
  %38 = call i32 @symbolic_expression_p(i32 %37)
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ true, %30 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %22, %14, %8
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @UNARY_P(i32) #1

declare dso_local i64 @ARITHMETIC_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
