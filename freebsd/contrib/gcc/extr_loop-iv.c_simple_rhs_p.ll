; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simple_rhs_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simple_rhs_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simple_rhs_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_rhs_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @CONSTANT_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @REG_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %41

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @GET_CODE(i32 %15)
  switch i32 %16, label %40 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @XEXP(i32 %20, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @REG_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @CONSTANT_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %41

30:                                               ; preds = %25, %17
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @REG_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @CONSTANT_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %41

39:                                               ; preds = %34, %30
  store i32 0, i32* %2, align 4
  br label %41

40:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %38, %29, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
