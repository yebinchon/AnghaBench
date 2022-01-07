; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp4_csum_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp4_csum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.udphdr = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@IPPROTO_UDPLITE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.udphdr*, i32)* @udp4_csum_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp4_csum_init(%struct.sk_buff* %0, %struct.udphdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.udphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.udphdr* %1, %struct.udphdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_2__* @UDP_SKB_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_2__* @UDP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %25 = call i32 @udplite_checksum_init(%struct.sk_buff* %23, %struct.udphdr* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %91

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %32)
  store %struct.iphdr* %33, %struct.iphdr** %8, align 8
  %34 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %35 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %72

43:                                               ; preds = %31
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @csum_tcpudp_magic(i32 %52, i32 %55, i32 %58, i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %49
  %66 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %49
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @skb_csum_unnecessary(%struct.sk_buff* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %72
  %77 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %78 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @csum_tcpudp_nofold(i32 %79, i32 %82, i32 %85, i32 %86, i32 0)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %76, %72
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %28
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_2__* @UDP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @udplite_checksum_init(%struct.sk_buff*, %struct.udphdr*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i32 @csum_tcpudp_nofold(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
