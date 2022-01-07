; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sigchain.c_sigchain_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sigchain.c_sigchain_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigchain_signal = type { i64*, i32, i32 }

@signals = common dso_local global %struct.sigchain_signal* null, align 8
@SIG_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sigchain_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigchain_push(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigchain_signal*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sigchain_signal*, %struct.sigchain_signal** @signals, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %7, i64 %9
  store %struct.sigchain_signal* %10, %struct.sigchain_signal** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @check_signum(i32 %11)
  %13 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %14 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %17 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %21 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ALLOC_GROW(i64* %15, i32 %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @signal(i32 %24, i32 %25)
  %27 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %28 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %31 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  store i64 %26, i64* %34, align 8
  %35 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %36 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %39 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SIG_ERR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

47:                                               ; preds = %2
  %48 = load %struct.sigchain_signal*, %struct.sigchain_signal** %6, align 8
  %49 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @check_signum(i32) #1

declare dso_local i32 @ALLOC_GROW(i64*, i32, i32) #1

declare dso_local i64 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
