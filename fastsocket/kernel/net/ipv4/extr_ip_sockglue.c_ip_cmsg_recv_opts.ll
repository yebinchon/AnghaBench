; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SOL_IP = common dso_local global i32 0, align 4
@IP_RECVOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sk_buff*)* @ip_cmsg_recv_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_cmsg_recv_opts(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %14 = load i32, i32* @SOL_IP, align 4
  %15 = load i32, i32* @IP_RECVOPTS, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @ip_hdr(%struct.sk_buff* %21)
  %23 = add nsw i64 %22, 1
  %24 = call i32 @put_cmsg(%struct.msghdr* %13, i32 %14, i32 %15, i64 %20, i64 %23)
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i64, i64) #1

declare dso_local i64 @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
