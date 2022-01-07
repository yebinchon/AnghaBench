; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_xmalloc.c_xrealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_xmalloc.c_xrealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xrealloc(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 1, i64* %4, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @malloc(i64 %13)
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @realloc(i32 %16, i64 %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @xmalloc_failed(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @realloc(i32, i64) #1

declare dso_local i32 @xmalloc_failed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
