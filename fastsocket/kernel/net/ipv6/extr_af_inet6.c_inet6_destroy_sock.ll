; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_inet6_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6_txoptions = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet6_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ipv6_pinfo*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %6)
  store %struct.ipv6_pinfo* %7, %struct.ipv6_pinfo** %3, align 8
  %8 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %9 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %8, i32 0, i32 1
  %10 = call i8* @xchg(i32* %9, i32* null)
  %11 = bitcast i8* %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @kfree_skb(%struct.sk_buff* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @fl6_free_socklist(%struct.sock* %17)
  %19 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %20 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %19, i32 0, i32 0
  %21 = call i8* @xchg(i32* %20, i32* null)
  %22 = bitcast i8* %21 to %struct.ipv6_txoptions*
  store %struct.ipv6_txoptions* %22, %struct.ipv6_txoptions** %5, align 8
  %23 = icmp ne %struct.ipv6_txoptions* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %27 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %28 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sock_kfree_s(%struct.sock* %25, %struct.ipv6_txoptions* %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %16
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i8* @xchg(i32*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @fl6_free_socklist(%struct.sock*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_txoptions*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
