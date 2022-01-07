; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_parse_ethertype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_parse_ethertype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.llc_snap_hdr = type { i64, i64, i64, [3 x i64], i32 }

@ETH_P_802_2 = common dso_local global i32 0, align 4
@LLC_SAP_SNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @parse_ethertype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ethertype(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.llc_snap_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 @__skb_pull(%struct.sk_buff* %11, i32 4)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ntohs(i32 %13)
  %15 = icmp sge i32 %14, 1536
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 56
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ETH_P_802_2, align 4
  %26 = call i32 @htons(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %87

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @pskb_may_pull(%struct.sk_buff* %28, i32 56)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @htons(i32 0)
  store i32 %36, i32* %2, align 4
  br label %87

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.llc_snap_hdr*
  store %struct.llc_snap_hdr* %41, %struct.llc_snap_hdr** %4, align 8
  %42 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %43 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LLC_SAP_SNAP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %69, label %47

47:                                               ; preds = %37
  %48 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LLC_SAP_SNAP, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %47
  %54 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %55 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %54, i32 0, i32 3
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %55, i64 0, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %59 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %58, i32 0, i32 3
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %59, i64 0, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = or i64 %57, %61
  %63 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %64 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %63, i32 0, i32 3
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %64, i64 0, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %62, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53, %47, %37
  %70 = load i32, i32* @ETH_P_802_2, align 4
  %71 = call i32 @htons(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %87

72:                                               ; preds = %53
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @__skb_pull(%struct.sk_buff* %73, i32 56)
  %75 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %76 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ntohs(i32 %77)
  %79 = icmp sge i32 %78, 1536
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.llc_snap_hdr*, %struct.llc_snap_hdr** %4, align 8
  %82 = getelementptr inbounds %struct.llc_snap_hdr, %struct.llc_snap_hdr* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %2, align 4
  br label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @ETH_P_802_2, align 4
  %86 = call i32 @htons(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %80, %69, %35, %24, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
