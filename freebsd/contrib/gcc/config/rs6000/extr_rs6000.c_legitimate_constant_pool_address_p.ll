; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_constant_pool_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_constant_pool_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_TOC = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@TARGET_MINIMAL_TOC = common dso_local global i64 0, align 8
@TOC_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_constant_pool_address_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @TARGET_TOC, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @GET_CODE(i32 %6)
  %8 = load i64, i64* @PLUS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @XEXP(i32 %11, i32 0)
  %13 = call i64 @GET_CODE(i32 %12)
  %14 = load i64, i64* @REG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load i64, i64* @TARGET_MINIMAL_TOC, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  %22 = call i64 @REGNO(i32 %21)
  %23 = load i64, i64* @TOC_REGISTER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @XEXP(i32 %26, i32 1)
  %28 = call i64 @constant_pool_expr_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %19, %10, %5, %1
  %31 = phi i1 [ false, %19 ], [ false, %10 ], [ false, %5 ], [ false, %1 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @constant_pool_expr_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
