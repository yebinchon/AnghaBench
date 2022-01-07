; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_receive_assoc_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_txrx.c_wlp_receive_assoc_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.wlp_session*, %struct.TYPE_5__* }
%struct.wlp_session = type { i64, %struct.TYPE_6__, i32 (%struct.wlp.0*)*, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32* }
%struct.wlp.0 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.uwb_dev_addr = type { i32* }
%struct.wlp_frame_assoc = type { i64, i32 }

@WLP_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unsupported WLP version in association message.\0A\00", align 1
@WLP_ASSOC_F0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [136 x i8] c"Received expected message from unexpected source.  Expected message %d or F0 from %02x:%02x, but received it from %02x:%02x. Dropping.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Association already in progress. Dropping.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*)* @wlp_receive_assoc_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlp_receive_assoc_frame(%struct.wlp* %0, %struct.sk_buff* %1, %struct.uwb_dev_addr* %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.uwb_dev_addr*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wlp_frame_assoc*, align 8
  %9 = alloca %struct.wlp_session*, align 8
  %10 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.uwb_dev_addr* %2, %struct.uwb_dev_addr** %6, align 8
  %11 = load %struct.wlp*, %struct.wlp** %4, align 8
  %12 = getelementptr inbounds %struct.wlp, %struct.wlp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %20, %struct.wlp_frame_assoc** %8, align 8
  %21 = load %struct.wlp*, %struct.wlp** %4, align 8
  %22 = getelementptr inbounds %struct.wlp, %struct.wlp* %21, i32 0, i32 0
  %23 = load %struct.wlp_session*, %struct.wlp_session** %22, align 8
  store %struct.wlp_session* %23, %struct.wlp_session** %9, align 8
  %24 = load %struct.wlp*, %struct.wlp** %4, align 8
  %25 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %8, align 8
  %26 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %25, i32 0, i32 1
  %27 = call i64 @wlp_get_version(%struct.wlp* %24, i32* %26, i64* %10, i32 4)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %109

30:                                               ; preds = %3
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @WLP_VERSION, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %109

37:                                               ; preds = %30
  %38 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %39 = icmp ne %struct.wlp_session* %38, null
  br i1 %39, label %40, label %103

40:                                               ; preds = %37
  %41 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %8, align 8
  %42 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %45 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %8, align 8
  %50 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WLP_ASSOC_F0, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %48, %40
  %55 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %56 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %55, i32 0, i32 1
  %57 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %58 = call i32 @memcmp(%struct.TYPE_6__* %56, %struct.uwb_dev_addr* %57, i32 8)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %63 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %62, i32 0, i32 3
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  %64 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %65 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %64, i32 0, i32 2
  %66 = load i32 (%struct.wlp.0*)*, i32 (%struct.wlp.0*)** %65, align 8
  %67 = load %struct.wlp*, %struct.wlp** %4, align 8
  %68 = bitcast %struct.wlp* %67 to %struct.wlp.0*
  %69 = call i32 %66(%struct.wlp.0* %68)
  br label %98

70:                                               ; preds = %54
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %73 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %76 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wlp_session*, %struct.wlp_session** %9, align 8
  %82 = getelementptr inbounds %struct.wlp_session, %struct.wlp_session* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
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
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %80, i32 %86, i32 %91, i32 %96)
  br label %109

98:                                               ; preds = %60
  br label %102

99:                                               ; preds = %48
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %109

102:                                              ; preds = %98
  br label %108

103:                                              ; preds = %37
  %104 = load %struct.wlp*, %struct.wlp** %4, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %107 = call i32 @wlp_direct_assoc_frame(%struct.wlp* %104, %struct.sk_buff* %105, %struct.uwb_dev_addr* %106)
  br label %108

108:                                              ; preds = %103, %102
  br label %112

109:                                              ; preds = %99, %70, %34, %29
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i32 @kfree_skb(%struct.sk_buff* %110)
  br label %112

112:                                              ; preds = %109, %108
  ret void
}

declare dso_local i64 @wlp_get_version(%struct.wlp*, i32*, i64*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcmp(%struct.TYPE_6__*, %struct.uwb_dev_addr*, i32) #1

declare dso_local i32 @wlp_direct_assoc_frame(%struct.wlp*, %struct.sk_buff*, %struct.uwb_dev_addr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
