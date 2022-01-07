; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_wait_not_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_wait_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USBAT_ATA = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Waited not busy for %d steps\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Waited not busy for %d minutes, timing out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @usbat_wait_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_wait_not_busy(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %77, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 60
  %16 = add nsw i32 1200, %15
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %12
  %19 = load %struct.us_data*, %struct.us_data** %4, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @usbat_get_status(%struct.us_data* %19, i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.us_data*, %struct.us_data** %4, align 8
  %35 = load i32, i32* @USBAT_ATA, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @usbat_read(%struct.us_data* %34, i32 %35, i32 16, i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %84

39:                                               ; preds = %27
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %46, i32* %3, align 4
  br label %84

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 500
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @msleep(i32 10)
  br label %76

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 700
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @msleep(i32 50)
  br label %75

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 1200
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @msleep(i32 100)
  br label %74

72:                                               ; preds = %67
  %73 = call i32 @msleep(i32 1000)
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %12

80:                                               ; preds = %12
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %53, %45, %33, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @usbat_get_status(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_read(%struct.us_data*, i32, i32, i8*) #1

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
