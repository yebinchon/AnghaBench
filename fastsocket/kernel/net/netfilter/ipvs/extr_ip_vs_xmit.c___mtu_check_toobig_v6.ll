; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c___mtu_check_toobig_v6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c___mtu_check_toobig_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64)* @__mtu_check_toobig_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mtu_check_toobig_v6(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.TYPE_2__* @IP6CB(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.TYPE_2__* @IP6CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %33

19:                                               ; preds = %11
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_is_gso(%struct.sk_buff* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %33

31:                                               ; preds = %26, %20
  br label %32

32:                                               ; preds = %31, %19
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_2__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
