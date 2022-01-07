; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_garmin_gps.c_pkt_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_garmin_gps.c_pkt_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garmin_packet = type { i32 }
%struct.garmin_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.garmin_packet* (%struct.garmin_data*)* @pkt_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.garmin_packet* @pkt_pop(%struct.garmin_data* %0) #0 {
  %2 = alloca %struct.garmin_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.garmin_packet*, align 8
  store %struct.garmin_data* %0, %struct.garmin_data** %2, align 8
  store %struct.garmin_packet* null, %struct.garmin_packet** %4, align 8
  %5 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %6 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %10 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %9, i32 0, i32 1
  %11 = call i32 @list_empty(%struct.TYPE_2__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %15 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.garmin_packet*
  store %struct.garmin_packet* %18, %struct.garmin_packet** %4, align 8
  %19 = load %struct.garmin_packet*, %struct.garmin_packet** %4, align 8
  %20 = getelementptr inbounds %struct.garmin_packet, %struct.garmin_packet* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %24 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.garmin_packet*, %struct.garmin_packet** %4, align 8
  ret %struct.garmin_packet* %27
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
