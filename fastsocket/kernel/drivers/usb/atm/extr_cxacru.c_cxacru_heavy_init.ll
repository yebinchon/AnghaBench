; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_heavy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_heavy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.cxacru_data* }
%struct.cxacru_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"fw\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"firmware (cxacru-fw.bin) unavailable (system misconfigured?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"boot ROM patch (cxacru-bp.bin) unavailable (system misconfigured?)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"cf\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"modem initialisation failed\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"done setting up the modem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*)* @cxacru_heavy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_heavy_init(%struct.usbatm_data* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbatm_data*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.cxacru_data*, align 8
  %10 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %11 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %12 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %11, i32 0, i32 0
  %13 = load %struct.cxacru_data*, %struct.cxacru_data** %12, align 8
  store %struct.cxacru_data* %13, %struct.cxacru_data** %9, align 8
  %14 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %15 = call i32 @cxacru_find_firmware(%struct.cxacru_data* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.firmware** %6)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %20 = call i32 @usb_warn(%struct.usbatm_data* %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %24 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %31 = call i32 @cxacru_find_firmware(%struct.cxacru_data* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.firmware** %7)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %36 = call i32 @usb_warn(%struct.usbatm_data* %35, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.firmware*, %struct.firmware** %6, align 8
  %38 = call i32 @release_firmware(%struct.firmware* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %80

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %43 = call i32 @cxacru_find_firmware(%struct.cxacru_data* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.firmware** %8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store %struct.firmware* null, %struct.firmware** %8, align 8
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %48 = load %struct.firmware*, %struct.firmware** %6, align 8
  %49 = load %struct.firmware*, %struct.firmware** %7, align 8
  %50 = load %struct.firmware*, %struct.firmware** %8, align 8
  %51 = call i32 @cxacru_upload_firmware(%struct.cxacru_data* %47, %struct.firmware* %48, %struct.firmware* %49, %struct.firmware* %50)
  %52 = load %struct.firmware*, %struct.firmware** %8, align 8
  %53 = icmp ne %struct.firmware* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.firmware*, %struct.firmware** %8, align 8
  %56 = call i32 @release_firmware(%struct.firmware* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %59 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.firmware*, %struct.firmware** %7, align 8
  %66 = call i32 @release_firmware(%struct.firmware* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.firmware*, %struct.firmware** %6, align 8
  %69 = call i32 @release_firmware(%struct.firmware* %68)
  %70 = load %struct.cxacru_data*, %struct.cxacru_data** %9, align 8
  %71 = call i32 @cxacru_card_status(%struct.cxacru_data* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %78

76:                                               ; preds = %67
  %77 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %34, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @cxacru_find_firmware(%struct.cxacru_data*, i8*, %struct.firmware**) #1

declare dso_local i32 @usb_warn(%struct.usbatm_data*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @cxacru_upload_firmware(%struct.cxacru_data*, %struct.firmware*, %struct.firmware*, %struct.firmware*) #1

declare dso_local i32 @cxacru_card_status(%struct.cxacru_data*) #1

declare dso_local i32 @dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
