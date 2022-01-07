; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_prep_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_prep_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_eda_node = type { i8*, i64, %struct.TYPE_8__*, %struct.uwb_dev_addr }
%struct.TYPE_8__ = type { i32 }
%struct.uwb_dev_addr = type { i32* }
%struct.sk_buff = type { i32 }
%struct.wlp_frame_std_abbrv_hdr = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@WLP_WSS_CONNECTED = common dso_local global i64 0, align 8
@WLP_PROTOCOL_ID = common dso_local global i32 0, align 4
@WLP_FRAME_STANDARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"WLP: Destination neighbor (Ethernet: %02x:%02x:%02x:%02x:%02x:%02x, Dev: %02x:%02x) is not connected. \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_wss_prep_hdr(%struct.wlp* %0, %struct.wlp_eda_node* %1, i8* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.wlp_eda_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uwb_dev_addr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.wlp_frame_std_abbrv_hdr*, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.wlp_eda_node* %1, %struct.wlp_eda_node** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.wlp*, %struct.wlp** %4, align 8
  %14 = getelementptr inbounds %struct.wlp, %struct.wlp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %19 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %22 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %21, i32 0, i32 3
  store %struct.uwb_dev_addr* %22, %struct.uwb_dev_addr** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.sk_buff*
  store %struct.sk_buff* %24, %struct.sk_buff** %11, align 8
  %25 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %26 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WLP_WSS_CONNECTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = call i32 @skb_headroom(%struct.sk_buff* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 12
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = call i64 @__skb_push(%struct.sk_buff* %37, i32 12)
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.wlp_frame_std_abbrv_hdr*
  store %struct.wlp_frame_std_abbrv_hdr* %40, %struct.wlp_frame_std_abbrv_hdr** %12, align 8
  %41 = load i32, i32* @WLP_PROTOCOL_ID, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load %struct.wlp_frame_std_abbrv_hdr*, %struct.wlp_frame_std_abbrv_hdr** %12, align 8
  %44 = getelementptr inbounds %struct.wlp_frame_std_abbrv_hdr, %struct.wlp_frame_std_abbrv_hdr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @WLP_FRAME_STANDARD, align 4
  %47 = load %struct.wlp_frame_std_abbrv_hdr*, %struct.wlp_frame_std_abbrv_hdr** %12, align 8
  %48 = getelementptr inbounds %struct.wlp_frame_std_abbrv_hdr, %struct.wlp_frame_std_abbrv_hdr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.wlp_eda_node*, %struct.wlp_eda_node** %5, align 8
  %51 = getelementptr inbounds %struct.wlp_eda_node, %struct.wlp_eda_node* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wlp_frame_std_abbrv_hdr*, %struct.wlp_frame_std_abbrv_hdr** %12, align 8
  %56 = getelementptr inbounds %struct.wlp_frame_std_abbrv_hdr, %struct.wlp_frame_std_abbrv_hdr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %94

57:                                               ; preds = %3
  %58 = call i64 (...) @printk_ratelimit()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 5
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %10, align 8
  %81 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %10, align 8
  %86 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i8 zeroext %64, i8 zeroext %67, i8 zeroext %70, i8 zeroext %73, i8 zeroext %76, i8 zeroext %79, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %60, %57
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %30
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
