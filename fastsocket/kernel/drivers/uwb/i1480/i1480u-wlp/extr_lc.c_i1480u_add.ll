; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_lc.c_i1480u_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_lc.c_i1480u_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u = type { %struct.TYPE_11__*, %struct.TYPE_10__, i32, i32*, %struct.usb_interface*, %struct.net_device*, %struct.wlp }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32*, i32, i32, i64, i32 }
%struct.wlp = type { i32, i32, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.uwb_rc = type { %struct.uwb_dev }
%struct.uwb_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot get associated UWB Radio Controller\0A\00", align 1
@i1480u_xmit_frame = common dso_local global i32 0, align 4
@i1480u_fill_device_info = common dso_local global i32 0, align 4
@i1480u_stop_queue = common dso_local global i32 0, align 4
@i1480u_start_queue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Cannot setup WLP\0A\00", align 1
@WLP_DATA_HLEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_FRAGLIST = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@i1480u_netdev_ops = common dso_local global i32 0, align 4
@i1480u_TX_INFLIGHT_MAX = common dso_local global i32 0, align 4
@i1480u_TX_INFLIGHT_THRESHOLD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@i1480u_notif_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480u*, %struct.usb_interface*)* @i1480u_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480u_add(%struct.i1480u* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i1480u*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlp*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.uwb_rc*, align 8
  %11 = alloca %struct.uwb_dev*, align 8
  store %struct.i1480u* %0, %struct.i1480u** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %15 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %14, i32 0, i32 6
  store %struct.wlp* %15, %struct.wlp** %7, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %16)
  store %struct.usb_device* %17, %struct.usb_device** %8, align 8
  %18 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %19 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %18, i32 0, i32 5
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %22 = call %struct.TYPE_11__* @usb_get_dev(%struct.usb_device* %21)
  %23 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %24 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %23, i32 0, i32 0
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %26 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %27 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %26, i32 0, i32 4
  store %struct.usb_interface* %25, %struct.usb_interface** %27, align 8
  %28 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %29 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = call %struct.uwb_rc* @uwb_rc_get_by_grandpa(i32* %31)
  store %struct.uwb_rc* %32, %struct.uwb_rc** %10, align 8
  %33 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %34 = icmp eq %struct.uwb_rc* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 1
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %133

39:                                               ; preds = %2
  %40 = load i32, i32* @i1480u_xmit_frame, align 4
  %41 = load %struct.wlp*, %struct.wlp** %7, align 8
  %42 = getelementptr inbounds %struct.wlp, %struct.wlp* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @i1480u_fill_device_info, align 4
  %44 = load %struct.wlp*, %struct.wlp** %7, align 8
  %45 = getelementptr inbounds %struct.wlp, %struct.wlp* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @i1480u_stop_queue, align 4
  %47 = load %struct.wlp*, %struct.wlp** %7, align 8
  %48 = getelementptr inbounds %struct.wlp, %struct.wlp* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @i1480u_start_queue, align 4
  %50 = load %struct.wlp*, %struct.wlp** %7, align 8
  %51 = getelementptr inbounds %struct.wlp, %struct.wlp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wlp*, %struct.wlp** %7, align 8
  %53 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = call i32 @wlp_setup(%struct.wlp* %52, %struct.uwb_rc* %53, %struct.net_device* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %39
  %59 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 1
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %130

62:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = call i32 @ether_setup(%struct.net_device* %63)
  %65 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %66 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %65, i32 0, i32 0
  store %struct.uwb_dev* %66, %struct.uwb_dev** %11, align 8
  %67 = load %struct.net_device*, %struct.net_device** %9, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.uwb_dev*, %struct.uwb_dev** %11, align 8
  %71 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32 %69, i32 %73, i32 4)
  %75 = load i64, i64* @WLP_DATA_HLEN, align 8
  %76 = add i64 8, %75
  %77 = load i64, i64* @ETH_HLEN, align 8
  %78 = add i64 %76, %77
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 6
  store i64 %78, i64* %80, align 8
  %81 = load %struct.net_device*, %struct.net_device** %9, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  store i32 3500, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %9, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  store i32 20, i32* %84, align 4
  %85 = load i32, i32* @IFF_MULTICAST, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @NETIF_F_SG, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.net_device*, %struct.net_device** %9, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.net_device*, %struct.net_device** %9, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %104 = load %struct.net_device*, %struct.net_device** %9, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @HZ, align 4
  %109 = mul nsw i32 5, %108
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %9, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 3
  store i32* @i1480u_netdev_ops, i32** %113, align 8
  %114 = load i32, i32* @i1480u_TX_INFLIGHT_MAX, align 4
  %115 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %116 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* @i1480u_TX_INFLIGHT_THRESHOLD, align 4
  %119 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %120 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @jiffies, align 4
  %123 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %124 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %127 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %128 = call i32 @usb_set_intfdata(%struct.usb_interface* %126, %struct.i1480u* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %139

130:                                              ; preds = %58
  %131 = load %struct.uwb_rc*, %struct.uwb_rc** %10, align 8
  %132 = call i32 @uwb_rc_put(%struct.uwb_rc* %131)
  br label %133

133:                                              ; preds = %130, %35
  %134 = load %struct.i1480u*, %struct.i1480u** %4, align 8
  %135 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = call i32 @usb_put_dev(%struct.TYPE_11__* %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %62
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.TYPE_11__* @usb_get_dev(%struct.usb_device*) #1

declare dso_local %struct.uwb_rc* @uwb_rc_get_by_grandpa(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @wlp_setup(%struct.wlp*, %struct.uwb_rc*, %struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.i1480u*) #1

declare dso_local i32 @uwb_rc_put(%struct.uwb_rc*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
