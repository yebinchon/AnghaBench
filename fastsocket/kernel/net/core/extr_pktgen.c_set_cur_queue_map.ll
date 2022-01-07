; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_set_cur_queue_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_set_cur_queue_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@F_QUEUE_MAP_CPU = common dso_local global i32 0, align 4
@F_QUEUE_MAP_RND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*)* @set_cur_queue_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cur_queue_map(%struct.pktgen_dev* %0) #0 {
  %2 = alloca %struct.pktgen_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %2, align 8
  %4 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @F_QUEUE_MAP_CPU, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i64 (...) @smp_processor_id()
  %12 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %14
  %23 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @F_QUEUE_MAP_RND, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = call i32 (...) @random32()
  %31 = sext i32 %30 to i64
  %32 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = add nsw i64 %38, 1
  %40 = srem i64 %31, %39
  %41 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %42 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  store i64 %44, i64* %3, align 8
  br label %60

45:                                               ; preds = %22
  %46 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %47 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %52 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %57 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %63 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %14
  br label %65

65:                                               ; preds = %64, %10
  %66 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %70 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %69, i32 0, i32 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = srem i64 %68, %74
  %76 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %77 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @random32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
