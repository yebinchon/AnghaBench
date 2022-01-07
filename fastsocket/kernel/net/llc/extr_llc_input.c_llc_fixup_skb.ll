; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_input.c_llc_fixup_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_input.c_llc_fixup_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.llc_pdu_un = type { i32 }
%struct.TYPE_2__ = type { i32 }

@LLC_PDU_TYPE_MASK = common dso_local global i32 0, align 4
@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_fixup_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_fixup_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.llc_pdu_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 2, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @pskb_may_pull(%struct.sk_buff* %8, i32 4)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.llc_pdu_un*
  store %struct.llc_pdu_un* %20, %struct.llc_pdu_un** %5, align 8
  %21 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %22 = getelementptr inbounds %struct.llc_pdu_un, %struct.llc_pdu_un* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LLC_PDU_TYPE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %4, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %92

41:                                               ; preds = %29
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @skb_pull(%struct.sk_buff* %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @ETH_P_802_2, align 4
  %54 = call i64 @htons(i32 %53)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %41
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ntohs(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %56
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = call i32* @skb_tail_pointer(%struct.sk_buff* %69)
  %71 = load %struct.llc_pdu_un*, %struct.llc_pdu_un** %5, align 8
  %72 = bitcast %struct.llc_pdu_un* %71 to i32*
  %73 = ptrtoint i32* %70 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = load i64, i64* %7, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %68, %56
  store i32 0, i32* %2, align 4
  br label %92

83:                                               ; preds = %68
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @pskb_trim_rcsum(%struct.sk_buff* %84, i64 %85)
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %92

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %41
  store i32 1, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %89, %82, %40, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @pskb_trim_rcsum(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
