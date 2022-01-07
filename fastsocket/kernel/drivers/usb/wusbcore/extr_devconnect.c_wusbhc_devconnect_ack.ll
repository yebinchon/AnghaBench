; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_devconnect_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_devconnect_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, %struct.TYPE_2__, i32 (%struct.wusbhc*, i32, i32, i32*, i32)*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_dn_connect = type { i32 }
%struct.wusb_dev = type { i32 }
%struct.wusb_port = type { i32, i32, %struct.wusb_dev* }

@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Host controller can't connect more devices (%u already connected); device %s rejected\0A\00", align 1
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, %struct.wusb_dn_connect*, i8*)* @wusbhc_devconnect_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_devconnect_ack(%struct.wusbhc* %0, %struct.wusb_dn_connect* %1, i8* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.wusb_dn_connect*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.wusb_dev*, align 8
  %10 = alloca %struct.wusb_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.wusb_dn_connect* %1, %struct.wusb_dn_connect** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %14 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %13, i32 0, i32 4
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %17 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %44, %3
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %22 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %26, i32 %27)
  store %struct.wusb_port* %28, %struct.wusb_port** %10, align 8
  %29 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %30 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %29, i32 0, i32 2
  %31 = load %struct.wusb_dev*, %struct.wusb_dev** %30, align 8
  %32 = icmp ne %struct.wusb_dev* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.wusb_dn_connect*, %struct.wusb_dn_connect** %5, align 8
  %35 = getelementptr inbounds %struct.wusb_dn_connect, %struct.wusb_dn_connect* %34, i32 0, i32 0
  %36 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %37 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %36, i32 0, i32 2
  %38 = load %struct.wusb_dev*, %struct.wusb_dev** %37, align 8
  %39 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %38, i32 0, i32 0
  %40 = call i64 @memcmp(i32* %35, i32* %39, i32 4)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %130

43:                                               ; preds = %33, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %19

47:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %51 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %55, i32 %56)
  store %struct.wusb_port* %57, %struct.wusb_port** %10, align 8
  %58 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %59 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %66 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %64, %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %48

76:                                               ; preds = %71, %48
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %79 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp uge i32 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %85 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %86, i8* %87)
  br label %130

89:                                               ; preds = %76
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 2
  store i32 %91, i32* %12, align 4
  %92 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %93 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %92, i32 0, i32 3
  %94 = load i32 (%struct.wusbhc*, i32, i32, i32*, i32)*, i32 (%struct.wusbhc*, i32, i32, i32*, i32)** %93, align 8
  %95 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 %94(%struct.wusbhc* %95, i32 %96, i32 0, i32* null, i32 0)
  %98 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %99 = load %struct.wusb_dn_connect*, %struct.wusb_dn_connect** %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call %struct.wusb_dev* @wusbhc_cack_add(%struct.wusbhc* %98, %struct.wusb_dn_connect* %99, i8* %100, i32 %101)
  store %struct.wusb_dev* %102, %struct.wusb_dev** %9, align 8
  %103 = load %struct.wusb_dev*, %struct.wusb_dev** %9, align 8
  %104 = icmp eq %struct.wusb_dev* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %130

106:                                              ; preds = %89
  %107 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %108 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %109 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %107, i32 0, i32 0, i32* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %130

115:                                              ; preds = %106
  %116 = call i32 @msleep(i32 3)
  %117 = load %struct.wusb_dev*, %struct.wusb_dev** %9, align 8
  %118 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %119 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %118, i32 0, i32 2
  store %struct.wusb_dev* %117, %struct.wusb_dev** %119, align 8
  %120 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %121 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %122 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %126 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %127 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %115, %114, %105, %82, %42
  %131 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %132 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*) #1

declare dso_local %struct.wusb_dev* @wusbhc_cack_add(%struct.wusbhc*, %struct.wusb_dn_connect*, i8*, i32) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
