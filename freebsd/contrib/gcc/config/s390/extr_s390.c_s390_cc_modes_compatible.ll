; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_cc_modes_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_cc_modes_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @s390_cc_modes_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cc_modes_compatible(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %42 [
    i32 128, label %13
    i32 133, label %35
    i32 130, label %35
    i32 132, label %35
    i32 134, label %35
    i32 131, label %35
    i32 129, label %35
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 130
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 132
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 133
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 134
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25, %22, %19, %16, %13
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %28
  %34 = load i32, i32* @VOIDmode, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %11, %11, %11, %11, %11, %11
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @VOIDmode, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %11
  %43 = load i32, i32* @VOIDmode, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %33, %31, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
