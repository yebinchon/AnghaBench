; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_powixf2.c___powixf2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_powixf2.c___powixf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @__powixf2(x86_fp80 %0, i32 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %5, align 4
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %6, align 16
  br label %10

10:                                               ; preds = %2, %24
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load x86_fp80, x86_fp80* %3, align 16
  %16 = load x86_fp80, x86_fp80* %6, align 16
  %17 = fmul x86_fp80 %16, %15
  store x86_fp80 %17, x86_fp80* %6, align 16
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  %25 = load x86_fp80, x86_fp80* %3, align 16
  %26 = load x86_fp80, x86_fp80* %3, align 16
  %27 = fmul x86_fp80 %26, %25
  store x86_fp80 %27, x86_fp80* %3, align 16
  br label %10

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load x86_fp80, x86_fp80* %6, align 16
  %33 = fdiv x86_fp80 0xK3FFF8000000000000000, %32
  br label %36

34:                                               ; preds = %28
  %35 = load x86_fp80, x86_fp80* %6, align 16
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi x86_fp80 [ %33, %31 ], [ %35, %34 ]
  ret x86_fp80 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
