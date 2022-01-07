; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_tr_rebuild_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_tr_rebuild_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.trh_hdr = type { i32 }
%struct.trllc = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"tr_rebuild_header: Don't know how to resolve type %04X addresses ?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @tr_rebuild_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_rebuild_header(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.trh_hdr*, align 8
  %5 = alloca %struct.trllc*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.trh_hdr*
  store %struct.trh_hdr* %10, %struct.trh_hdr** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 4
  %15 = inttoptr i64 %14 to %struct.trllc*
  store %struct.trllc* %15, %struct.trllc** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.trllc*, %struct.trllc** %5, align 8
  %20 = getelementptr inbounds %struct.trllc, %struct.trllc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ETH_P_IP, align 4
  %23 = call i64 @htons(i32 %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.trllc*, %struct.trllc** %5, align 8
  %27 = getelementptr inbounds %struct.trllc, %struct.trllc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ntohs(i64 %28)
  %30 = call i32 @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load %struct.trh_hdr*, %struct.trh_hdr** %4, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @tr_source_route(%struct.sk_buff* %32, %struct.trh_hdr* %33, %struct.net_device* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @tr_source_route(%struct.sk_buff*, %struct.trh_hdr*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
