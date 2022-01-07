; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-core.c_wireless_process_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-core.c_wireless_process_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ifreq = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.net_device = type opaque
%struct.iwreq = type opaque
%struct.iw_request_info.0 = type opaque
%struct.iwreq.1 = type { i32 }
%struct.net_device.2 = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.net_device.2*, %struct.ifreq*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@SIOCGIWSTATS = common dso_local global i32 0, align 4
@iw_handler_get_iwstats = common dso_local global i32 0, align 4
@SIOCIWFIRSTPRIV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SIOCGIWPRIV = common dso_local global i32 0, align 4
@iw_handler_get_private = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ifreq*, i32, %struct.iw_request_info*, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*)* @wireless_process_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wireless_process_ioctl(%struct.net* %0, %struct.ifreq* %1, i32 %2, %struct.iw_request_info* %3, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)* %4, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_request_info*, align 8
  %12 = alloca i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, align 8
  %13 = alloca i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, align 8
  %14 = alloca %struct.iwreq.1*, align 8
  %15 = alloca %struct.net_device.2*, align 8
  %16 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.ifreq* %1, %struct.ifreq** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.iw_request_info* %3, %struct.iw_request_info** %11, align 8
  store i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)* %4, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)** %12, align 8
  store i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)* %5, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)** %13, align 8
  %17 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %18 = bitcast %struct.ifreq* %17 to %struct.iwreq.1*
  store %struct.iwreq.1* %18, %struct.iwreq.1** %14, align 8
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net_device.2* @__dev_get_by_name(%struct.net* %19, i32 %22)
  store %struct.net_device.2* %23, %struct.net_device.2** %15, align 8
  %24 = icmp eq %struct.net_device.2* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %106

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SIOCGIWSTATS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)** %12, align 8
  %34 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %35 = bitcast %struct.net_device.2* %34 to %struct.net_device*
  %36 = load %struct.iwreq.1*, %struct.iwreq.1** %14, align 8
  %37 = bitcast %struct.iwreq.1* %36 to %struct.iwreq*
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %40 = bitcast %struct.iw_request_info* %39 to %struct.iw_request_info.0*
  %41 = call i32 %33(%struct.net_device* %35, %struct.iwreq* %37, i32 %38, %struct.iw_request_info.0* %40, i32* @iw_handler_get_iwstats)
  store i32 %41, i32* %7, align 4
  br label %106

42:                                               ; preds = %28
  %43 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %44 = call i32 @netif_device_present(%struct.net_device.2* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %106

49:                                               ; preds = %42
  %50 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32* @get_handler(%struct.net_device.2* %50, i32 %51)
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %86

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @SIOCIWFIRSTPRIV, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)** %12, align 8
  %61 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %62 = bitcast %struct.net_device.2* %61 to %struct.net_device*
  %63 = load %struct.iwreq.1*, %struct.iwreq.1** %14, align 8
  %64 = bitcast %struct.iwreq.1* %63 to %struct.iwreq*
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %67 = bitcast %struct.iw_request_info* %66 to %struct.iw_request_info.0*
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 %60(%struct.net_device* %62, %struct.iwreq* %64, i32 %65, %struct.iw_request_info.0* %67, i32* %68)
  store i32 %69, i32* %7, align 4
  br label %106

70:                                               ; preds = %55
  %71 = load i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)** %13, align 8
  %72 = icmp ne i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)*, i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info.0*, i32*)** %13, align 8
  %75 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %76 = bitcast %struct.net_device.2* %75 to %struct.net_device*
  %77 = load %struct.iwreq.1*, %struct.iwreq.1** %14, align 8
  %78 = bitcast %struct.iwreq.1* %77 to %struct.iwreq*
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %81 = bitcast %struct.iw_request_info* %80 to %struct.iw_request_info.0*
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 %74(%struct.net_device* %76, %struct.iwreq* %78, i32 %79, %struct.iw_request_info.0* %81, i32* %82)
  store i32 %83, i32* %7, align 4
  br label %106

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %49
  %87 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %88 = getelementptr inbounds %struct.net_device.2, %struct.net_device.2* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.net_device.2*, %struct.ifreq*, i32)*, i32 (%struct.net_device.2*, %struct.ifreq*, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.net_device.2*, %struct.ifreq*, i32)* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %95 = getelementptr inbounds %struct.net_device.2, %struct.net_device.2* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32 (%struct.net_device.2*, %struct.ifreq*, i32)*, i32 (%struct.net_device.2*, %struct.ifreq*, i32)** %97, align 8
  %99 = load %struct.net_device.2*, %struct.net_device.2** %15, align 8
  %100 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 %98(%struct.net_device.2* %99, %struct.ifreq* %100, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %106

103:                                              ; preds = %86
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %93, %73, %59, %46, %32, %25
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.net_device.2* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device.2*) #1

declare dso_local i32* @get_handler(%struct.net_device.2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
