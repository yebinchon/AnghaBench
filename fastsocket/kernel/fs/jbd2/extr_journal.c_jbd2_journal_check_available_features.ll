; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_check_available_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_check_available_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@JBD2_KNOWN_COMPAT_FEATURES = common dso_local global i64 0, align 8
@JBD2_KNOWN_ROCOMPAT_FEATURES = common dso_local global i64 0, align 8
@JBD2_KNOWN_INCOMPAT_FEATURES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_check_available_features(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %49

20:                                               ; preds = %16, %13, %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %49

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @JBD2_KNOWN_COMPAT_FEATURES, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @JBD2_KNOWN_ROCOMPAT_FEATURES, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @JBD2_KNOWN_INCOMPAT_FEATURES, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %49

48:                                               ; preds = %41, %35, %29
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %28, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
