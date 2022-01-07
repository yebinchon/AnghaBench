; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_send_raw_message_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_send_raw_message_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32 }
%struct.message = type { i8*, i32, i64, %struct.usb_line6* }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_send_raw_message_async(%struct.usb_line6* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_line6*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.message*, align 8
  %9 = alloca %struct.urb*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.message* @kmalloc(i32 32, i32 %10)
  store %struct.message* %11, %struct.message** %8, align 8
  %12 = load %struct.message*, %struct.message** %8, align 8
  %13 = icmp eq %struct.message* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %16 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %22)
  store %struct.urb* %23, %struct.urb** %9, align 8
  %24 = load %struct.urb*, %struct.urb** %9, align 8
  %25 = icmp eq %struct.urb* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.message*, %struct.message** %8, align 8
  %28 = call i32 @kfree(%struct.message* %27)
  %29 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %30 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %21
  %36 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %37 = load %struct.message*, %struct.message** %8, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 3
  store %struct.usb_line6* %36, %struct.usb_line6** %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.message*, %struct.message** %8, align 8
  %41 = getelementptr inbounds %struct.message, %struct.message* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.message*, %struct.message** %8, align 8
  %44 = getelementptr inbounds %struct.message, %struct.message* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.message*, %struct.message** %8, align 8
  %46 = getelementptr inbounds %struct.message, %struct.message* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.message*, %struct.message** %8, align 8
  %48 = load %struct.urb*, %struct.urb** %9, align 8
  %49 = call i32 @line6_send_raw_message_async_part(%struct.message* %47, %struct.urb* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %35, %26, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.message* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.message*) #1

declare dso_local i32 @line6_send_raw_message_async_part(%struct.message*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
