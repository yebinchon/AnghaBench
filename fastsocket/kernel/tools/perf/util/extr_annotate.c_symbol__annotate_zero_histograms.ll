; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__annotate_zero_histograms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__annotate_zero_histograms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.annotation = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol__annotate_zero_histograms(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.annotation*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = load %struct.symbol*, %struct.symbol** %2, align 8
  %5 = call %struct.annotation* @symbol__annotation(%struct.symbol* %4)
  store %struct.annotation* %5, %struct.annotation** %3, align 8
  %6 = load %struct.annotation*, %struct.annotation** %3, align 8
  %7 = getelementptr inbounds %struct.annotation, %struct.annotation* %6, i32 0, i32 0
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.annotation*, %struct.annotation** %3, align 8
  %10 = getelementptr inbounds %struct.annotation, %struct.annotation* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.annotation*, %struct.annotation** %3, align 8
  %15 = getelementptr inbounds %struct.annotation, %struct.annotation* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.annotation*, %struct.annotation** %3, align 8
  %20 = getelementptr inbounds %struct.annotation, %struct.annotation* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.annotation*, %struct.annotation** %3, align 8
  %25 = getelementptr inbounds %struct.annotation, %struct.annotation* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %23, %28
  %30 = call i32 @memset(i32 %18, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %13, %1
  %32 = load %struct.annotation*, %struct.annotation** %3, align 8
  %33 = getelementptr inbounds %struct.annotation, %struct.annotation* %32, i32 0, i32 0
  %34 = call i32 @pthread_mutex_unlock(i32* %33)
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
