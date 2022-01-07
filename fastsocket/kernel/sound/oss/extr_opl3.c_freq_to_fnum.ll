; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_freq_to_fnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_freq_to_fnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @freq_to_fnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freq_to_fnum(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %7, align 4
  store i32 5, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %41

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 261
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %20, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 261
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %17

25:                                               ; preds = %17
  br label %40

26:                                               ; preds = %13
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 493
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 493
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %26
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %12
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 7
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 7, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 20, %47
  %49 = shl i32 1, %48
  %50 = mul nsw i32 %46, %49
  %51 = sdiv i32 %50, 49716
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
