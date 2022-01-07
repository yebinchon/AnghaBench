; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_checklock_irqsave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_checklock_irqsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compact_control = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, %struct.compact_control*)* @compact_checklock_irqsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compact_checklock_irqsave(i32* %0, i64* %1, i32 %2, %struct.compact_control* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.compact_control*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.compact_control* %3, %struct.compact_control** %9, align 8
  %10 = call i64 (...) @need_resched()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @spin_is_contended(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %12, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load %struct.compact_control*, %struct.compact_control** %9, align 8
  %26 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.compact_control*, %struct.compact_control** %9, align 8
  %31 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %48

32:                                               ; preds = %24
  %33 = call i32 (...) @cond_resched()
  %34 = load i32, i32* @current, align 4
  %35 = call i64 @fatal_signal_pending(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %48

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %43, i64 %45)
  br label %47

47:                                               ; preds = %42, %39
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %37, %29
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @spin_is_contended(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
