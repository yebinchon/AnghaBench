; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_input.c_llc_pdu_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_input.c_llc_pdu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }

@LLC_DEST_CONN = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_MASK = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_DEST_SAP = common dso_local global i32 0, align 4
@LLC_DEST_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_pdu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_pdu_type(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load i32, i32* @LLC_DEST_CONN, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %6)
  store %struct.llc_pdu_sn* %7, %struct.llc_pdu_sn** %4, align 8
  %8 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %4, align 8
  %9 = getelementptr inbounds %struct.llc_pdu_sn, %struct.llc_pdu_sn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LLC_PDU_TYPE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %4, align 8
  %18 = call i32 @LLC_U_PDU_CMD(%struct.llc_pdu_sn* %17)
  switch i32 %18, label %22 [
    i32 133, label %19
    i32 134, label %19
    i32 135, label %19
    i32 131, label %21
    i32 132, label %21
    i32 128, label %21
    i32 130, label %21
    i32 129, label %21
  ]

19:                                               ; preds = %16, %16, %16
  %20 = load i32, i32* @LLC_DEST_SAP, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %16, %16, %16, %16, %16
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @LLC_DEST_INVALID, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %21, %19
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @LLC_U_PDU_CMD(%struct.llc_pdu_sn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
