; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i64 }
%struct.socket = type { i32 }

@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.socket**, %struct.socket**)* @vhost_net_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_stop(%struct.vhost_net* %0, %struct.socket** %1, %struct.socket** %2) #0 {
  %4 = alloca %struct.vhost_net*, align 8
  %5 = alloca %struct.socket**, align 8
  %6 = alloca %struct.socket**, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %4, align 8
  store %struct.socket** %1, %struct.socket*** %5, align 8
  store %struct.socket** %2, %struct.socket*** %6, align 8
  %7 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %8 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %9 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %12 = add nsw i64 %10, %11
  %13 = call %struct.socket* @vhost_net_stop_vq(%struct.vhost_net* %7, i64 %12)
  %14 = load %struct.socket**, %struct.socket*** %5, align 8
  store %struct.socket* %13, %struct.socket** %14, align 8
  %15 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %16 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %17 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %20 = add nsw i64 %18, %19
  %21 = call %struct.socket* @vhost_net_stop_vq(%struct.vhost_net* %15, i64 %20)
  %22 = load %struct.socket**, %struct.socket*** %6, align 8
  store %struct.socket* %21, %struct.socket** %22, align 8
  ret void
}

declare dso_local %struct.socket* @vhost_net_stop_vq(%struct.vhost_net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
