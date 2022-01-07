; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_tunnel6_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tunnel6.c_tunnel6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm6_tunnel = type { i32 (%struct.sk_buff.0*, %struct.inet6_skb_parm.1*, i32, i32, i32, i32)*, %struct.xfrm6_tunnel* }
%struct.sk_buff.0 = type opaque
%struct.inet6_skb_parm.1 = type opaque
%struct.sk_buff = type { i32 }
%struct.inet6_skb_parm = type { i32 }

@tunnel6_handlers = common dso_local global %struct.xfrm6_tunnel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @tunnel6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunnel6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfrm6_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** @tunnel6_handlers, align 8
  store %struct.xfrm6_tunnel* %14, %struct.xfrm6_tunnel** %13, align 8
  br label %15

15:                                               ; preds = %34, %6
  %16 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %13, align 8
  %17 = icmp ne %struct.xfrm6_tunnel* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %13, align 8
  %20 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %19, i32 0, i32 0
  %21 = load i32 (%struct.sk_buff.0*, %struct.inet6_skb_parm.1*, i32, i32, i32, i32)*, i32 (%struct.sk_buff.0*, %struct.inet6_skb_parm.1*, i32, i32, i32, i32)** %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = bitcast %struct.sk_buff* %22 to %struct.sk_buff.0*
  %24 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %25 = bitcast %struct.inet6_skb_parm* %24 to %struct.inet6_skb_parm.1*
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 %21(%struct.sk_buff.0* %23, %struct.inet6_skb_parm.1* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %38

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %13, align 8
  %36 = getelementptr inbounds %struct.xfrm6_tunnel, %struct.xfrm6_tunnel* %35, i32 0, i32 1
  %37 = load %struct.xfrm6_tunnel*, %struct.xfrm6_tunnel** %36, align 8
  store %struct.xfrm6_tunnel* %37, %struct.xfrm6_tunnel** %13, align 8
  br label %15

38:                                               ; preds = %32, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
