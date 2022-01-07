; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.packet_sock = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @packet_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.packet_sock*, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.net* @sock_net(%struct.sock* %14)
  store %struct.net* %15, %struct.net** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.packet_sock* @pkt_sk(%struct.sock* %16)
  store %struct.packet_sock* %17, %struct.packet_sock** %5, align 8
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @write_lock_bh(i32* %20)
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @sk_del_node_init(%struct.sock* %22)
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sock_prot_inuse_add(%struct.net* %24, i32 %27, i32 -1)
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @write_unlock_bh(i32* %31)
  %33 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %34 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %13
  %38 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %39 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %38, i32 0, i32 4
  %40 = call i32 @dev_remove_pack(i32* %39)
  %41 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %42 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %44 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @__sock_put(%struct.sock* %45)
  br label %47

47:                                               ; preds = %37, %13
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i32 @packet_flush_mclist(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @sock_orphan(%struct.sock* %50)
  %52 = load %struct.socket*, %struct.socket** %3, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %53, align 8
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = call i32 @skb_queue_purge(i32* %55)
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 @sk_refcnt_debug_release(%struct.sock* %57)
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 @sock_put(%struct.sock* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %47, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, i32, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_remove_pack(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @packet_flush_mclist(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sk_refcnt_debug_release(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
