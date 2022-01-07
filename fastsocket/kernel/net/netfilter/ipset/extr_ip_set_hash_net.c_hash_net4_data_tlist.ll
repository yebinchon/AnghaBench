; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_net.c_hash_net4_data_tlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_net.c_hash_net4_data_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_net4_elem = type { i32 }
%struct.hash_net4_telem = type { i32, i32, i32 }

@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_CIDR = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_net4_elem*)* @hash_net4_data_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_net4_data_tlist(%struct.sk_buff* %0, %struct.hash_net4_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_net4_elem*, align 8
  %6 = alloca %struct.hash_net4_telem*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_net4_elem* %1, %struct.hash_net4_elem** %5, align 8
  %7 = load %struct.hash_net4_elem*, %struct.hash_net4_elem** %5, align 8
  %8 = bitcast %struct.hash_net4_elem* %7 to %struct.hash_net4_telem*
  store %struct.hash_net4_telem* %8, %struct.hash_net4_telem** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @IPSET_ATTR_IP, align 4
  %11 = load %struct.hash_net4_telem*, %struct.hash_net4_telem** %6, align 8
  %12 = getelementptr inbounds %struct.hash_net4_telem, %struct.hash_net4_telem* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @IPSET_ATTR_CIDR, align 4
  %17 = load %struct.hash_net4_telem*, %struct.hash_net4_telem** %6, align 8
  %18 = getelementptr inbounds %struct.hash_net4_telem, %struct.hash_net4_telem* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @NLA_PUT_U8(%struct.sk_buff* %15, i32 %16, i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %23 = load %struct.hash_net4_telem*, %struct.hash_net4_telem** %6, align 8
  %24 = getelementptr inbounds %struct.hash_net4_telem, %struct.hash_net4_telem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ip_set_timeout_get(i32 %25)
  %27 = call i32 @htonl(i32 %26)
  %28 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %21, i32 %22, i32 %27)
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; No predecessors!
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip_set_timeout_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
