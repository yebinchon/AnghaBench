; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_update_cpu_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_update_cpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i64, i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@CPU_LOAD_IDX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*)* @update_cpu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cpu_load(%struct.rq* %0) #0 {
  %2 = alloca %struct.rq*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rq* %0, %struct.rq** %2, align 8
  %10 = load %struct.rq*, %struct.rq** %2, align 8
  %11 = getelementptr inbounds %struct.rq, %struct.rq* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.rq*, %struct.rq** %2, align 8
  %16 = getelementptr inbounds %struct.rq, %struct.rq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.rq*, %struct.rq** %2, align 8
  %21 = getelementptr inbounds %struct.rq, %struct.rq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %89

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.rq*, %struct.rq** %2, align 8
  %28 = getelementptr inbounds %struct.rq, %struct.rq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.rq*, %struct.rq** %2, align 8
  %33 = getelementptr inbounds %struct.rq, %struct.rq* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.rq*, %struct.rq** %2, align 8
  %36 = getelementptr inbounds %struct.rq, %struct.rq* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %34, i64* %38, align 8
  store i32 1, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %39

39:                                               ; preds = %83, %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CPU_LOAD_IDX_MAX, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %39
  %44 = load %struct.rq*, %struct.rq** %2, align 8
  %45 = getelementptr inbounds %struct.rq, %struct.rq* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub i64 %52, 1
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @decay_load_missed(i64 %51, i64 %53, i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %3, align 8
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %60, %43
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %67, %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = lshr i64 %73, %75
  %77 = load %struct.rq*, %struct.rq** %2, align 8
  %78 = getelementptr inbounds %struct.rq, %struct.rq* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %76, i64* %82, align 8
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %39

89:                                               ; preds = %24, %39
  ret void
}

declare dso_local i64 @decay_load_missed(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
