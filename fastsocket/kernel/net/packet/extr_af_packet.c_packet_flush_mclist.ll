; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_flush_mclist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_flush_mclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_sock = type { %struct.packet_mclist* }
%struct.packet_mclist = type { i32, %struct.packet_mclist* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @packet_flush_mclist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_flush_mclist(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.packet_sock*, align 8
  %4 = alloca %struct.packet_mclist*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.packet_sock* @pkt_sk(%struct.sock* %6)
  store %struct.packet_sock* %7, %struct.packet_sock** %3, align 8
  %8 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %9 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %8, i32 0, i32 0
  %10 = load %struct.packet_mclist*, %struct.packet_mclist** %9, align 8
  %11 = icmp ne %struct.packet_mclist* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = call i32 (...) @rtnl_lock()
  br label %15

15:                                               ; preds = %40, %13
  %16 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %17 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %16, i32 0, i32 0
  %18 = load %struct.packet_mclist*, %struct.packet_mclist** %17, align 8
  store %struct.packet_mclist* %18, %struct.packet_mclist** %4, align 8
  %19 = icmp ne %struct.packet_mclist* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load %struct.packet_mclist*, %struct.packet_mclist** %4, align 8
  %22 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %21, i32 0, i32 1
  %23 = load %struct.packet_mclist*, %struct.packet_mclist** %22, align 8
  %24 = load %struct.packet_sock*, %struct.packet_sock** %3, align 8
  %25 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %24, i32 0, i32 0
  store %struct.packet_mclist* %23, %struct.packet_mclist** %25, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call i32 @sock_net(%struct.sock* %26)
  %28 = load %struct.packet_mclist*, %struct.packet_mclist** %4, align 8
  %29 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.net_device* @dev_get_by_index(i32 %27, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %5, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.packet_mclist*, %struct.packet_mclist** %4, align 8
  %37 = call i32 @packet_dev_mc(%struct.net_device* %35, %struct.packet_mclist* %36, i32 -1)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @dev_put(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %34, %20
  %41 = load %struct.packet_mclist*, %struct.packet_mclist** %4, align 8
  %42 = call i32 @kfree(%struct.packet_mclist* %41)
  br label %15

43:                                               ; preds = %15
  %44 = call i32 (...) @rtnl_unlock()
  br label %45

45:                                               ; preds = %43, %12
  ret void
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @packet_dev_mc(%struct.net_device*, %struct.packet_mclist*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.packet_mclist*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
