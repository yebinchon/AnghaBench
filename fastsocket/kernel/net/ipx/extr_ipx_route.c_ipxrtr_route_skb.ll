; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_route_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_ipx_route.c_ipxrtr_route_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipxhdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipx_route = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipxrtr_route_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipxhdr*, align 8
  %5 = alloca %struct.ipx_route*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.ipxhdr* @ipx_hdr(%struct.sk_buff* %6)
  store %struct.ipxhdr* %7, %struct.ipxhdr** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.TYPE_4__* @IPX_SKB_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ipx_route* @ipxrtr_lookup(i32 %11)
  store %struct.ipx_route* %12, %struct.ipx_route** %5, align 8
  %13 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %14 = icmp ne %struct.ipx_route* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  store i32 0, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %20 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ipxitf_hold(i32 %21)
  %23 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %24 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %28 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %33 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %40

35:                                               ; preds = %18
  %36 = load %struct.ipxhdr*, %struct.ipxhdr** %4, align 8
  %37 = getelementptr inbounds %struct.ipxhdr, %struct.ipxhdr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i32 [ %34, %31 ], [ %39, %35 ]
  %42 = call i32 @ipxitf_send(i32 %25, %struct.sk_buff* %26, i32 %41)
  %43 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %44 = getelementptr inbounds %struct.ipx_route, %struct.ipx_route* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ipxitf_put(i32 %45)
  %47 = load %struct.ipx_route*, %struct.ipx_route** %5, align 8
  %48 = call i32 @ipxrtr_put(%struct.ipx_route* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %40, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ipxhdr* @ipx_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipx_route* @ipxrtr_lookup(i32) #1

declare dso_local %struct.TYPE_4__* @IPX_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipxitf_hold(i32) #1

declare dso_local i32 @ipxitf_send(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @ipxitf_put(i32) #1

declare dso_local i32 @ipxrtr_put(%struct.ipx_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
