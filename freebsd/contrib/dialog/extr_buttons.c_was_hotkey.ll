; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_was_hotkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buttons.c_was_hotkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @was_hotkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @was_hotkey(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %13

30:                                               ; preds = %24, %13
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
