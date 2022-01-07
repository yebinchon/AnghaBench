; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ip_encap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipmr.c_ip_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32, i32, i8*, i8*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*, i8*)* @ip_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_encap(%struct.sk_buff* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_push(%struct.sk_buff* %11, i32 48)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_reset_network_header(%struct.sk_buff* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %7, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @IPPROTO_IPIP, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  store i32 5, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @skb_dst(%struct.sk_buff* %54)
  %56 = call i32 @ip_select_ident(%struct.iphdr* %53, i32 %55, i32* null)
  %57 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %58 = call i32 @ip_send_check(%struct.iphdr* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @memset(i32* %61, i32 0, i32 4)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @nf_reset(%struct.sk_buff* %63)
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_select_ident(%struct.iphdr*, i32, i32*) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
