; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_station_ac_send_test_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_station_ac_send_test_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_station_ac_send_test_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_station_ac_send_test_r(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store i32 1, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohs(i32 %16)
  %18 = sub nsw i64 %17, 3
  store i64 %18, i64* %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.sk_buff* @llc_alloc_frame(i32* null, %struct.TYPE_3__* %21, i32 %22, i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %55

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = call i32 @llc_pdu_decode_sa(%struct.sk_buff* %29, i32* %12)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = call i32 @llc_pdu_decode_ssap(%struct.sk_buff* %31, i32* %5)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LLC_PDU_RSP, align 4
  %37 = call i32 @llc_pdu_header_init(%struct.sk_buff* %33, i32 %34, i32 0, i32 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = call i32 @llc_pdu_init_as_test_rsp(%struct.sk_buff* %38, %struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %41, i32 %46, i32* %12)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  br label %58

52:                                               ; preds = %28
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i32 @llc_station_send_pdu(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %58, %52, %27
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  br label %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ntohs(i32) #2

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @llc_alloc_frame(i32*, %struct.TYPE_3__*, i32, i64) #2

declare dso_local i32 @llc_pdu_decode_sa(%struct.sk_buff*, i32*) #2

declare dso_local i32 @llc_pdu_decode_ssap(%struct.sk_buff*, i32*) #2

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local i32 @llc_pdu_init_as_test_rsp(%struct.sk_buff*, %struct.sk_buff*) #2

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
