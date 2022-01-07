; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_contains_muldiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_contains_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @contains_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_muldiv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @GET_CODE(i32 %4)
  switch i32 %5, label %23 [
    i32 131, label %6
    i32 132, label %6
    i32 128, label %6
    i32 129, label %6
    i32 130, label %7
  ]

6:                                                ; preds = %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %49

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @XEXP(i32 %8, i32 1)
  %10 = call i32 @GET_CODE(i32 %9)
  %11 = load i32, i32* @CONST_INT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @XEXP(i32 %14, i32 1)
  %16 = call i32 @INTVAL(i32 %15)
  %17 = call i32 @exact_log2(i32 %16)
  %18 = icmp sge i32 %17, 0
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ false, %7 ], [ %18, %13 ]
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @BINARY_P(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  %30 = call i32 @contains_muldiv(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @XEXP(i32 %33, i32 1)
  %35 = call i32 @contains_muldiv(i32 %34)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @UNARY_P(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @XEXP(i32 %45, i32 0)
  %47 = call i32 @contains_muldiv(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %37, %19, %6
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @exact_log2(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @BINARY_P(i32) #1

declare dso_local i32 @UNARY_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
