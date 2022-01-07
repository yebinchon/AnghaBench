; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_transmit_parameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_transmit_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LINE6_PARAM_CHANGE = common dso_local global i8 0, align 1
@LINE6_CHANNEL_HOST = common dso_local global i8 0, align 1
@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"usb_interrupt_msg failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_transmit_parameter(%struct.usb_line6* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_line6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 3, i32 %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %17 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load i8, i8* @LINE6_PARAM_CHANGE, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @LINE6_CHANNEL_HOST, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %6, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %7, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %40 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %43 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %46 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_sndintpipe(i32 %44, i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @LINE6_TIMEOUT, align 4
  %51 = load i32, i32* @HZ, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @usb_interrupt_msg(i32 %41, i32 %48, i8* %49, i32 3, i32* %10, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %22
  %57 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %58 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %22
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
