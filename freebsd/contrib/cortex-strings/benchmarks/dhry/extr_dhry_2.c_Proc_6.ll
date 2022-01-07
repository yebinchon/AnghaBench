; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/cortex-strings/benchmarks/dhry/extr_dhry_2.c_Proc_6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/cortex-strings/benchmarks/dhry/extr_dhry_2.c_Proc_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Int_Glob = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Proc_6(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Func_3(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  store i32 129, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %29 [
    i32 132, label %14
    i32 131, label %16
    i32 130, label %24
    i32 129, label %26
    i32 128, label %27
  ]

14:                                               ; preds = %12
  %15 = load i32*, i32** %4, align 8
  store i32 132, i32* %15, align 4
  br label %29

16:                                               ; preds = %12
  %17 = load i32, i32* @Int_Glob, align 4
  %18 = icmp sgt i32 %17, 100
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  store i32 132, i32* %20, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  store i32 129, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %29

24:                                               ; preds = %12
  %25 = load i32*, i32** %4, align 8
  store i32 131, i32* %25, align 4
  br label %29

26:                                               ; preds = %12
  br label %29

27:                                               ; preds = %12
  %28 = load i32*, i32** %4, align 8
  store i32 130, i32* %28, align 4
  br label %29

29:                                               ; preds = %12, %27, %26, %24, %23, %14
  ret void
}

declare dso_local i32 @Func_3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
