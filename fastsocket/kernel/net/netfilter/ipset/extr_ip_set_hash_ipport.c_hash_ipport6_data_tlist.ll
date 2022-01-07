; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipport.c_hash_ipport6_data_tlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipport.c_hash_ipport6_data_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hash_ipport6_elem = type { i32, i32 }
%struct.hash_ipport6_telem = type { i32, i32 }

@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTO = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hash_ipport6_elem*)* @hash_ipport6_data_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ipport6_data_tlist(%struct.sk_buff* %0, %struct.hash_ipport6_elem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hash_ipport6_elem*, align 8
  %6 = alloca %struct.hash_ipport6_telem*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.hash_ipport6_elem* %1, %struct.hash_ipport6_elem** %5, align 8
  %7 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %5, align 8
  %8 = bitcast %struct.hash_ipport6_elem* %7 to %struct.hash_ipport6_telem*
  store %struct.hash_ipport6_telem* %8, %struct.hash_ipport6_telem** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @IPSET_ATTR_IP, align 4
  %11 = load %struct.hash_ipport6_telem*, %struct.hash_ipport6_telem** %6, align 8
  %12 = getelementptr inbounds %struct.hash_ipport6_telem, %struct.hash_ipport6_telem* %11, i32 0, i32 1
  %13 = call i32 @NLA_PUT_IPADDR6(%struct.sk_buff* %9, i32 %10, i32* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %16 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %5, align 8
  %17 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @NLA_PUT_NET16(%struct.sk_buff* %14, i32 %15, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @IPSET_ATTR_PROTO, align 4
  %22 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %5, align 8
  %23 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NLA_PUT_U8(%struct.sk_buff* %20, i32 %21, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %28 = load %struct.hash_ipport6_telem*, %struct.hash_ipport6_telem** %6, align 8
  %29 = getelementptr inbounds %struct.hash_ipport6_telem, %struct.hash_ipport6_telem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ip_set_timeout_get(i32 %30)
  %32 = call i32 @htonl(i32 %31)
  %33 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %26, i32 %27, i32 %32)
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; No predecessors!
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @NLA_PUT_IPADDR6(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @NLA_PUT_NET16(%struct.sk_buff*, i32, i32) #1

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
