; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_decay_load_missed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_decay_load_missed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@degrade_zero_ticks = common dso_local global i64* null, align 8
@degrade_factor = common dso_local global i64** null, align 8
@DEGRADE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @decay_load_missed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decay_load_missed(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %4, align 8
  br label %58

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** @degrade_zero_ticks, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %58

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %4, align 8
  br label %58

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = urem i64 %34, 2
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i64**, i64*** @degrade_factor, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64*, i64** %39, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %38, %47
  %49 = load i64, i64* @DEGRADE_SHIFT, align 8
  %50 = lshr i64 %48, %49
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %37, %33
  %52 = load i64, i64* %6, align 8
  %53 = lshr i64 %52, 1
  store i64 %53, i64* %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %25, %21, %11
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
