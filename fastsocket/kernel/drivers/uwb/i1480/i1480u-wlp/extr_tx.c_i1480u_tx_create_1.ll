; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_tx.c_i1480u_tx_create_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_tx.c_i1480u_tx_create_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u_tx = type { %struct.wlp_tx_hdr*, %struct.sk_buff*, i32* }
%struct.wlp_tx_hdr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.untd_hdr_cmp = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@i1480u_PKT_FRAG_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480u_tx*, %struct.sk_buff*, i32)* @i1480u_tx_create_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480u_tx_create_1(%struct.i1480u_tx* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.i1480u_tx*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.untd_hdr_cmp*, align 8
  %8 = alloca %struct.wlp_tx_hdr*, align 8
  store %struct.i1480u_tx* %0, %struct.i1480u_tx** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i1480u_tx*, %struct.i1480u_tx** %4, align 8
  %10 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load %struct.i1480u_tx*, %struct.i1480u_tx** %4, align 8
  %13 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %12, i32 0, i32 1
  store %struct.sk_buff* %11, %struct.sk_buff** %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_headroom(%struct.sk_buff* %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i64 @__skb_push(%struct.sk_buff* %20, i32 4)
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.wlp_tx_hdr*
  store %struct.wlp_tx_hdr* %23, %struct.wlp_tx_hdr** %8, align 8
  %24 = load %struct.wlp_tx_hdr*, %struct.wlp_tx_hdr** %8, align 8
  %25 = load %struct.i1480u_tx*, %struct.i1480u_tx** %4, align 8
  %26 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %25, i32 0, i32 0
  store %struct.wlp_tx_hdr* %24, %struct.wlp_tx_hdr** %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @skb_headroom(%struct.sk_buff* %27)
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 16
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i64 @__skb_push(%struct.sk_buff* %33, i32 16)
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.untd_hdr_cmp*
  store %struct.untd_hdr_cmp* %36, %struct.untd_hdr_cmp** %7, align 8
  %37 = load %struct.untd_hdr_cmp*, %struct.untd_hdr_cmp** %7, align 8
  %38 = getelementptr inbounds %struct.untd_hdr_cmp, %struct.untd_hdr_cmp* %37, i32 0, i32 1
  %39 = load i32, i32* @i1480u_PKT_FRAG_CMP, align 4
  %40 = call i32 @untd_hdr_set_type(%struct.TYPE_3__* %38, i32 %39)
  %41 = load %struct.untd_hdr_cmp*, %struct.untd_hdr_cmp** %7, align 8
  %42 = getelementptr inbounds %struct.untd_hdr_cmp, %struct.untd_hdr_cmp* %41, i32 0, i32 1
  %43 = call i32 @untd_hdr_set_rx_tx(%struct.TYPE_3__* %42, i32 0)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, 16
  %48 = call i32 @cpu_to_le16(i64 %47)
  %49 = load %struct.untd_hdr_cmp*, %struct.untd_hdr_cmp** %7, align 8
  %50 = getelementptr inbounds %struct.untd_hdr_cmp, %struct.untd_hdr_cmp* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.untd_hdr_cmp*, %struct.untd_hdr_cmp** %7, align 8
  %53 = getelementptr inbounds %struct.untd_hdr_cmp, %struct.untd_hdr_cmp* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @untd_hdr_set_type(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @untd_hdr_set_rx_tx(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
