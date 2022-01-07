; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_add_grhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_add_grhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ifmcaddr6 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mld2_grec = type { i32, i32, i64, i64 }
%struct.mld2_report = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.ifmcaddr6*, i32, %struct.mld2_grec**)* @add_grhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @add_grhead(%struct.sk_buff* %0, %struct.ifmcaddr6* %1, i32 %2, %struct.mld2_grec** %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ifmcaddr6*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mld2_grec**, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.mld2_report*, align 8
  %12 = alloca %struct.mld2_grec*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mld2_grec** %3, %struct.mld2_grec*** %9, align 8
  %13 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %14 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %10, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.sk_buff* @mld_newpack(%struct.net_device* %21, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %60

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i64 @skb_put(%struct.sk_buff* %31, i32 24)
  %33 = inttoptr i64 %32 to %struct.mld2_grec*
  store %struct.mld2_grec* %33, %struct.mld2_grec** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mld2_grec*, %struct.mld2_grec** %12, align 8
  %36 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mld2_grec*, %struct.mld2_grec** %12, align 8
  %38 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.mld2_grec*, %struct.mld2_grec** %12, align 8
  %40 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %7, align 8
  %42 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mld2_grec*, %struct.mld2_grec** %12, align 8
  %45 = getelementptr inbounds %struct.mld2_grec, %struct.mld2_grec* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i64 @skb_transport_header(%struct.sk_buff* %46)
  %48 = inttoptr i64 %47 to %struct.mld2_report*
  store %struct.mld2_report* %48, %struct.mld2_report** %11, align 8
  %49 = load %struct.mld2_report*, %struct.mld2_report** %11, align 8
  %50 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ntohs(i32 %51)
  %53 = add nsw i64 %52, 1
  %54 = call i32 @htons(i64 %53)
  %55 = load %struct.mld2_report*, %struct.mld2_report** %11, align 8
  %56 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mld2_grec*, %struct.mld2_grec** %12, align 8
  %58 = load %struct.mld2_grec**, %struct.mld2_grec*** %9, align 8
  store %struct.mld2_grec* %57, %struct.mld2_grec** %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %5, align 8
  br label %60

60:                                               ; preds = %30, %29
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %61
}

declare dso_local %struct.sk_buff* @mld_newpack(%struct.net_device*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
