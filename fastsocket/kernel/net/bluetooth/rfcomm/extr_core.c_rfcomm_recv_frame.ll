; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.rfcomm_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"bad checksum in packet\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown packet type 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, %struct.sk_buff*)* @rfcomm_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_frame(%struct.rfcomm_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rfcomm_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %14, %struct.rfcomm_hdr** %6, align 8
  %15 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__get_dlci(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__get_type(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @skb_tail_pointer(%struct.sk_buff* %31)
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @__check_fcs(i64 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* @EILSEQ, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %121

48:                                               ; preds = %2
  %49 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @__test_ea(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @skb_pull(%struct.sk_buff* %55, i32 3)
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @skb_pull(%struct.sk_buff* %58, i32 4)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %115 [
    i32 130, label %62
    i32 132, label %73
    i32 129, label %84
    i32 131, label %95
    i32 128, label %99
  ]

62:                                               ; preds = %60
  %63 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %64 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__test_pf(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @rfcomm_recv_sabm(%struct.rfcomm_session* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  br label %118

73:                                               ; preds = %60
  %74 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %75 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @__test_pf(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @rfcomm_recv_disc(%struct.rfcomm_session* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %73
  br label %118

84:                                               ; preds = %60
  %85 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %86 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__test_pf(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @rfcomm_recv_ua(%struct.rfcomm_session* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  br label %118

95:                                               ; preds = %60
  %96 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @rfcomm_recv_dm(%struct.rfcomm_session* %96, i32 %97)
  br label %118

99:                                               ; preds = %60
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %6, align 8
  %106 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @__test_pf(i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 @rfcomm_recv_data(%struct.rfcomm_session* %103, i32 %104, i32 %108, %struct.sk_buff* %109)
  store i32 %110, i32* %3, align 4
  br label %121

111:                                              ; preds = %99
  %112 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @rfcomm_recv_mcc(%struct.rfcomm_session* %112, %struct.sk_buff* %113)
  br label %118

115:                                              ; preds = %60
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %111, %95, %94, %83, %72
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call i32 @kfree_skb(%struct.sk_buff* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %102, %42
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @__get_dlci(i32) #1

declare dso_local i32 @__get_type(i32) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @__check_fcs(i64, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @__test_ea(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__test_pf(i32) #1

declare dso_local i32 @rfcomm_recv_sabm(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_recv_disc(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_recv_ua(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_recv_dm(%struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_recv_data(%struct.rfcomm_session*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_recv_mcc(%struct.rfcomm_session*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
