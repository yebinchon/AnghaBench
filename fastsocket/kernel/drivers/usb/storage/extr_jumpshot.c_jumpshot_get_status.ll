; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32*, i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"jumpshot_get_status:  0x%2x\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @jumpshot_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_get_status(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = icmp ne %struct.us_data* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %8, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = load %struct.us_data*, %struct.us_data** %3, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.us_data*, %struct.us_data** %3, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %10, i32 %13, i32 0, i32 160, i32 0, i32 7, i32* %16, i32 1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %9
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 80
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.us_data*, %struct.us_data** %3, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %30, %21, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
