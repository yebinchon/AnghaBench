; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_cannot_change_mode_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_cannot_change_mode_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_cannot_change_mode_class(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @MAYBE_FLOAT_CLASS_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %39

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @MAYBE_SSE_CLASS_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @MAYBE_MMX_CLASS_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GET_MODE_SIZE(i32 %26)
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @GET_MODE_SIZE(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @GET_MODE_SIZE(i32 %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %39

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %21
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %36, %29, %16, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @MAYBE_FLOAT_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_SSE_CLASS_P(i32) #1

declare dso_local i64 @MAYBE_MMX_CLASS_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
