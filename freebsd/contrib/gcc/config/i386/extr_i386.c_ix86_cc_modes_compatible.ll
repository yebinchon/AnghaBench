; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_cc_modes_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_cc_modes_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_CC = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ix86_cc_modes_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_cc_modes_compatible(i32 %0, i32 %1) #0 {
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
  br label %47

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @GET_MODE_CLASS(i32 %12)
  %14 = load i64, i64* @MODE_CC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @GET_MODE_CLASS(i32 %17)
  %19 = load i64, i64* @MODE_CC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %11
  %22 = load i32, i32* @VOIDmode, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 132
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 132
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %26
  store i32 132, i32* %3, align 4
  br label %47

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %38 [
    i32 128, label %40
    i32 132, label %40
    i32 131, label %40
    i32 130, label %40
    i32 129, label %40
    i32 133, label %45
    i32 134, label %45
  ]

38:                                               ; preds = %36
  %39 = call i32 (...) @gcc_unreachable()
  br label %40

40:                                               ; preds = %36, %36, %36, %36, %36, %38
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %42 [
    i32 128, label %44
    i32 132, label %44
    i32 131, label %44
    i32 130, label %44
    i32 129, label %44
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @VOIDmode, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %40, %40, %40, %40, %40
  store i32 128, i32* %3, align 4
  br label %47

45:                                               ; preds = %36, %36
  %46 = load i32, i32* @VOIDmode, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %44, %42, %35, %21, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
