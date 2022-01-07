; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_handle_dn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusbhc_handle_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.device* }
%struct.device = type { i32 }
%struct.wusb_dn_hdr = type { i32 }
%struct.wusb_dev = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"DN data shorter than DN header (%d < %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ignoring DN %d from unconnected device %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unknown DN %u (%d octets) from %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wusbhc_handle_dn(%struct.wusbhc* %0, i32 %1, %struct.wusb_dn_hdr* %2, i64 %3) #0 {
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusb_dn_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wusb_dn_hdr* %2, %struct.wusb_dn_hdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19, i32 4)
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc* %22, i32 %23)
  store %struct.wusb_dev* %24, %struct.wusb_dev** %10, align 8
  %25 = load %struct.wusb_dev*, %struct.wusb_dev** %10, align 8
  %26 = icmp eq %struct.wusb_dev* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.wusb_dn_hdr, %struct.wusb_dn_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 133
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.wusb_dn_hdr, %struct.wusb_dn_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %67

39:                                               ; preds = %27, %21
  %40 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.wusb_dn_hdr, %struct.wusb_dn_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %58 [
    i32 133, label %43
    i32 134, label %48
    i32 132, label %52
    i32 130, label %56
    i32 129, label %56
    i32 128, label %56
    i32 131, label %57
  ]

43:                                               ; preds = %39
  %44 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %45 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @wusbhc_handle_dn_connect(%struct.wusbhc* %44, %struct.wusb_dn_hdr* %45, i64 %46)
  br label %67

48:                                               ; preds = %39
  %49 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %50 = load %struct.wusb_dev*, %struct.wusb_dev** %10, align 8
  %51 = call i32 @wusbhc_handle_dn_alive(%struct.wusbhc* %49, %struct.wusb_dev* %50)
  br label %67

52:                                               ; preds = %39
  %53 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %54 = load %struct.wusb_dev*, %struct.wusb_dev** %10, align 8
  %55 = call i32 @wusbhc_handle_dn_disconnect(%struct.wusbhc* %53, %struct.wusb_dev* %54)
  br label %67

56:                                               ; preds = %39, %39, %39
  br label %67

57:                                               ; preds = %39
  br label %67

58:                                               ; preds = %39
  %59 = load %struct.device*, %struct.device** %9, align 8
  %60 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %61 = getelementptr inbounds %struct.wusb_dn_hdr, %struct.wusb_dn_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_warn(%struct.device* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %16, %32, %58, %57, %56, %52, %48, %43
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @wusbhc_handle_dn_connect(%struct.wusbhc*, %struct.wusb_dn_hdr*, i64) #1

declare dso_local i32 @wusbhc_handle_dn_alive(%struct.wusbhc*, %struct.wusb_dev*) #1

declare dso_local i32 @wusbhc_handle_dn_disconnect(%struct.wusbhc*, %struct.wusb_dev*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
