; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_disable_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_disable_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i64, i32, %struct.vhost_virtqueue* }
%struct.vhost_virtqueue = type { i32 }

@VHOST_NET_VQ_TX = common dso_local global i32 0, align 4
@VHOST_NET_POLL_DISABLED = common dso_local global i32 0, align 4
@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.vhost_virtqueue*)* @vhost_net_disable_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_disable_vq(%struct.vhost_net* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  %5 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %6 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %12 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %13 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %12, i32 0, i32 2
  %14 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %13, align 8
  %15 = load i32, i32* @VHOST_NET_VQ_TX, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %14, i64 %16
  %18 = icmp eq %struct.vhost_virtqueue* %11, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %21 = call i32 @tx_poll_stop(%struct.vhost_net* %20)
  %22 = load i32, i32* @VHOST_NET_POLL_DISABLED, align 4
  %23 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %24 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %32

25:                                               ; preds = %10
  %26 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %27 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @vhost_poll_stop(i64 %30)
  br label %32

32:                                               ; preds = %9, %25, %19
  ret void
}

declare dso_local i32 @tx_poll_stop(%struct.vhost_net*) #1

declare dso_local i32 @vhost_poll_stop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
