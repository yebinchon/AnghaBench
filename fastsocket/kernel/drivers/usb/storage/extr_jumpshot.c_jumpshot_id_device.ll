; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_id_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_id_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }
%struct.jumpshot_info = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"jumpshot_id_device:  Gah! send_control for read_capacity failed\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.jumpshot_info*)* @jumpshot_id_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_id_device(%struct.us_data* %0, %struct.jumpshot_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.jumpshot_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.jumpshot_info* %1, %struct.jumpshot_info** %5, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.jumpshot_info*, %struct.jumpshot_info** %5, align 8
  %13 = icmp ne %struct.jumpshot_info* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 -32, i8* %18, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 -20, i8* %20, align 1
  %21 = load i32, i32* @GFP_NOIO, align 4
  %22 = call i8* @kmalloc(i32 512, i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %16
  %28 = load %struct.us_data*, %struct.us_data** %4, align 8
  %29 = load %struct.us_data*, %struct.us_data** %4, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %28, i32 %31, i32 0, i32 32, i32 0, i32 6, i8* %32, i32 2)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %39, i32* %8, align 4
  br label %75

40:                                               ; preds = %27
  %41 = load %struct.us_data*, %struct.us_data** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @jumpshot_bulk_read(%struct.us_data* %41, i8* %42, i32 512)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %48, i32* %8, align 4
  br label %75

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 117
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 24
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 116
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 16
  %60 = or i32 %54, %59
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 115
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = or i32 %60, %65
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 114
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %66, %70
  %72 = load %struct.jumpshot_info*, %struct.jumpshot_info** %5, align 8
  %73 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %49, %47, %37
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %25, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @jumpshot_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
