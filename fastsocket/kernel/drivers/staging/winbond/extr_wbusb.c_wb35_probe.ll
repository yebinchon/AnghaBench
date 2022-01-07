; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_wb35_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_wb35_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.wbsoft_priv* }
%struct.TYPE_4__ = type { i32**, i32 }
%struct.wbsoft_priv = type { %struct.hw_data, i32 }
%struct.hw_data = type { %struct.wb_usb }
%struct.wb_usb = type { i32, %struct.usb_device* }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@wbsoft_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[w35und] Working on USB 2.0\0A\00", align 1
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_UNSPEC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@wbsoft_band_2GHz = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @wb35_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb35_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.wbsoft_priv*, align 8
  %11 = alloca %struct.wb_usb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hw_data*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %18)
  store %struct.usb_device* %19, %struct.usb_device** %6, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = call i32 @usb_get_dev(%struct.usb_device* %20)
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %23, i32 0)
  %25 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %26 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_DIR_IN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %30, 100
  %32 = call i32 @usb_control_msg(%struct.usb_device* %22, i32 %24, i32 1, i32 %29, i32 0, i32 1024, i64* %14, i32 4, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %13, align 4
  br label %140

37:                                               ; preds = %2
  %38 = load i64, i64* %14, align 8
  %39 = call i64 @cpu_to_le32(i64 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %140

45:                                               ; preds = %37
  %46 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 24, i32* @wbsoft_ops)
  store %struct.ieee80211_hw* %46, %struct.ieee80211_hw** %9, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %48 = icmp ne %struct.ieee80211_hw* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %13, align 4
  br label %140

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %53, i32 0, i32 6
  %55 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %54, align 8
  store %struct.wbsoft_priv* %55, %struct.wbsoft_priv** %10, align 8
  %56 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %10, align 8
  %57 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %56, i32 0, i32 1
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %10, align 8
  %60 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %60, i32 0, i32 0
  store %struct.wb_usb* %61, %struct.wb_usb** %11, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = load %struct.wb_usb*, %struct.wb_usb** %11, align 8
  %64 = getelementptr inbounds %struct.wb_usb, %struct.wb_usb* %63, i32 0, i32 1
  store %struct.usb_device* %62, %struct.usb_device** %64, align 8
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 0
  %67 = load %struct.usb_host_interface*, %struct.usb_host_interface** %66, align 8
  store %struct.usb_host_interface* %67, %struct.usb_host_interface** %8, align 8
  %68 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %69 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %72, %struct.usb_endpoint_descriptor** %7, align 8
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %73, i64 2
  %75 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 512
  br i1 %77, label %78, label %82

78:                                               ; preds = %52
  %79 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.wb_usb*, %struct.wb_usb** %11, align 8
  %81 = getelementptr inbounds %struct.wb_usb, %struct.wb_usb* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %52
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %84 = call i32 @wb35_hw_init(%struct.ieee80211_hw* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %137

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %89, i32* %91)
  %93 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %10, align 8
  %94 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %93, i32 0, i32 0
  store %struct.hw_data* %94, %struct.hw_data** %15, align 8
  %95 = load i32, i32* @MAX_ADDR_LEN, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %16, align 8
  %98 = alloca i8, i64 %96, align 16
  store i64 %96, i64* %17, align 8
  %99 = load %struct.hw_data*, %struct.hw_data** %15, align 8
  %100 = call i32 @hal_get_permanent_address(%struct.hw_data* %99, i8* %98)
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %102 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %101, i8* %98)
  %103 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %104, i32 0, i32 0
  store i32 12, i32* %105, align 8
  %106 = load i32, i32* @IEEE80211_HW_SIGNAL_UNSPEC, align 4
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %108 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %110 = call i32 @BIT(i32 %109)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %112 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %111, i32 0, i32 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 8
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %115, i32 0, i32 1
  store i32 1000, i32* %116, align 4
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %118 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %117, i32 0, i32 2
  store i32 100, i32* %118, align 8
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %122 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  store i32* @wbsoft_band_2GHz, i32** %127, align 8
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %129 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %88
  br label %137

133:                                              ; preds = %88
  %134 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %136 = call i32 @usb_set_intfdata(%struct.usb_interface* %134, %struct.ieee80211_hw* %135)
  store i32 0, i32* %3, align 4
  br label %144

137:                                              ; preds = %132, %87
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %139 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %138)
  br label %140

140:                                              ; preds = %137, %49, %42, %35
  %141 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %142 = call i32 @usb_put_dev(%struct.usb_device* %141)
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @wb35_hw_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @hal_get_permanent_address(%struct.hw_data*, i8*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
