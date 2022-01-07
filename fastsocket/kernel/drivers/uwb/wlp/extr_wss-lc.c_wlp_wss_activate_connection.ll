; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_activate_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_activate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_wss = type { i32 }
%struct.uwb_dev_addr = type { i32 }
%struct.wlp_uuid = type { i32 }
%struct.uwb_mac_addr = type { i64 }

@WLP_WSS_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"WLP: Unable to update EDA cache with new connected neighbor information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WLP: Neighbor does not have matching WSSID.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_wss*, %struct.uwb_dev_addr*, %struct.wlp_uuid*, i32*, %struct.uwb_mac_addr*)* @wlp_wss_activate_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_wss_activate_connection(%struct.wlp* %0, %struct.wlp_wss* %1, %struct.uwb_dev_addr* %2, %struct.wlp_uuid* %3, i32* %4, %struct.uwb_mac_addr* %5) #0 {
  %7 = alloca %struct.wlp*, align 8
  %8 = alloca %struct.wlp_wss*, align 8
  %9 = alloca %struct.uwb_dev_addr*, align 8
  %10 = alloca %struct.wlp_uuid*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.uwb_mac_addr*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %7, align 8
  store %struct.wlp_wss* %1, %struct.wlp_wss** %8, align 8
  store %struct.uwb_dev_addr* %2, %struct.uwb_dev_addr** %9, align 8
  store %struct.wlp_uuid* %3, %struct.wlp_uuid** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.uwb_mac_addr* %5, %struct.uwb_mac_addr** %12, align 8
  %15 = load %struct.wlp*, %struct.wlp** %7, align 8
  %16 = getelementptr inbounds %struct.wlp, %struct.wlp* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.wlp_uuid*, %struct.wlp_uuid** %10, align 8
  %21 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %22 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %21, i32 0, i32 0
  %23 = call i32 @memcmp(%struct.wlp_uuid* %20, i32* %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %6
  %26 = load %struct.wlp*, %struct.wlp** %7, align 8
  %27 = getelementptr inbounds %struct.wlp, %struct.wlp* %26, i32 0, i32 0
  %28 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %9, align 8
  %29 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %30 = load %struct.uwb_mac_addr*, %struct.uwb_mac_addr** %12, align 8
  %31 = getelementptr inbounds %struct.uwb_mac_addr, %struct.uwb_mac_addr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WLP_WSS_CONNECTED, align 4
  %37 = call i32 @wlp_eda_update_node(i32* %27, %struct.uwb_dev_addr* %28, %struct.wlp_wss* %29, i8* %33, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.device*, %struct.device** %13, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %25
  br label %49

44:                                               ; preds = %6
  %45 = load %struct.device*, %struct.device** %13, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %44, %43
  %50 = load i32, i32* %14, align 4
  ret i32 %50
}

declare dso_local i32 @memcmp(%struct.wlp_uuid*, i32*, i32) #1

declare dso_local i32 @wlp_eda_update_node(i32*, %struct.uwb_dev_addr*, %struct.wlp_wss*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
