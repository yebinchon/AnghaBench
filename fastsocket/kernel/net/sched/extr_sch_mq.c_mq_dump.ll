; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_mq.c_mq_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @mq_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 1
  %15 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 56)
  %16 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %17 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %16, i32 0, i32 0
  %18 = call i32 @memset(%struct.TYPE_6__* %17, i32 0, i32 56)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %109, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %112

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_5__* @netdev_get_tx_queue(%struct.net_device* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.Qdisc*, %struct.Qdisc** %29, align 8
  store %struct.Qdisc* %30, %struct.Qdisc** %6, align 8
  %31 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %32 = call i32 @qdisc_lock(%struct.Qdisc* %31)
  %33 = call i32 @spin_lock_bh(i32 %32)
  %34 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %35 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %39 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %48 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %46
  store i64 %51, i64* %49, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %53 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %55
  store i64 %60, i64* %58, align 8
  %61 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %62 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %64
  store i64 %69, i64* %67, align 8
  %70 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %71 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %75 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %73
  store i64 %78, i64* %76, align 8
  %79 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %80 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %82
  store i64 %87, i64* %85, align 8
  %88 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %89 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %93 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %98 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %102 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %100
  store i64 %105, i64* %103, align 8
  %106 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %107 = call i32 @qdisc_lock(%struct.Qdisc* %106)
  %108 = call i32 @spin_unlock_bh(i32 %107)
  br label %109

109:                                              ; preds = %25
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %19

112:                                              ; preds = %19
  ret i32 0
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
