; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_send_endnode_hello.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_send_endnode_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.dn_ifaddr = type { i32 }
%struct.endnode_hello_message = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.dn_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.dn_neigh = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@dn_eco_version = common dso_local global i32 0, align 4
@DN_RT_INFO_ENDN = common dso_local global i32 0, align 4
@dn_hiord = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@dn_rt_all_rt_mcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dn_ifaddr*)* @dn_send_endnode_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_send_endnode_hello(%struct.net_device* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  %5 = alloca %struct.endnode_hello_message*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dn_dev*, align 8
  %9 = alloca %struct.dn_neigh*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dn_dev*
  store %struct.dn_dev* %13, %struct.dn_dev** %8, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @dn_alloc_skb(i32* null, i32 56, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %110

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 56)
  %24 = inttoptr i64 %23 to %struct.endnode_hello_message*
  store %struct.endnode_hello_message* %24, %struct.endnode_hello_message** %5, align 8
  %25 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %26 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %25, i32 0, i32 0
  store i32 13, i32* %26, align 8
  %27 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %28 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @dn_eco_version, align 4
  %31 = call i32 @memcpy(i32 %29, i32 %30, i32 3)
  %32 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %33 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %36 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dn_dn2eth(i32 %34, i32 %37)
  %39 = load i32, i32* @DN_RT_INFO_ENDN, align 4
  %40 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %41 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @mtu2blksize(%struct.net_device* %42)
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %46 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %48 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %50 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memset(i32 %51, i32 0, i32 8)
  %53 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %54 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @dn_hiord, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %60 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %18
  %64 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %65 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.dn_neigh*
  store %struct.dn_neigh* %67, %struct.dn_neigh** %9, align 8
  %68 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %69 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dn_neigh*, %struct.dn_neigh** %9, align 8
  %72 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dn_dn2eth(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %63, %18
  %76 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %77 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i16
  %81 = zext i16 %80 to i32
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %84 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %86 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  %87 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %88 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %87, i32 0, i32 3
  store i32 2, i32* %88, align 4
  %89 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %90 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memset(i32 %91, i32 170, i32 2)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i64 @skb_push(%struct.sk_buff* %93, i32 2)
  %95 = inttoptr i64 %94 to i8**
  store i8** %95, i8*** %7, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 2
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load i8**, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @skb_reset_network_header(%struct.sk_buff* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load i32, i32* @dn_rt_all_rt_mcast, align 4
  %106 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %5, align 8
  %107 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dn_rt_finish_output(%struct.sk_buff* %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %75, %17
  ret void
}

declare dso_local %struct.sk_buff* @dn_alloc_skb(i32*, i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dn_dn2eth(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mtu2blksize(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dn_rt_finish_output(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
