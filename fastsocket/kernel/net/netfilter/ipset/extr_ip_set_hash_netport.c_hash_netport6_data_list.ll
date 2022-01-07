; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport6_data_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_netport.c_hash_netport6_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_netport6_elem = type { i32, i32, i32, i32 }

@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_netport6_elem*)* @hash_netport6_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_netport6_data_list(%struct.sk_buff* %0, %struct.hash_netport6_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_netport6_elem*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_netport6_elem* %1, %struct.hash_netport6_elem** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @IPSET_ATTR_IP, align 4
  %8 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %9 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %8, i32 0, i32 3
  %10 = call i32 @NLA_PUT_IPADDR6(%struct.sk_buff* %6, i32 %7, i32* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %13 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %14 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @NLA_PUT_NET16(%struct.sk_buff* %11, i32 %12, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @IPSET_ATTR_CIDR, align 4
  %19 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %20 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NLA_PUT_U8(%struct.sk_buff* %17, i32 %18, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @IPSET_ATTR_PROTO, align 4
  %25 = load %struct.hash_netport6_elem*, %struct.hash_netport6_elem** %5, align 8
  %26 = getelementptr inbounds %struct.hash_netport6_elem, %struct.hash_netport6_elem* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NLA_PUT_U8(%struct.sk_buff* %23, i32 %24, i32 %27)
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; No predecessors!
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @NLA_PUT_IPADDR6(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @NLA_PUT_NET16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
