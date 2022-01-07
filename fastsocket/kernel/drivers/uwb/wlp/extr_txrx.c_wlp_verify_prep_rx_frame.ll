; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_verify_prep_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_verify_prep_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.uwb_dev_addr = type { i32* }
%struct.wlp_eda_node = type { i64, i64 }
%struct.wlp_frame_std_abbrv_hdr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"WLP: Incoming frame is from unknown neighbor %02x:%02x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"WLP: Tag of incoming frame from %02x:%02x does not match expected tag. Received 0x%02x, expected 0x%02x. \0A\00", align 1
@WLP_WSS_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"WLP: Incoming frame from %02x:%02x does is not from connected WSS.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)* @wlp_verify_prep_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_verify_prep_rx_frame(%struct.wlp* %0, %struct.sk_buff* %1, %struct.uwb_dev_addr* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.uwb_dev_addr*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlp_eda_node, align 8
  %10 = alloca %struct.wlp_frame_std_abbrv_hdr*, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.uwb_dev_addr* %2, %struct.uwb_dev_addr** %6, align 8
  %11 = load %struct.wlp*, %struct.wlp** %4, align 8
  %12 = getelementptr inbounds %struct.wlp, %struct.wlp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.wlp_frame_std_abbrv_hdr*
  store %struct.wlp_frame_std_abbrv_hdr* %22, %struct.wlp_frame_std_abbrv_hdr** %10, align 8
  %23 = load %struct.wlp*, %struct.wlp** %4, align 8
  %24 = getelementptr inbounds %struct.wlp, %struct.wlp* %23, i32 0, i32 0
  %25 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %26 = call i32 @wlp_copy_eda_node(i32* %24, %struct.uwb_dev_addr* %25, %struct.wlp_eda_node* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %3
  %30 = call i64 (...) @printk_ratelimit()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %35 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %40 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %32, %29
  br label %104

46:                                               ; preds = %3
  %47 = load %struct.wlp_frame_std_abbrv_hdr*, %struct.wlp_frame_std_abbrv_hdr** %10, align 8
  %48 = getelementptr inbounds %struct.wlp_frame_std_abbrv_hdr, %struct.wlp_frame_std_abbrv_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %46
  %54 = call i64 (...) @printk_ratelimit()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %59 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %64 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wlp_frame_std_abbrv_hdr*, %struct.wlp_frame_std_abbrv_hdr** %10, align 8
  %69 = getelementptr inbounds %struct.wlp_frame_std_abbrv_hdr, %struct.wlp_frame_std_abbrv_hdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %67, i64 %70, i64 %72)
  br label %74

74:                                               ; preds = %56, %53
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %104

77:                                               ; preds = %46
  %78 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WLP_WSS_CONNECTED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = call i64 (...) @printk_ratelimit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %88 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %93 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %85, %82
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %104

101:                                              ; preds = %77
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @skb_pull(%struct.sk_buff* %102, i32 8)
  br label %104

104:                                              ; preds = %101, %98, %74, %45
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @wlp_copy_eda_node(i32*, %struct.uwb_dev_addr*, %struct.wlp_eda_node*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
