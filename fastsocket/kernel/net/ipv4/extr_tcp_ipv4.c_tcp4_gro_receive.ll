; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp4_gro_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp4_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff** @tcp4_gro_receive(%struct.sk_buff** %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.iphdr* @skb_gro_network_header(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %65 [
    i32 129, label %14
    i32 128, label %38
  ]

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_gro_len(%struct.sk_buff* %15)
  %17 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tcp_v4_check(i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %14
  %29 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %65

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %59, %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store %struct.sk_buff** null, %struct.sk_buff*** %3, align 8
  br label %69

38:                                               ; preds = %2
  %39 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @skb_gro_len(%struct.sk_buff* %45)
  %47 = load i32, i32* @IPPROTO_TCP, align 4
  %48 = call i32 @csum_tcpudp_nofold(i32 %41, i32 %44, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @skb_gro_offset(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @skb_gro_len(%struct.sk_buff* %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @skb_checksum(%struct.sk_buff* %49, i32 %51, i32 %53, i32 %54)
  %56 = call i32 @csum_fold(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %38
  br label %34

60:                                               ; preds = %38
  %61 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %2, %60, %28
  %66 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.sk_buff** @tcp_gro_receive(%struct.sk_buff** %66, %struct.sk_buff* %67)
  store %struct.sk_buff** %68, %struct.sk_buff*** %3, align 8
  br label %69

69:                                               ; preds = %65, %34
  %70 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  ret %struct.sk_buff** %70
}

declare dso_local %struct.iphdr* @skb_gro_network_header(%struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_check(i32, i32, i32, i32) #1

declare dso_local i32 @skb_gro_len(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @csum_tcpudp_nofold(i32, i32, i32, i32, i32) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_gro_offset(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff** @tcp_gro_receive(%struct.sk_buff**, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
