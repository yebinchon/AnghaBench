; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_tunnel6_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_tunnel6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm6_tunnel = type { i32 (%struct.sk_buff.0*)*, %struct.xfrm6_tunnel* }
%struct.sk_buff.0 = type opaque
%struct.sk_buff = type { i32 }

@tunnel6_handlers = common dso_local global %struct.xfrm6_tunnel* null, align 8
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_PORT_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @tunnel6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel6_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xfrm6_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i32 @pskb_may_pull(%struct.sk_buff* %5, i32 4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** @tunnel6_handlers, align 8
  store %struct.xfrm6_tunnel* %10, %struct.xfrm6_tunnel** %4, align 8
  br label %11

11:                                               ; preds = %24, %9
  %12 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %4, align 8
  %13 = icmp ne %struct.xfrm6_tunnel* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %4, align 8
  %16 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %15, i32 0, i32 0
  %17 = load i32 (%struct.sk_buff.0*)*, i32 (%struct.sk_buff.0*)** %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = bitcast %struct.sk_buff* %18 to %struct.sk_buff.0*
  %20 = call i32 %17(%struct.sk_buff.0* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %39

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %4, align 8
  %26 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %25, i32 0, i32 1
  %27 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %26, align 8
  store %struct.xfrm6_tunnel* %27, %struct.xfrm6_tunnel** %4, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %31 = load i32, i32* @ICMPV6_PORT_UNREACH, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @icmpv6_send(%struct.sk_buff* %29, i32 %30, i32 %31, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %28, %8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
