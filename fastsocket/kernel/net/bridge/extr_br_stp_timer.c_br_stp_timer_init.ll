; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_stp_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_stp_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i32, i32, i32 }

@br_hello_timer_expired = common dso_local global i32 0, align 4
@br_tcn_timer_expired = common dso_local global i32 0, align 4
@br_topology_change_timer_expired = common dso_local global i32 0, align 4
@br_fdb_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_stp_timer_init(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %3 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %4 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %3, i32 0, i32 3
  %5 = load i32, i32* @br_hello_timer_expired, align 4
  %6 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %7 = ptrtoint %struct.net_bridge* %6 to i64
  %8 = call i32 @setup_timer(i32* %4, i32 %5, i64 %7)
  %9 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 2
  %11 = load i32, i32* @br_tcn_timer_expired, align 4
  %12 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %13 = ptrtoint %struct.net_bridge* %12 to i64
  %14 = call i32 @setup_timer(i32* %10, i32 %11, i64 %13)
  %15 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 1
  %17 = load i32, i32* @br_topology_change_timer_expired, align 4
  %18 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %19 = ptrtoint %struct.net_bridge* %18 to i64
  %20 = call i32 @setup_timer(i32* %16, i32 %17, i64 %19)
  %21 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %22 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %21, i32 0, i32 0
  %23 = load i32, i32* @br_fdb_cleanup, align 4
  %24 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %25 = ptrtoint %struct.net_bridge* %24 to i64
  %26 = call i32 @setup_timer(i32* %22, i32 %23, i64 %25)
  ret void
}

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
