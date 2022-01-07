; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_s_ac.c_llc_sap_action_send_test_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_s_ac.c_llc_sap_action_send_test_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_PDU_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_sap_action_send_test_r(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i32 1, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @llc_pdu_decode_sa(%struct.sk_buff* %19, i32* %15)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @llc_pdu_decode_da(%struct.sk_buff* %21, i32* %18)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @llc_pdu_decode_ssap(%struct.sk_buff* %23, i32* %8)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohs(i32 %28)
  %30 = sub nsw i64 %29, 3
  store i64 %30, i64* %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call %struct.sk_buff* @llc_alloc_frame(i32* null, i32 %33, i32 %34, i64 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  br label %65

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %43 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %44 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @LLC_PDU_RSP, align 4
  %49 = call i32 @llc_pdu_header_init(%struct.sk_buff* %41, i32 %42, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @llc_pdu_init_as_test_rsp(%struct.sk_buff* %50, %struct.sk_buff* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call i32 @llc_mac_hdr_init(%struct.sk_buff* %53, i32* %18, i32* %15)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call i32 @dev_queue_xmit(%struct.sk_buff* %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %40
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @llc_pdu_decode_sa(%struct.sk_buff*, i32*) #2

declare dso_local i32 @llc_pdu_decode_da(%struct.sk_buff*, i32*) #2

declare dso_local i32 @llc_pdu_decode_ssap(%struct.sk_buff*, i32*) #2

declare dso_local i64 @ntohs(i32) #2

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @llc_alloc_frame(i32*, i32, i32, i64) #2

declare dso_local i32 @llc_pdu_header_init(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local i32 @llc_pdu_init_as_test_rsp(%struct.sk_buff*, %struct.sk_buff*) #2

declare dso_local i32 @llc_mac_hdr_init(%struct.sk_buff*, i32*, i32*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
