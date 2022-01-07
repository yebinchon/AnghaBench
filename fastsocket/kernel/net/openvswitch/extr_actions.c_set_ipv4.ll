; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_ipv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ovs_key_ipv4 = type { i64, i64, i64, i64 }
%struct.iphdr = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ovs_key_ipv4*)* @set_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ipv4(%struct.sk_buff* %0, %struct.ovs_key_ipv4* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ovs_key_ipv4*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ovs_key_ipv4* %1, %struct.ovs_key_ipv4** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @skb_network_offset(%struct.sk_buff* %9)
  %11 = add i64 %10, 32
  %12 = call i32 @make_writable(%struct.sk_buff* %8, i64 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %19)
  store %struct.iphdr* %20, %struct.iphdr** %6, align 8
  %21 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %22 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %31 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %34 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @set_ip_addr(%struct.sk_buff* %29, %struct.iphdr* %30, i64* %32, i64 %35)
  br label %37

37:                                               ; preds = %28, %18
  %38 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %39 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %51 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @set_ip_addr(%struct.sk_buff* %46, %struct.iphdr* %47, i64* %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %37
  %55 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %56 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %64 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %65 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ipv4_change_dsfield(%struct.iphdr* %63, i32 0, i64 %66)
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %70 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %79 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %5, align 8
  %80 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @set_ip_ttl(%struct.sk_buff* %77, %struct.iphdr* %78, i64 %81)
  br label %83

83:                                               ; preds = %76, %68
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @make_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @set_ip_addr(%struct.sk_buff*, %struct.iphdr*, i64*, i64) #1

declare dso_local i32 @ipv4_change_dsfield(%struct.iphdr*, i32, i64) #1

declare dso_local i32 @set_ip_ttl(%struct.sk_buff*, %struct.iphdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
