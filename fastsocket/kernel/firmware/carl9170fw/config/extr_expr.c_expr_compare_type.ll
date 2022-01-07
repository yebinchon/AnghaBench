; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_compare_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_compare_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_compare_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %37 [
    i32 132, label %12
    i32 128, label %12
    i32 130, label %17
    i32 133, label %22
    i32 129, label %27
    i32 131, label %32
  ]

12:                                               ; preds = %10, %10
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 130
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %38

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %10, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 133
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %38

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %10, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %38

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %10, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %38

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %10, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %38

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %10, %36
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35, %30, %25, %20, %15, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
