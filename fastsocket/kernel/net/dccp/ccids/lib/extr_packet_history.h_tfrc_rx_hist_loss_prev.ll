; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_packet_history.h_tfrc_rx_hist_loss_prev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/lib/extr_packet_history.h_tfrc_rx_hist_loss_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfrc_rx_hist_entry = type { i32 }
%struct.tfrc_rx_hist = type { i64, %struct.tfrc_rx_hist_entry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tfrc_rx_hist_entry* (%struct.tfrc_rx_hist*)* @tfrc_rx_hist_loss_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tfrc_rx_hist_entry* @tfrc_rx_hist_loss_prev(%struct.tfrc_rx_hist* %0) #0 {
  %2 = alloca %struct.tfrc_rx_hist*, align 8
  store %struct.tfrc_rx_hist* %0, %struct.tfrc_rx_hist** %2, align 8
  %3 = load %struct.tfrc_rx_hist*, %struct.tfrc_rx_hist** %2, align 8
  %4 = getelementptr inbounds %struct.tfrc_rx_hist, %struct.tfrc_rx_hist* %3, i32 0, i32 1
  %5 = load %struct.tfrc_rx_hist_entry**, %struct.tfrc_rx_hist_entry*** %4, align 8
  %6 = load %struct.tfrc_rx_hist*, %struct.tfrc_rx_hist** %2, align 8
  %7 = getelementptr inbounds %struct.tfrc_rx_hist, %struct.tfrc_rx_hist* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.tfrc_rx_hist_entry*, %struct.tfrc_rx_hist_entry** %5, i64 %8
  %10 = load %struct.tfrc_rx_hist_entry*, %struct.tfrc_rx_hist_entry** %9, align 8
  ret %struct.tfrc_rx_hist_entry* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
