; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_output.c_xfrm6_tunnel_check_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_output.c_xfrm6_tunnel_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.dst_entry = type { i32 }

@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @xfrm6_tunnel_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_tunnel_check_size(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %6)
  store %struct.dst_entry* %7, %struct.dst_entry** %5, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %9 = call i32 @dst_mtu(%struct.dst_entry* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IPV6_MIN_MTU, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @IPV6_MIN_MTU, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @icmpv6_send(%struct.sk_buff* %32, i32 %33, i32 0, i32 %34, i32 %37)
  %39 = load i32, i32* @EMSGSIZE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %26, %20, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
