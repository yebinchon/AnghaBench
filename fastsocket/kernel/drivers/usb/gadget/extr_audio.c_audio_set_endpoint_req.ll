; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_audio.c_audio_set_endpoint_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_audio.c_audio_set_endpoint_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_ctrlrequest*)* @audio_set_endpoint_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_set_endpoint_req(%struct.usb_configuration* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %10 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %11 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %10, i32 0, i32 0
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %11, align 8
  store %struct.usb_composite_dev* %12, %struct.usb_composite_dev** %5, align 8
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @DBG(%struct.usb_composite_dev* %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %43 [
    i32 132, label %38
    i32 129, label %39
    i32 131, label %40
    i32 128, label %41
    i32 130, label %42
  ]

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %44

39:                                               ; preds = %2
  br label %44

40:                                               ; preds = %2
  br label %44

41:                                               ; preds = %2
  br label %44

42:                                               ; preds = %2
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
