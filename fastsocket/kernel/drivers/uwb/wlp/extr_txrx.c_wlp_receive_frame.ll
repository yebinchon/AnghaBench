; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_receive_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wlp = type { i32 }
%struct.sk_buff = type { i32, i8* }
%struct.uwb_dev_addr = type { i32* }
%struct.wlp_frame_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Not enough data to parse WLP header.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WLP_PROTOCOL_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Not a WLP frame type.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Not enough data to parse Standard WLP header.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"WLP: Verification of frame from neighbor %02x:%02x failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Abbreviated frame received. FIXME?\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Control frame received. FIXME?\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Not enough data to parse Association WLP header.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid frame received.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_receive_frame(%struct.device* %0, %struct.wlp* %1, %struct.sk_buff* %2, %struct.uwb_dev_addr* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.uwb_dev_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wlp_frame_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.wlp* %1, %struct.wlp** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.uwb_dev_addr* %3, %struct.uwb_dev_addr** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %105

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to %struct.wlp_frame_hdr*
  store %struct.wlp_frame_hdr* %29, %struct.wlp_frame_hdr** %11, align 8
  %30 = load %struct.wlp_frame_hdr*, %struct.wlp_frame_hdr** %11, align 8
  %31 = getelementptr inbounds %struct.wlp_frame_hdr, %struct.wlp_frame_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le16_to_cpu(i32 %32)
  %34 = load i64, i64* @WLP_PROTOCOL_ID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %105

41:                                               ; preds = %27
  %42 = load %struct.wlp_frame_hdr*, %struct.wlp_frame_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.wlp_frame_hdr, %struct.wlp_frame_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %99 [
    i32 128, label %45
    i32 131, label %77
    i32 129, label %82
    i32 130, label %87
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %105

52:                                               ; preds = %45
  %53 = load %struct.wlp*, %struct.wlp** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %56 = call i32 @wlp_verify_prep_rx_frame(%struct.wlp* %53, %struct.sk_buff* %54, %struct.uwb_dev_addr* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = call i32 (...) @printk_ratelimit()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %65 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %70 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %62, %59
  br label %105

76:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %104

77:                                               ; preds = %41
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  br label %104

82:                                               ; preds = %41
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %104

87:                                               ; preds = %41
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = icmp ult i64 %89, 4
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %105

94:                                               ; preds = %87
  %95 = load %struct.wlp*, %struct.wlp** %6, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %8, align 8
  %98 = call i32 @wlp_receive_assoc_frame(%struct.wlp* %95, %struct.sk_buff* %96, %struct.uwb_dev_addr* %97)
  br label %104

99:                                               ; preds = %41
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %99, %94, %82, %77, %76
  br label %105

105:                                              ; preds = %104, %91, %75, %49, %36, %22
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = call i32 @kfree_skb(%struct.sk_buff* %109)
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %12, align 4
  ret i32 %112
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @wlp_verify_prep_rx_frame(%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*) #1

declare dso_local i32 @printk_ratelimit(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wlp_receive_assoc_frame(%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
