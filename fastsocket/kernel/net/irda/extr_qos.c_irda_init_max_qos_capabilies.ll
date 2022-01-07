; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_qos.c_irda_init_max_qos_capabilies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_qos.c_irda_init_max_qos_capabilies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qos_info = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@sysctl_max_baud_rate = common dso_local global i32 0, align 4
@baud_rates = common dso_local global i32 0, align 4
@sysctl_max_noreply_time = common dso_local global i32 0, align 4
@link_disc_times = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irda_init_max_qos_capabilies(%struct.qos_info* %0) #0 {
  %2 = alloca %struct.qos_info*, align 8
  %3 = alloca i32, align 4
  store %struct.qos_info* %0, %struct.qos_info** %2, align 8
  %4 = load i32, i32* @sysctl_max_baud_rate, align 4
  %5 = load i32, i32* @baud_rates, align 4
  %6 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %7 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = call i32 @value_lower_bits(i32 %4, i32 %5, i32 10, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @baud_rates, align 4
  %12 = call i32 @index_value(i32 %10, i32 %11)
  store i32 %12, i32* @sysctl_max_baud_rate, align 4
  %13 = load i32, i32* @sysctl_max_noreply_time, align 4
  %14 = load i32, i32* @link_disc_times, align 4
  %15 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %16 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = call i32 @value_lower_bits(i32 %13, i32 %14, i32 8, i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @link_disc_times, align 4
  %21 = call i32 @index_value(i32 %19, i32 %20)
  store i32 %21, i32* @sysctl_max_noreply_time, align 4
  %22 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %23 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1023
  store i32 %26, i32* %24, align 4
  %27 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %28 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 127, i32* %29, align 4
  %30 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %31 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 255, i32* %32, align 4
  %33 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %34 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 15, i32* %35, align 4
  %36 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %37 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 63, i32* %38, align 4
  %39 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %40 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %41, align 4
  %44 = load %struct.qos_info*, %struct.qos_info** %2, align 8
  %45 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i32 255, i32* %46, align 4
  ret void
}

declare dso_local i32 @value_lower_bits(i32, i32, i32, i32*) #1

declare dso_local i32 @index_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
