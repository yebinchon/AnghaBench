; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_station_ac_send_xid_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_station_ac_send_xid_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@LLC_XID_NULL_CLASS_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_station_ac_send_xid_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_station_ac_send_xid_r(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i32 1, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %16 = call %struct.sk_buff* @llc_alloc_frame(i32* null, %struct.TYPE_2__* %14, i32 %15, i32 4)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %47

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = call i32 @llc_pdu_decode_sa(%struct.sk_buff* %21, i32* %11)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call i32 @llc_pdu_decode_ssap(%struct.sk_buff* %23, i32* %5)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LLC_PDU_RSP, align 4
  %29 = call i32 @llc_pdu_header_init(%struct.sk_buff* %25, i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* @LLC_XID_NULL_CLASS_2, align 4
  %32 = call i32 @llc_pdu_init_as_xid_rsp(%struct.sk_buff* %30, i32 %31, i32 127)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %33, i32 %38, i32* %11)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %50

44:                                               ; preds = %20
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @llc_station_send_pdu(%struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %50, %44, %19
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  br label %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @llc_alloc_frame(i32*, %struct.TYPE_2__*, i32, i32) #2

declare dso_local i32 @llc_pdu_decode_sa(%struct.sk_buff*, i32*) #2

declare dso_local i32 @llc_pdu_decode_ssap(%struct.sk_buff*, i32*) #2

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local i32 @llc_pdu_init_as_xid_rsp(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @llc_station_send_pdu(%struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
