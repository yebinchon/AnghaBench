; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_plus_minus_operand_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_plus_minus_operand_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @plus_minus_operand_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plus_minus_operand_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @GET_CODE(i32 %3)
  %5 = load i64, i64* @PLUS, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @MINUS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @CONST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @PLUS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = call i32 @XEXP(i32 %25, i32 0)
  %27 = call i64 @CONSTANT_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i32 @XEXP(i32 %31, i32 1)
  %33 = call i64 @CONSTANT_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %29, %23, %17, %12
  %36 = phi i1 [ false, %23 ], [ false, %17 ], [ false, %12 ], [ %34, %29 ]
  br label %37

37:                                               ; preds = %35, %7, %1
  %38 = phi i1 [ true, %7 ], [ true, %1 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
